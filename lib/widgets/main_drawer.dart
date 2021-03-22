import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTitle(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'test',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTitle(
            'Recettes',
            Icons.restaurant,
            (){
              Navigator.of(context).pushReplacementNamed('/');
              // efface la pile de page seule la nouvelle existe pas de retour en arriere possible
              // utile pour l'apres connexion pas de retour sur la page connexion si on vient de reussir de se connecter
            }
          ),
          buildListTitle(
            'Filtrer',
            Icons.filter_alt,
            (){
              Navigator.of(context).pushNamed('/filters');
            }
          ),
        ],
      ),
    );
  }
}
