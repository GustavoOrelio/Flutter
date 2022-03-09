import 'package:flutter/material.dart';

import '../Api.dart';
import '../model/Video.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {


  _listarVideos(){
    Api api = Api();
    return api.pesquisar("");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder< List <Video> >(
      future: _listarVideos(),
      builder: (context, snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.none :
          case ConnectionState.waiting :
            return Center(
              child: CircularProgressIndicator(),
            );
            break;
          case ConnectionState.active :
          case ConnectionState.done :
            if( snapshot.hasData ){
              return ListView.separated(
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      Text("Teste")
                    ],
                  );
                },
                separatorBuilder: (context, index) => Divider(
                  height: 2,
                  color: Colors.red,
                ),
                itemCount: snapshot.data!.length
              );
            }else{
              return Center(
                child: Text("Nenhum dado a ser exibido"),
              );
            }
            break;
        }
      },
    );
  }
}
