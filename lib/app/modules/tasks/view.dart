import 'package:dark_todo/app/widgets/select_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  int toggleValue = 0;

  late bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      <MaterialState>{
        MaterialState.pressed,
      };
      return Colors.black;
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
              child: Row(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Iconsax.arrow_left_1),
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Comrun',
                                style: context.theme.textTheme.headline1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'Раннер про компьютер',
                                style: context.theme.textTheme.subtitle2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Iconsax.edit),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: Get.size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, top: 20, bottom: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Задачи',
                                style: context.theme.textTheme.headline1
                                    ?.copyWith(
                                        color: context.theme.backgroundColor),
                              ),
                              Text(
                                '(1/2) Завершено',
                                style: context.theme.textTheme.subtitle2,
                              ),
                            ],
                          ),
                          SelectButton(
                            icons: const [
                              Icon(
                                Iconsax.close_circle,
                                color: Colors.black,
                              ),
                              Icon(
                                Iconsax.tick_circle,
                                color: Colors.black,
                              ),
                            ],
                            onToggleCallback: (value) {
                              setState(() {
                                toggleValue = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) {
                          return Dismissible(
                            key: const ObjectKey(1),
                            direction: DismissDirection.endToStart,
                            onDismissed: (DismissDirection direction) {},
                            background: Container(
                              alignment: Alignment.centerRight,
                              child: const Padding(
                                padding: EdgeInsets.only(
                                  right: 15,
                                ),
                                child: Icon(
                                  Iconsax.trush_square,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(
                                  right: 20, left: 20, bottom: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // color: Colors.white,
                              ),
                              child: CupertinoButton(
                                minSize: double.minPositive,
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            checkColor: Colors.white,
                                            fillColor: MaterialStateProperty
                                                .resolveWith(getColor),
                                            value: isChecked,
                                            shape: const CircleBorder(),
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            },
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'TileMap',
                                                  style: context
                                                      .theme.textTheme.headline4
                                                      ?.copyWith(
                                                    color: Colors.black,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  'Составить карту тайлов',
                                                  style: context.theme.textTheme
                                                      .subtitle2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      DateFormat.yMd('ru')
                                          .format(DateTime.now()),
                                      style: context.theme.textTheme.subtitle2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        backgroundColor: context.theme.primaryColor,
        child: const Icon(
          Iconsax.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
