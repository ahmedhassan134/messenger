import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_new/models/obj/active_ob.dart';

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          radius: 17,
          backgroundImage: AssetImage('assets/images/active/ahmed.jpg'),
        ),
        title: const Text(
          'People',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: const [
          CircleAvatar(
            radius: 17,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.perm_contact_calendar_rounded,
              size: 23,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 8,
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    cont(text: 'STORIES(202)'),
                    const SizedBox(
                      width: 12,
                    ),
                    cont(text: 'ACTIVE(202)')
                  ],
                ),
              ),
              SizedBox(
                  height: 500,
                  child: GridView.count(
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 10,
                      children: List.generate(
                          10,
                          (index) => Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: ExactAssetImage(
                                                active[index].imgAsset)),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    //child: Text(active[index].text),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        start: 7, bottom: 4),
                                    child: Text(
                                      active[index].text,
                                      style: const TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        start: 10, bottom: 90),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.grey,
                                          backgroundImage: AssetImage(
                                              active[index].imgAsset),
                                        ),
                                        const CircleAvatar(
                                          radius: 8,
                                          backgroundColor: Colors.green,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                      crossAxisCount: 2)),
            ],
          ),
        ),
      ),
    );
  }

  Widget cont({String? text}) {
    return Expanded(
        child: Container(
      height: 25,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 3),
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    ));
  }
}
