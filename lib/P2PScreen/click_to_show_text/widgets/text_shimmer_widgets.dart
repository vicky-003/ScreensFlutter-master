import 'package:flutter/material.dart';

class TextShimmer extends StatelessWidget {
  const TextShimmer({
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(color: Colors.grey,
              width: 60,
              child: Text(
                "",
                style: TextStyle(
                    color: Colors.black38,fontWeight: FontWeight.w400,fontSize: 14 ),
              ),
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(color: Colors.grey,
                  width: 160,
                  child: Text(
                    "",
                    style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black87),
                  ),
                ),
                Expanded(child: Container()),
                Container(color: Colors.grey,
                    width: 30,
                    child: Icon(Icons.arrow_forward_ios_sharp))
              ],
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(color: Colors.grey,
              width: 100,
              child: Text(
                '',
                style: TextStyle(
                    color: Colors.black38,fontWeight: FontWeight.w400,fontSize: 14),
              ),
            ),
          ),
          SizedBox(height: 16),
          Divider(height: 12,color: Colors.black38),
        ],
      ),
    );
  }
}
