import 'package:flutter/cupertino.dart';
import 'package:news_app/DataCalsses/newsDetails.dart';
import 'package:news_app/Models/newsDetails/newsTile.dart';

class verticalListView extends StatelessWidget {

  verticalListView({super.key});
  
  List<newsDetails> news = [
    newsDetails(
        image:
            'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
        title: 'new news for today',
        desceprtion: 'this is the desceprtion'),
    newsDetails(
        image:
            'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
        title: 'new news for today',
        desceprtion: 'this is the desceprtion'),
    newsDetails(
        image:
            'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
        title: 'new news for today',
        desceprtion: 'this is the desceprtion'),
    newsDetails(
        image:
            'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
        title: 'new news for today',
        desceprtion: 'this is the desceprtion'),
    newsDetails(
        image:
            'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
        title: 'new news for today',
        desceprtion: 'this is the desceprtion'),
    newsDetails(
        image:
            'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
        title: 'new news for today',
        desceprtion: 'this is the description'),
    newsDetails(
        image:
            'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
        title: 'new news for today',
        desceprtion: 'this is the description'),
    newsDetails(
        image:
            'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
        title: 'new news for today',
        desceprtion: 'this is the desceprtion'),
    newsDetails(
        image:
            'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
        title: 'new news for today',
        desceprtion: 'this is the desceprtion'),
    newsDetails(
        image:
            'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
        title: 'new news for today',
        desceprtion: 'this is the desceprtion'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: news.length,
        (context, index) {
          return newsTile(news_details: news[index]);
        },
      ),
    );
  }
}
