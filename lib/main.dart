import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({ Key? key }) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _name = TextEditingController();
  TextEditingController _edu = TextEditingController();
  TextEditingController _gpax = TextEditingController();
  TextEditingController _school = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FITM admission'),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'ชื่อ-สกุล'),
                  autofocus: true,
                ),
              ),
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _edu,
                decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'วุฒิการศึกษาที่จบ'),
                  autofocus: true,
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _gpax,
                decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'เกรดเฉลี่ยรวม(GPAX)'),
                  autofocus: true,
                  keyboardType: TextInputType.number,
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _school,
                decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'ชื่อสถานศึกษาที่จบ'),
                  autofocus: true,
                ),
              ),
            
            Text(
              "เลือกโครงการที่ต้องการสมัคร",
              style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              
                DropdownButton<String>(
                  items: <String>['โครงการรับตรงสอบข้อเขียน', 'โครงการโควต้าพื้นที่', 'โครงการ Portfolio', 'โครงการเรียนดี', 'โครงการรับตรงใข้คะแนน GAT/PAT'].map((String value) {
                    return DropdownMenuItem<String>(

                      value: value,
                      child: Text(value),
                      
                   );
                  }).toList(),
                  onChanged: (_) {},
                  ),
                          Text(
              "สาขาที่ต้องการสมัครอันดับ1",
              style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              
                DropdownButton<String>(
                  items: <String>['IT(หลักสูตร 4ปี)','INE(หลักสูตร 4ปี)', 'IEM(หลักสูตร 4ปี)','MM(หลักสูตร 4ปี)','AFE(หลักสูตร 4ปี)','CA(หลักสูตร 4ปี)','ITI(หลักสูตรต่อเนื่อง)','INET(หลักสูตรต่อเนื่อง)','INET(หลักสูตรต่อเนื่อง)', 'IMT(หลักสูตรต่อเนื่อง)','MMT(หลักสูตรต่อเนื่อง)','AFET(หลักสูตรต่อเนื่อง)','CDM(หลักสูตรต่อเนื่อง)',    ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                   );
                  }).toList(),
                  onChanged: (_) {},
                  ),
              Text(
              "สาขาที่ต้องการสมัครอันดับ2",
              style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              
                DropdownButton<String>(
                  items: <String>['IT(หลักสูตร 4ปี)','INE(หลักสูตร 4ปี)', 'IEM(หลักสูตร 4ปี)','MM(หลักสูตร 4ปี)','AFE(หลักสูตร 4ปี)','CA(หลักสูตร 4ปี)','ITI(หลักสูตรต่อเนื่อง)','INET(หลักสูตรต่อเนื่อง)','INET(หลักสูตรต่อเนื่อง)', 'IMT(หลักสูตรต่อเนื่อง)','MMT(หลักสูตรต่อเนื่อง)','AFET(หลักสูตรต่อเนื่อง)','CDM(หลักสูตรต่อเนื่อง)',    ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                   );
                  }).toList(),
                  onChanged: (_) {},
                  ),
              Text(
              "สาขาที่ต้องการสมัครอันดับ3",
              style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              
                DropdownButton<String>(
                  items: <String>['IT(หลักสูตร 4ปี)','INE(หลักสูตร 4ปี)', 'IEM(หลักสูตร 4ปี)','MM(หลักสูตร 4ปี)','AFE(หลักสูตร 4ปี)','CA(หลักสูตร 4ปี)','ITI(หลักสูตรต่อเนื่อง)','INET(หลักสูตรต่อเนื่อง)','INET(หลักสูตรต่อเนื่อง)', 'IMT(หลักสูตรต่อเนื่อง)','MMT(หลักสูตรต่อเนื่อง)','AFET(หลักสูตรต่อเนื่อง)','CDM(หลักสูตรต่อเนื่อง)',    ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                   );
                  }).toList(),
                  onChanged: (_) {},
                  ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WelcomePage(
                          name: _name.text,
                          edu: _edu.text,
                          gpax: _gpax.text,
                          school: _school.text,
                          
                        ),
                      ),
                    );
                  },
                  
                  child: Text('สมัคร'))
                ],
               ),
              ),
            );
          }
        }

