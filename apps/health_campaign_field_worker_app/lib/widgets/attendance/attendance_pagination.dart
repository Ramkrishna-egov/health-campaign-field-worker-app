import 'package:flutter/material.dart';

class Pagination extends StatefulWidget {
  final int limit;
  final int offSet;
  final int totalCount;
  final Function(dynamic) callBack;
  final bool isDisabled;
  final bool isTotalCountVisible;
  const Pagination({
    Key? key,
    required this.limit,
    required this.offSet,
    required this.callBack,
    required this.totalCount,
    this.isDisabled = false,
    this.isTotalCountVisible = true,
  }) : super(key: key);

  @override
  _PaginationState createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 18),
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text("Rows"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: DropdownButton(
              //  key: "Keys.common.PAGINATION_DROPDOWN",
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              items: dropDownItems,
              value: widget.limit,
              onChanged: widget.isDisabled ? null : onChangeOfPageCount,
              //onChanged: widget.isDisabled ? null : (y) {},
            ),
          ),
          _buildPageDetails(isTotalCountVisible: widget.isTotalCountVisible),
        ],
      ),
    );
  }

  get dropDownItems {
    return [10, 20, 30, 40, 50].map((value) {
      return DropdownMenuItem(
        key: Key('$value'),
        value: value,
        child: Text('$value'),
      );
    }).toList();
  }

  Widget _buildPageDetails({bool isTotalCountVisible = true}) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            onChangeOfPage(false);
          },
          icon: const Icon(
            Icons.arrow_left,
          ),
        ),
        ...isTotalCountVisible
            ? [
                Text(
                  '${widget.offSet} - ${(widget.offSet + widget.limit - 1) <= widget.totalCount ? (widget.offSet + widget.limit - 1) : widget.totalCount}',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Wrap(
                    spacing: 14,
                    children: [
                      const Text('of'),
                      Text('${widget.totalCount}'),
                    ],
                  ),
                ),
              ]
            : [],
        Visibility(
          visible: isTotalCountVisible
              ? ((widget.offSet + widget.limit - 1) < widget.totalCount)
              : true,
          child: IconButton(
            onPressed: widget.isDisabled ? null : onChangeOfPage,
            icon: const Icon(Icons.arrow_right),
          ),
        ),
        // Visibility(
        //   visible: isTotalCountVisible
        //       ? ((widget.offSet + widget.limit - 1) < widget.totalCount)
        //       : true,
        //   child: IconButton(
        //     onPressed: widget.isDisabled ? null : () {},
        //     icon: const Icon(Icons.arrow_right),
        //   ),
        // ),
      ],
    );
  }

  onChangeOfPage([bool isIncrement = true]) {
    if (isIncrement) {
      widget.callBack({
        "limit": widget.limit,
        "totalCount": widget.totalCount,
        "offset": widget.offSet + 1,
      });

      return;
    }
    widget.callBack({
      "limit": widget.limit,
      "totalCount": widget.totalCount,
      "offset": widget.offSet - 1,
    });
  }

  onChangeOfPageCount(limit) {
    widget.callBack({
      {
        "limit": limit,
        "totalCount": widget.totalCount,
        "offset": widget.offSet,
      },
    });
  }
}
