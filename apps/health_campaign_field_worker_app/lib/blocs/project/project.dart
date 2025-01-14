// GENERATED using mason_cli
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:digit_components/digit_components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:recase/recase.dart';

import '../../data/data_repository.dart';
import '../../data/local_store/no_sql/schema/app_configuration.dart';
import '../../data/local_store/secure_store/secure_store.dart';
import '../../models/data_model.dart';
import '../../utils/environment_config.dart';
import '../../utils/utils.dart';

part 'project.freezed.dart';

typedef ProjectEmitter = Emitter<ProjectState>;

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  final LocalSecureStore localSecureStore;
  final Isar isar;

  /// Project Staff Repositories
  final RemoteRepository<ProjectStaffModel, ProjectStaffSearchModel>
      projectStaffRemoteRepository;
  final LocalRepository<ProjectStaffModel, ProjectStaffSearchModel>
      projectStaffLocalRepository;

  /// Project Repositories
  final RemoteRepository<ProjectModel, ProjectSearchModel>
      projectRemoteRepository;
  final LocalRepository<ProjectModel, ProjectSearchModel>
      projectLocalRepository;

  /// Project Facility Repositories
  final RemoteRepository<ProjectFacilityModel, ProjectFacilitySearchModel>
      projectFacilityRemoteRepository;
  final LocalRepository<ProjectFacilityModel, ProjectFacilitySearchModel>
      projectFacilityLocalRepository;

  /// Facility Repositories
  final RemoteRepository<FacilityModel, FacilitySearchModel>
      facilityRemoteRepository;
  final LocalRepository<FacilityModel, FacilitySearchModel>
      facilityLocalRepository;

  final RemoteRepository<ServiceDefinitionModel, ServiceDefinitionSearchModel>
      serviceDefinitionRemoteRepository;
  final LocalRepository<ServiceDefinitionModel, ServiceDefinitionSearchModel>
      serviceDefinitionLocalRepository;

  ///Boundary Resource Repositories
  final RemoteRepository<BoundaryModel, BoundarySearchModel>
      boundaryRemoteRepository;
  final LocalRepository<BoundaryModel, BoundarySearchModel>
      boundaryLocalRepository;

  /// Project Resource Repositories
  final RemoteRepository<ProjectResourceModel, ProjectResourceSearchModel>
      projectResourceRemoteRepository;
  final LocalRepository<ProjectResourceModel, ProjectResourceSearchModel>
      projectResourceLocalRepository;

  /// Product Variant Repositories
  final RemoteRepository<ProductVariantModel, ProductVariantSearchModel>
      productVariantRemoteRepository;
  final LocalRepository<ProductVariantModel, ProductVariantSearchModel>
      productVariantLocalRepository;

  ProjectBloc({
    LocalSecureStore? localSecureStore,
    required this.projectStaffRemoteRepository,
    required this.projectRemoteRepository,
    required this.projectStaffLocalRepository,
    required this.projectLocalRepository,
    required this.projectFacilityRemoteRepository,
    required this.projectFacilityLocalRepository,
    required this.facilityRemoteRepository,
    required this.facilityLocalRepository,
    required this.serviceDefinitionRemoteRepository,
    required this.boundaryRemoteRepository,
    required this.boundaryLocalRepository,
    required this.isar,
    required this.serviceDefinitionLocalRepository,
    required this.projectResourceLocalRepository,
    required this.projectResourceRemoteRepository,
    required this.productVariantLocalRepository,
    required this.productVariantRemoteRepository,
  })  : localSecureStore = localSecureStore ?? LocalSecureStore.instance,
        super(const ProjectState()) {
    on(_handleProjectInit);
    on(_handleProjectSelection);
  }

  FutureOr<void> _handleProjectInit(
    ProjectInitializeEvent event,
    ProjectEmitter emit,
  ) async {
    emit(const ProjectState(
      loading: true,
      projects: [],
      selectedProject: null,
    ));

    final connectivityResult = await (Connectivity().checkConnectivity());

    AppLogger.instance.info(
      'Connectivity Result: $connectivityResult',
      title: 'ProjectBloc',
    );

    final isOnline = connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.mobile;

    if (isOnline) {
      await _loadOnline(emit);
    } else {
      await _loadOffline(emit);
    }
  }

  FutureOr<void> _loadOnline(ProjectEmitter emit) async {
    final userObject = await localSecureStore.userRequestModel;
    final uuid = userObject?.uuid;

    List<ProjectStaffModel> projectStaffList =
        await projectStaffRemoteRepository.search(
      ProjectStaffSearchModel(staffId: uuid),
    );

    projectStaffList.removeDuplicates((e) => e.id);

    if (projectStaffList.isEmpty) {
      emit(const ProjectState(
        projects: [],
        loading: false,
        selectedProject: null,
      ));

      return;
    }

    List<ProjectModel> projects = [];

    for (final projectStaff in projectStaffList) {
      await projectStaffLocalRepository.create(
        projectStaff,
        createOpLog: false,
      );

      final staffProjects = await projectRemoteRepository.search(
        ProjectSearchModel(
          id: projectStaff.projectId,
          tenantId: projectStaff.tenantId,
        ),
      );

      projects.addAll(staffProjects);
    }

    projects.removeDuplicates((e) => e.id);

    for (final project in projects) {
      await projectLocalRepository.create(
        project,
        createOpLog: false,
      );
    }

    if (projects.isNotEmpty) {
      await _loadProjectFacilities(projects);
      await _loadProductVariants(projects);
      await _loadServiceDefinition(projects);
    }

    emit(ProjectState(
      projects: projects,
      loading: false,
      selectedProject: projects.length == 1 ? projects.first : null,
    ));
  }

  FutureOr<void> _loadOffline(ProjectEmitter emit) async {
    final projects = await projectLocalRepository.search(
      ProjectSearchModel(
        tenantId: envConfig.variables.tenantId,
      ),
    );

    projects.removeDuplicates((element) => element.id);

    final selectedProject = await localSecureStore.selectedProject;
    emit(
      ProjectState(
        loading: false,
        projects: projects,
        selectedProject: selectedProject,
      ),
    );
  }

  FutureOr<void> _loadProjectFacilities(List<ProjectModel> projects) async {
    final projectFacilities = await projectFacilityRemoteRepository.search(
      ProjectFacilitySearchModel(
        projectId: projects.map((e) => e.id).toList(),
      ),
    );

    for (final projectFacility in projectFacilities) {
      await projectFacilityLocalRepository.create(
        projectFacility,
        createOpLog: false,
      );

      /// Passing [id] as [null] is required to load all facilities associated
      /// with the tenant
      final facilities = await facilityRemoteRepository.search(
        FacilitySearchModel(
          id: null,
        ),
      );

      for (final facility in facilities) {
        await facilityLocalRepository.create(
          facility,
          createOpLog: false,
        );
      }
    }
  }

  FutureOr<void> _loadServiceDefinition(List<ProjectModel> projects) async {
    final configs = await isar.appConfigurations.where().findAll();
    final userObject = await localSecureStore.userRequestModel;
    List<String> codes = [];
    for (var elements in userObject!.roles) {
      configs.first.checklistTypes?.map((e) => e.code).forEach((element) {
        for (final project in projects) {
          codes.add(
            '${project.name}.$element.${elements.code.name.snakeCase.toUpperCase()}',
          );
        }
      });
    }

    final serviceDefinition = await serviceDefinitionRemoteRepository
        .search(ServiceDefinitionSearchModel(
      tenantId: envConfig.variables.tenantId,
      code: codes,
    ));

    for (var element in serviceDefinition) {
      await serviceDefinitionLocalRepository.create(
        element,
        createOpLog: false,
      );
    }
  }

  FutureOr<void> _loadProductVariants(List<ProjectModel> projects) async {
    for (final project in projects) {
      final projectResources = await projectResourceRemoteRepository.search(
        ProjectResourceSearchModel(projectId: project.id),
      );

      for (final projectResource in projectResources) {
        await projectResourceLocalRepository.create(
          projectResource,
          createOpLog: false,
        );

        final productVariants = await productVariantRemoteRepository.search(
          ProductVariantSearchModel(
            id: [projectResource.resource.productVariantId],
          ),
        );

        for (final productVariant in productVariants) {
          await productVariantLocalRepository.create(
            productVariant,
            createOpLog: false,
          );
        }
      }
    }
  }

  Future<void> _handleProjectSelection(
    ProjectSelectProjectEvent event,
    ProjectEmitter emit,
  ) async {
    emit(state.copyWith(loading: true));

    final List<BoundaryModel> boundaries =
        await boundaryRemoteRepository.search(
      BoundarySearchModel(
        boundaryType: event.model.address?.boundaryType,
        code: event.model.address?.boundaryCode.toString(),
      ),
    );

    await boundaryLocalRepository.bulkCreate(boundaries);
    await localSecureStore.setSelectedProject(event.model);
    emit(state.copyWith(
      selectedProject: event.model,
      loading: false,
    ));
  }
}

@freezed
class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.initialize() = ProjectInitializeEvent;

  const factory ProjectEvent.selectProject(ProjectModel model) =
      ProjectSelectProjectEvent;
}

@freezed
class ProjectState with _$ProjectState {
  const ProjectState._();

  const factory ProjectState({
    @Default([]) List<ProjectModel> projects,
    ProjectModel? selectedProject,
    @Default(false) bool loading,
  }) = _ProjectState;

  bool get isEmpty => projects.isEmpty;

  bool get isNotEmpty => !isEmpty;

  bool get hasSelectedProject => selectedProject != null;
}
