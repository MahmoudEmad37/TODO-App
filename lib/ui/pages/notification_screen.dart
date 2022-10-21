import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/ui/widgets/text_desc.dart';

import '../theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key, required this.payload}) : super(key: key);

  final String payload;

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String _payload = '';

  @override
  void initState() {
    super.initState();
    _payload = widget.payload;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? white : darkGreyClr,
          ),
        ),
        elevation: 0.0,
        backgroundColor: context.theme.backgroundColor,
        title: Center(
          child: Text(
            _payload.toString().split('|')[0],
            style: TextStyle(color: Get.isDarkMode ? white : darkGreyClr),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                Text(
                  'Hello, Mahmoud',
                  style: TextStyle(
                    fontSize: fontXL,
                    fontWeight: FontWeight.w900,
                    color: Get.isDarkMode ? white : darkGreyClr,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'You have a new reminder',
                  style: TextStyle(
                    fontSize: fontL,
                    fontWeight: FontWeight.w300,
                    color: Get.isDarkMode ? Colors.grey[100] : darkGreyClr,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
                child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: primaryClr,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextDesc(
                        title: 'Title',
                        desc: _payload.toString().split('|')[0],
                        icon: Icons.text_format),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextDesc(
                        title: 'Description',
                        desc: _payload.toString().split('|')[1],
                        icon: Icons.description_outlined),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextDesc(
                        title: 'Date',
                        desc: _payload.toString().split('|')[2],
                        icon: Icons.calendar_today_outlined),
                  ],
                ),
              ),
            )),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
