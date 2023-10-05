import 'package:flutter/material.dart';

import '../model/item_model.dart';

class TextTileWidgets extends StatelessWidget {
  final Textdata param;
  final VoidCallback? onPressed;

  const TextTileWidgets({
    Key? key,
    required this.param,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onPressed,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    param.title,
                    style: TextStyle(
                        color: Colors.black38,fontWeight: FontWeight.w400,fontSize: 14 ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        param.subtitle,
                        style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black87),
                      ),
                      Expanded(child: Container()),
                      param.isDescriptionVisible ? Container() : GestureDetector (
                          onTap: onPressed,
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 24,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    param.date,
                    style: TextStyle(
                        color: Colors.black38,fontWeight: FontWeight.w400,fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Divider(height: 12,color: Colors.black38),
          param.isDescriptionVisible?
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              param.description,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38),
            ),
          ):Container(),
          param.isDescriptionVisible?
          const Divider(
            height: 10,
            color: Colors.black38,
          ): Container(),
        ],
      ),
    );
  }
}
