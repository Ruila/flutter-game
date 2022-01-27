import 'package:flutter/material.dart';
import 'package:boxgame/pages/toolBox.dart';

class LoginPage extends StatelessWidget {
  final account = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: TextFormField(
                controller: account,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Name *",
                  hintText: "Your Github account username",
                ),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: TextFormField(
                controller: password,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  labelText: "Password *",
                  hintText: "Your Github account password or ...",
                ),
              ),
            ),
            const SizedBox(
              height: 52.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 48.0,
              height: 48.0,
              child: ElevatedButton(
                child: const Text("Login"),
                onPressed: () {
                  if (account.text == "" && password.text == "") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ToolBox()));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
