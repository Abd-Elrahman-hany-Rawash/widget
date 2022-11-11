import 'package:flutter/material.dart';

//import 'package:awesome_dialog/awesome_dialog.dart';
//import 'package:course_flutter/component/alert.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(title: 'Flutter Demo Home Page'),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var Password, ID;
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * .10,
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .50,
                  child: Center(child: Image.asset("images/logo.png")),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * .50,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50))),
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 30, bottom: 5),
                    child: Form(
                      key: formstate,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextFormField(
                              onSaved: (val) {
                                ID = val;
                              },
                              //validator: (val) { },
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.green,
                                ),
                                hintText: "ID",
                                labelText: "ID",
                                labelStyle: TextStyle(
                                    color: Colors.green, fontSize: 25),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.green),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              onSaved: (val) {
                                Password = val;
                              },
                              //  validator: (val) {},
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.green,
                                  ),
                                  hintText: "Password",
                                  //  hintStyle: TextStyle(color: Colors.black),
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                      color: Colors.green, fontSize: 25),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.green),
                                  )),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        height: 50,
                                        child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25))),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.green)),
                                          child: const Text("LOGIN",
                                              style: TextStyle(
                                                  letterSpacing: 2,
                                                  color: Colors.white,
                                                  fontSize: 20)),
                                        ),
                                      ),
                                    ]),
                              ],
                            )
                          ]),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
