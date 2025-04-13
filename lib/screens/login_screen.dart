import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

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
                child: TextField(
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
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: "Password",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => {Navigator.pushNamed(context, "/home")},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 48, 185, 180),
                  textStyle: TextStyle(fontSize: 17),
                ),

                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
