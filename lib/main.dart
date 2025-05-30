import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: const PageAccueil(title: 'Magazine Infos'),
    );
  }
}

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),

        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Magazine Infos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Image.asset(
                'assets/images/magazineInfo.png',
                fit: BoxFit.cover,
              ),
            ),
            PartieTitre(),
            PartieTexte(),
            PartieIcone(),
            PartieRubrique(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple[400],
        child: Text('Click'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Bienvenue au Magazine Infos',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          Text('Votre magazine numérique votre source d\'inspiration',
              style: TextStyle(
                fontSize: 14.5,
                fontWeight: FontWeight.w500
              ),),
        ],
      ),
    );
  }
}

class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text('Magazine Infos est bien plus qu\'un simple magazine d\'informations. C\'est votre passerelle vers le monde, une source innestimable de connaissances et d\'actualités soigneusement sélectionnées pour vous éclairer sur les enjeux mondiaux, la culture, la science, la, et voir même le divertissement (jeux).'),
    );
  }
}

class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Column(
              children: [
                Icon(Icons.phone, color: Colors.pink),
                SizedBox(height: 5,),
                Text('TEL',
                    style: TextStyle(
                    color: Colors.pink
                    ),)
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(Icons.mail, color: Colors.pink),
                SizedBox(height: 5,),
                Text('MAIL',
                    style: TextStyle(
                    color: Colors.pink
                    ),)
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(Icons.share, color: Colors.pink),
                SizedBox(height: 5,),
                Text('PARTAGE',
                    style: TextStyle(
                    color: Colors.pink
                    ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Image.asset(
                'assets/images/magazineInfo.png',
                width: 150,),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Image.asset(
                'assets/images/magazineInfo.png',
                width: 150,),
          )
        ],
      ),
    );
  }
}
