import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Comece onde você está, use o que você tem e faça o que você pode.",
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.",
    "Devíamos ser ensinados a não esperar por inspiração para começar algo. Ação sempre gera inspiração. Inspiração raramente gera ação.",
    "Não importa que você vá devagar, contanto que você não pare.",
    "A inspiração existe, porém temos que encontrá-la trabalhando.",
    "Coragem é saber o que não temer.",
    "Conhecer a si mesmo é o começo de toda sabedoria.",
    "Descubra quem é você, e seja essa pessoa. A sua alma foi colocada nesse mundo para ser isso, então viva essa verdade e todo resto virá.",
    "Acredite em milagres, mas não dependa deles.",
    "Não é a carga que o derruba, mas a maneira como você a carrega.",
    "Não existe nada de completamente errado no mundo, mesmo um relógio parado, consegue estar certo duas vezes por dia.",
    "A vida é 10% o que acontece a você e 90% como você reage a isso.",
    "O otimismo é a fé daquele que conduz à realização; nada pode ser feito sem esperança.",
    "Um livro, uma caneta, uma criança e um professor podem mudar o mundo.",
    "A felicidade não é algo pronto. Ela é feita das suas próprias ações.",
    "Nossa maior fraqueza está em desistir. O caminho mais certo de vencer é tentar mais uma vez.",
    "Mude o modo que você olha para as coisas, e as coisas que você olha mudarão.",
    "Um homem criativo é motivado pelo desejo de alcançar, não pelo desejo de vencer os outros.",
  ];

  var _frasesGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt( _frases.length );

    setState(() {
      _frasesGerada = _frases[ numeroSorteado ];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _frasesGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.blueAccent,
              onPressed: _gerarFrase,
            ),
          ],
        ),
      ),
    );
  }
}
