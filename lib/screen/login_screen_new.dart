import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:listcom/constants.dart';
import '../commons/text_form_item.dart';
import 'package:listcom/screen/sign_up_screen.dart';

class LoginScreenNew extends StatelessWidget {
  const LoginScreenNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 235, 235, 245),
        child: Column(children: [
          const SizedBox(
            height: 60,
          ),
          SvgPicture.asset('assets/icons/logo.svg',
              color: Colors.red[300],
              matchTextDirection: true,
              width: 100,
              height: 100),
          const SizedBox(
            height: 30,
          ),
          const Text("Lista de aplicações",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 30,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  textFormItem(context, 'E-mail', false),
                  const SizedBox(height: 20),
                  textFormItem(context, 'Senha', true),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // <-- Radius
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 18),
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  child: const Text('Entrar'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // <-- Radius
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 18),
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  child: const Text('Registrar-se'),
                ),
              )
            ],
          ),
        ]),
      )),
    ));
  }
}
