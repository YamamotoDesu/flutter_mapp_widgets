import 'package:flutter/material.dart';

class MyTextFormWidget extends StatefulWidget {
  const MyTextFormWidget({super.key});

  @override
  State<MyTextFormWidget> createState() => _MyTextFormWidgetState();
}

class _MyTextFormWidgetState extends State<MyTextFormWidget> {
  List<String> titles = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          setState(
            () {
              Form.of(primaryFocus!.context!).save();
            },
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            3,
            (int index) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      onSaved: (String? value) {
                        titles[index] = value!;
                      },
                    ),
                    const SizedBox(height: 20),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          titles[index],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
