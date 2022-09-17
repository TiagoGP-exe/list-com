import "package:flutter/material.dart";
import 'package:listcom/commons/text_form_item.dart';
import 'package:listcom/constants.dart';
import 'package:listcom/models/users/user.dart';
import 'package:listcom/models/users/user_services.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final UserLocal userLocal = UserLocal();
  final UserServices userServices = UserServices();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 245),
      appBar: AppBar(
        title: const Text("Registrar Cadastro"),
        backgroundColor: kPrimaryColor,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            child: Form(
              key: formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60),
                    textFormItem(context, 'Nome', false),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Nome Completo', hintText: 'E-mail'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, informe o e-mail';
                        }
                        return null;
                      },
                      onSaved: (name) => userLocal.name = name,
                    ),
                    const SizedBox(height: 20),
                    textFormItem(context, 'Email', false),
                    const SizedBox(height: 20),
                    textFormItem(context, 'Senha', false),
                    const SizedBox(height: 20),
                    textFormItem(context, 'Rede Social', false),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              foregroundColor: kPrimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(8), // <-- Radius
                              ),
                              side: const BorderSide(color: kPrimaryColor),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            child: const Text("Cancelar")),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(8), // <-- Radius
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          child: const Text('Salvar'),
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ),
      )),
    );
  }
}
