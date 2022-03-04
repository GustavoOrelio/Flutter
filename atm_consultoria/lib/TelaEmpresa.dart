import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({Key? key}) : super(key: key);

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Image.asset("images/detalhe_empresa.png"),
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Sobre a empresa",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla, nibh quis fermentum laoreet, odio massa imperdiet lectus, vitae vestibulum mi nisl vitae lacus. Cras sagittis suscipit nisi, et varius sem laoreet in. Nulla ipsum sem, posuere non tempus nec, rutrum egestas risus. Pellentesque maximus, arcu eget ullamcorper elementum, ligula nisl cursus ligula, eget consequat felis mi non ipsum. Praesent et felis ac lectus malesuada faucibus sit amet nec sapien. Donec velit mi, venenatis a blandit interdum, congue a lorem. Pellentesque eu bibendum purus, et convallis enim. Donec fringilla erat eget neque iaculis lobortis. Aenean tristique aliquam eros, id volutpat nisl imperdiet eu."
                  "Mauris sodales porta velit quis elementum. Etiam mauris ligula, consequat quis euismod non, fringilla sit amet neque. Suspendisse potenti. Sed tempor dapibus orci sit amet facilisis. Quisque quis pulvinar sapien, at finibus turpis. Nulla consectetur enim finibus, malesuada purus ac, tincidunt dui. Nullam finibus, tortor nec pulvinar pretium, dui ex tincidunt lorem, eu commodo tortor est in turpis. Praesent imperdiet pretium venenatis. Nulla luctus, nisi vitae semper lobortis, justo ante lobortis eros, eget pretium orci elit a libero. Sed et tincidunt tellus, facilisis iaculis sem. Aliquam at augue consequat, interdum ipsum non, lobortis urna. Donec molestie leo et tortor fermentum, eleifend laoreet purus semper. Pellentesque in diam a odio dictum bibendum."
                  "Aenean vel maximus augue. Curabitur dui ante, iaculis eu porta non, elementum sit amet urna. Suspendisse accumsan urna a laoreet ultrices. Duis molestie maximus leo, eget vulputate est bibendum et. Duis condimentum in lorem eu egestas. Aenean tortor ex, malesuada nec augue ac, congue consectetur lacus. Nulla ac justo varius, volutpat odio sed, consequat ligula. In hac habitasse platea dictumst."
                  "Maecenas vitae ornare purus. Etiam et neque id turpis maximus aliquam. Aenean finibus a dui sed feugiat. Pellentesque quis libero vulputate, malesuada ipsum at, dapibus lectus. Donec in imperdiet elit. Donec vel dolor erat. Ut libero lorem, rutrum at ante a, feugiat viverra lectus. Suspendisse molestie arcu ipsum, et consectetur sapien aliquam malesuada."
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
