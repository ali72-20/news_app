import 'package:flutter/material.dart';
import 'package:news_app/DataCalsses/newsDetails.dart';

class newsTile extends StatelessWidget {
  newsTile({required this.news_details});

  newsDetails news_details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                news_details.image?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpS1rwqUMTuIRx4Bqomz0BIOEnNs-R1IJTrcdWdJEPh4e6AOP-atzxe5zHzeTSeDFrrRA&usqp=CAU',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          const SizedBox(
            height: 12,
          ),
          Text(
            news_details.title!,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            news_details.desceprtion?? ' ',
            maxLines: 2,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
