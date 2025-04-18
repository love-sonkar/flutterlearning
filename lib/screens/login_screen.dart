import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _Loginscreen();
  }
}

class _Loginscreen extends State<LoginScreen> {
  bool isClicked = false;

  final _formKey = GlobalKey<FormState>();

  handleLoginButton(BuildContext context) async {
    print("hiii");
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        isClicked = !isClicked;
      });
      await Future.delayed(Duration(milliseconds: 300));
      await Navigator.pushNamed(context, "/home");
      setState(() {
        isClicked = false;
      });
    }
  }

  handleUsernameChange(String username) {
    return username.isEmpty ? "Username cannot be empty" : null;
  }

  handlePasswordChange(String password) {
    return password.isEmpty ? "password cannot be empty" : null;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 190,
        width: 160,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.center,
            image: NetworkImage(
              "https://cdn.pixabay.com/photo/2023/06/12/00/11/smartphone-8057248_1280.jpg",
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    validator: (value) => handleUsernameChange(value ?? ""),
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Username",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) => handlePasswordChange(value ?? ""),
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: "Password",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                InkWell(
                  onTap: () => handleLoginButton(context),
                  child: AnimatedContainer(
                    alignment: Alignment.center,
                    duration: Duration(milliseconds: 300),
                    height: 40,
                    width: isClicked ? 40 : MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromARGB(255, 48, 185, 180),
                    ),
                    child:
                        isClicked
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                  ),
                ),

                // ElevatedButton(
                //   onPressed: () => {Navigator.pushNamed(context, "/home")},
                //   style: ElevatedButton.styleFrom(
                //     minimumSize: Size(double.infinity, 50),
                //     foregroundColor: Colors.white,
                //     backgroundColor: const Color.fromARGB(255, 48, 185, 180),
                //     textStyle: TextStyle(fontSize: 17),
                //   ),

                //   child: Text("Login"),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
