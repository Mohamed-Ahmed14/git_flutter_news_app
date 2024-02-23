import 'package:flutter/material.dart';

import '../../../model/new.dart';




class NewWidget extends StatelessWidget {

  final New article;
  const NewWidget({required this.article,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.deepPurple.withOpacity(0.3),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.network(article.urlToImage??"",
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.error_outline_rounded,color: Colors.red,);
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(article.author??"",style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),),
                    ),
                    Text(article.publishedAt??"",style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),)
                  ],
                ),
                const SizedBox(height: 4,),
                Text(article.title??"",style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
