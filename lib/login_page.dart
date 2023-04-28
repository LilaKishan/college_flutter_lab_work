import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  late bool passwordcontroller;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var userNameController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isRememberMe = true;
  @override
  void initState() {
    super.initState();
    // userNameController.text = 'Kishanlila';
    // passwordController.text = '123456789';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(
                    borderOnForeground: true,
                    elevation: 10,
                    margin: EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(40),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(20),
                              padding: EdgeInsets.all(12),
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                                size: 100.0,
                              ),
                            ),
                            TextFormField(
                              controller: userNameController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                icon: Icon(Icons.email_outlined),
                                hintText: 'Email Id',
                                labelText: 'Username',
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              ),
                              onSaved: (String? value) {},
                              validator: (value) {
                                if (value != null && value.isEmpty) {
                                  return "enter username";
                                }
                              },
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              controller: passwordController,
                              obscureText: true,
                              validator: (value) {
                                if (value != null &&
                                    value.isEmpty &&
                                    value.length < 5) {
                                  return "Enter Password";
                                }
                                // print('${value?.length}');
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.password_outlined),
                                hintText: 'Password',
                                labelText: 'Password',
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isRememberMe = !isRememberMe;
                                  //print('isRememberMe ::: $isRememberMe');
                                });
                              },
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: isRememberMe,
                                    onChanged: (value) {},
                                  ),
                                  Text(
                                    'Remember Me',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: TextButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    if (isRememberMe) {}
                                  }
                                },
                                autofocus: false,
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.fromLTRB(30, 12, 30, 12),
                                ),
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
