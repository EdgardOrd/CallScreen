import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/img/p_icon.png'),
                width: 130,
                height: 150,
              ),
              SizedBox(height: 50),
              Text(
                'Pascualillo',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 18),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.withOpacity(0.3),
              ),
              SizedBox(height: 20),
              ActionIcons(),
              Info(),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}

class ActionIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    size: 26,
                    color: Color.fromARGB(255, 0, 88, 160),
                  ),

                  Text(
                    'Llamar',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.message,
                    size: 26,
                    color: Color.fromARGB(255, 0, 88, 160),
                  ),

                  Text(
                    'Mensaje de Texto',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.videocam,
                    size: 26,
                    color: Color.fromARGB(255, 0, 88, 160),
                  ),
                  Text(
                    'Video',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 30,
            thickness: 1,
            color: Colors.grey.withOpacity(0.3),
          ),
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 243, 243),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(9.0),
              child: Text(
                'Información del contacto',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 3),
            ListTile(
              leading: Icon(
                Icons.call_outlined,
                size: 25,
                color: Color.fromARGB(255, 75, 75, 75),
              ),
              title: Text(
                '+504 9902-9311',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Celular',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.videocam_outlined,
                    size: 25,
                    color: Color.fromARGB(255, 75, 75, 75),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.chat_outlined,
                    size: 25,
                    color: Color.fromARGB(255, 75, 75, 75),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            infoLine('assets/img/whatsapp.png', 'Enviar mensaje a +504 9902-9311'),
            SizedBox(height: 22),
            infoLine('assets/img/whatsapp.png', 'Llamar a +504 9902-9311'),
            SizedBox(height: 22),
            infoLine('assets/img/whatsapp.png', 'Videollamar a +504 9902-9311'),
            SizedBox(height: 22),
            infoLine('assets/img/telegram.png', 'Mensaje al +50499029311'),
            SizedBox(height: 22),
            infoLine('assets/img/telegram.png', 'Llamada de voz al +50499029311'),
            SizedBox(height: 22),
            infoLine('assets/img/telegram.png', 'Videollamada al +50499029311'),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }


  Widget infoLine(String imagePath, String text) {
    return Row(
      children: [
        SizedBox(width: 20),
        Image.asset(
          imagePath,
          width: 25,
          height: 25,
        ),
        SizedBox(width: 15),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
