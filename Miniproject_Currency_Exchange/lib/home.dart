import 'package:flutter/material.dart';
import 'package:project/project.dart';
import 'package:project/project2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('HomePage',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 10.0,),

              const Text('ICE461 Miniproject',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              
              const Text('Calculator for financial App',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),

              const SizedBox(height: 20.0),
              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(),
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blueAccent,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Project()
                      ));
                    },
                    child: const Text('Exchange Currency Calculator App'),
                  ),

                  const SizedBox(height: 5.0),

                  TextButton(
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(),
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blueAccent,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Savings()
                      ));
                    },
                    child: const Text('Income and Expenses Calculator App'),
                  ),
                ],
              ),
              
              const SizedBox(height: 30.0,),

              const Text('จัดทำโดย', style: TextStyle(fontSize: 30.0),),
              const SizedBox(height: 15.0,),

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/bandit.jpg', height: 200, width: 200,),
                    const SizedBox(height: 4.0,),
                    const Text('นายบัณฑิต ธงธไนศวรรย์ 65080502237', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500),),

                    const SizedBox(height: 20.0,),
                    Image.asset('assets/images/jirayu.jpg', height: 200, width: 200,),
                    const SizedBox(height: 4.0,),
                    const Text('นายจิรายุ หลั่งแพ 65080502232', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500),),

                    const SizedBox(height: 20.0,),
                    Image.asset('assets/images/jakkapat.jpg', height: 200, width: 200,),
                    const SizedBox(height: 4.0,),
                    const Text('นายจักรภัทร ทับไทย 65080502280', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
