import 'package:flutter/material.dart';

class radio_tab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height *0.12),
          ),
          Image.asset('assets/images/radio_image.png'),
          SizedBox(height: MediaQuery.of(context).size.height *0.03,),
          Text('إذاعة القرآن الكريم',
              style:Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600
              )),
          SizedBox(height: MediaQuery.of(context).size.height *0.06,),
          Image.asset('assets/images/radio2.png')
        ],
      ),
    );
  }
}
