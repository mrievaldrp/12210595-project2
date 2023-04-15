import 'package:flutter/material.dart';
import 'package:projectnew/views/dashboard/dashboard_view.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 222, 201),
      body: SingleChildScrollView(
        child: Column(
          children: [
            JudulLogin(),
            Stack(
              children: [
                CardFromLogin(),
                Center(
                  child: Image.asset(
                    'assets/Logo.png',
                    width: 140,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardFromLogin extends StatelessWidget {
  const CardFromLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Color.fromARGB(255, 164, 144, 124),
        elevation: 8,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            KolomInput(),
            KolomInput(),
            ButtonLogin(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (bc){
            return DashboardView();
          }));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 200, 182, 166),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text('Login'),
        ));
  }
}

class KolomInput extends StatelessWidget {
  const KolomInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            fillColor: Colors.white,
            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            hintText: "Silahkan isi",
            isDense: true,
            filled: true),
      ),
    );
  }
}

class JudulLogin extends StatelessWidget {
  const JudulLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, bottom: 30),
      child: Text(
        'Aplikasi \nPendataan Masyarakat \nGolden BALI',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
