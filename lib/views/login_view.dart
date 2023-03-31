import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        color: Color.fromARGB(255, 38, 200, 1),
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
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 151, 185, 14),
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
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            fillColor: Colors.white,
            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
