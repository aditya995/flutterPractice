import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final count;
  const Posts({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        border: Border.all(),
        borderRadius: BorderRadius.circular(25),
      ),
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(45),
      child: Text(
        '''Post Number : ${count} \n\n
      data data data data data data data data
      data data data data data data data data 
      hex Val hex Val hex Val hex Val hex Val hex Val hex Val hex Valhex Val hex Val hex Val hex Valhex Val hex Val hex Val hex Valhex Val hex Val hex Val hex Valhex Val hex Val hex Val hex Valhex Val hex Val hex Val hex Valhex Val hex Val hex Val hex Valhex Val hex Val hex Val 
      data data data data data data data data
      data data data data data data data data
      data data data data data data data data
      data data data data data data data data
      data data data data data data data data
      data data data data data data data data
      data data data data data data data data
      data data data data data data data datadata data data data data data data data
      data data data data data data data data
      
      ''',
        textAlign: TextAlign.center,
      ),
    );
  }
}
