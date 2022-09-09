import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:crud_flutter_firebase/utils/theme/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PropertyTile extends StatelessWidget {
  final CollectionReference collection;
  final String docId;
  const PropertyTile({Key? key, required this.collection, required this.docId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
      future: collection.doc(docId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }
        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Text("Document does not exist");
        }
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.lightBlue,
                width: 1,
              ),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 1.5),
                  blurRadius: 3,
                  spreadRadius: 2,
                  color: Colors.black38,
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
            child: Column(children: [
              10.0.heightBox,
              Row(children: [
                Container(
                  height: 100,
                  width: context.width * .3,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightBlue, width: 2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    child: Image(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          'https://assets-news.housing.com/news/wp-content/uploads/2020/11/24190402/What-is-an-immovable-property-FB-1200x700-compressed.jpg'),
                    ),
                  ),
                ),
                20.0.widthBox,
                Flexible(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.0.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                data['name'],
                                textAlign: TextAlign.center,
                                style: context.titleLarge!.bold,
                              ),
                            ),
                          ],
                        ),
                        10.0.heightBox,
                        Text(
                          data['address'],
                          textAlign: TextAlign.start,
                          style:
                              context.titleSmall!.apply(color: AppColors.grey),
                        ),
                      ]),
                ),
              ]),
              20.0.heightBox,
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tenant :  ${data['tenant']}',
                              style: context.titleMedium,
                            ),
                          ],
                        ),
                        20.0.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contract Period : ${data['contranct']}',
                              style: context.titleMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                    10.0.widthBox,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rent : ${data['rent']}',
                              style: context.titleMedium,
                            ),
                          ],
                        ),
                        20.0.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Last Rent Date : ${data['last_rent'].toDate()}',
                              style: context.titleMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          );
        }
        return const Text("loading");
      },
    );
  }
}
