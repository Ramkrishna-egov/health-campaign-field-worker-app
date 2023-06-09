import 'package:custom_reactive_text_field/custom_reactive_text_field.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Text Field Example',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.comfortable,
      ),
      home: MyHomePage(title: 'CustomTextFormField Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({required this.title, super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  String nameKey = 'name';
  String fatherNameKey = 'fatherName';
  String mobileNumberKey = 'mobileNumber';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: ReactiveFormBuilder(
            form: buildForm,
            builder: (context, form, child) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 48),
                    CustomTextFormField(
                      label: 'Name',
                      formControlName: nameKey,
                      isRequired: true,
                    ),
                    CustomTextFormField(
                      label: 'Father Name',
                      formControlName: fatherNameKey,
                      isRequired: true,
                    ),
                    CustomTextFormField(
                      label: 'Mobile number',
                      formControlName: mobileNumberKey,
                      maxLength: 10,
                      isRequired: true,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (form.valid) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Yay ! Details Submitted')));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    'Oops ! Please fill the mandatory details')));
                          }
                        },
                        child: Text('Submit'))
                  ],
                ),
              );
            }),
      ), // This trailing comma makes auto-formattig nicer for build methods.
    );
  }

  FormGroup buildForm() => fb.group(<String, Object>{
        nameKey: FormControl<String>(value: '', validators: [
          Validators.required,
          Validators.minLength(2),
          Validators.maxLength(128)
        ]),
        fatherNameKey:
            FormControl<String>(value: null, validators: [Validators.required]),
        mobileNumberKey: FormControl<String>(value: '', validators: [
          Validators.required,
          Validators.minLength(10),
          Validators.maxLength(10)
        ])
      });
}
