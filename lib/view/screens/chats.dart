import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_new/models/obj/active_ob.dart';
import 'package:messenger_new/models/obj/stories_ob.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          radius: 17,
          backgroundImage: AssetImage('assets/images/active/ahmed.jpg'),
        ),
        title: const Text(
          'chats',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: const [
          CircleAvatar(
            radius: 17,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.camera_alt,
              size: 23,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
            radius: 17,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.edit,
              size: 23,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 8,
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: const EdgeInsetsDirectional.only(end: 10),
                          alignment: Alignment.center,
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text('sms'),
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                    separatorBuilder: (context, ind) {
                      return const SizedBox(
                        width: 9,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: story.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 60,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.grey,
                                      backgroundImage:
                                          AssetImage(story[index].imgAsset),
                                    ),
                                    const CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Colors.green,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  child: Text(
                                    story[index].text,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  height: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              ListView.separated(
                  separatorBuilder: (context, ind) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: active.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey,
                              backgroundImage:
                                  AssetImage(active[index].imgAsset),
                            ),
                            const CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              active[index].text,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 16),
                            ),
                            Text(
                              active[index].text2,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
