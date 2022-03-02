import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String name, gpax, edu,school;

 
  WelcomePage(
    {Key? key,
    required this.name,
    required this.gpax,
    required this.edu,
    required this.school,

    })
    :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปข้อมูลการสมัครเรียน'),
      ),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 0,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ชื่อ-สกุล : '+(' $name')),
                    
                  )),
                Card(
                  elevation: 0,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('วุฒิการศึกษาที่จบ : '+(' $edu')),
                    
                  )),
                Card(
                  elevation: 0,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('เกรดเฉลี่ย(GPAX) : '+(' $gpax')),
                    
                  )),
                Card(
                  elevation: 0,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('สถานศึกษาที่จบ: '+(' $school')),
                    
                  )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}