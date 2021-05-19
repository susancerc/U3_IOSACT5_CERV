import 'package:flutter/material.dart';

void main() => runApp(SusiTarjeta());

class SusiTarjeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('AppBar Tarjetas de Susi'),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
              ], // fin de widget[]
            ), // fin de scaffold
            body: Container(
                child: ListView(
              children: <Widget>[
                _items('https://raw.githubusercontent.com/susancerc/mis_imagenes/main/animalcrrr.jpg', 'animal crossing'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/susancerc/chalex2/main/image05.jpg', 'susan con cabello rosa'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/susancerc/fotosss/main/im1.jpg', 'susan con amarillo'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/susancerc/fotosss/main/im2.jpg', 'susanita fresita'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/susancerc/fotosss/main/im4.jpg', 'susan en el sams'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/susancerc/fotosss/main/im5.jpg', 'sushi con nubecitas'),
                SizedBox(height: 5.0),
              ], // fin de widget []
            )))); // fin de material app
  } // fin de widget

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.orange[600],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo[300],
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('SSD DE SUSI', style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} // fin de SusiTarjeta
