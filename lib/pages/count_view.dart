import 'package:flutter/material.dart';
import 'package:flutter_example/constants/constans.dart';

class CountPage extends StatefulWidget {
  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  int valor1 = 0;
  int valor2 = 0;
  int valor3 = 0;
  int valor4 = 0;
  int valor5 = 0;
  int valor6 = 0;
  void resetVariables() {
    setState(() {
      valor1 = 0;
      valor2 = 0;
      valor3 = 0;
      valor4 = 0;
      valor5 = 0;
      valor6 = 0;
    });
  }

  void sumar() {
    valor6 = valor1 + valor2 + valor3 + valor4 + valor5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('CONTADORES STATEFULLWIDGET'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Sumatoria',
              style: textoSum,
            ),
            Text('$valor6',
                 style: textoSum
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Contador-1',
                      style: textoVal,
                    ),
                    Text(
                      '$valor1',
                      style: textoVal,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),                      
                      onPressed: () {
                        valor1++;
                        sumar();
                        setState(() {});
                      },
                      child: Text("add",style: textoBut),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Contador-2',
                      style: textoVal,
                    ),
                    Text(
                      '$valor2',
                      style: textoVal,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),                      
                      onPressed: () {
                        valor2++;
                        sumar();
                        setState(() {});
                      },
                      child: Text("add",style: textoBut),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Contador-3',
                      style: textoVal,
                    ),
                    Text(
                      '$valor3',
                      style: textoVal,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),                      
                      onPressed: () {
                        valor3++;
                        sumar();
                        setState(() {});
                      },
                      child: Text("add",style: textoBut),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Contador-4',
                      style: textoVal,
                    ),
                    Text(
                      '$valor4',
                      style: textoVal,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),                      
                      onPressed: () {
                        valor4++;
                        sumar();
                        setState(() {});
                      },
                      child: Text("add",style: textoBut),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Contador-5',
                      style: textoVal,
                    ),
                    Text(
                      '$valor5',
                      style: textoVal,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
                      onPressed: () {
                        valor5++;
                        sumar();
                        setState(() {});
                      },
                      child: Text("add",style: textoBut),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.black),borderRadius: BorderRadius.circular(100)),
        onPressed: () {
          resetVariables();
        },
        child: Text("RESET",style: textoRes),
      ),
    );
  }
}