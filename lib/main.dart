/*
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FirebaseApp());
}

class FirebaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Firebase',
      home: Scaffold(
        appBar: AppBar(title: Text('Firebase Prueba')),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("tareas").snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            List<DocumentSnapshot> docs = snapshot.data.docs;
            return ListView.builder(
              itemCount: docs.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> data = docs[index].data();
                return ListTile(
                  leading: Checkbox(
                    value: data['done'],
                  ),
                  title: Text(
                    data['what'],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
*/
import 'package:firebase/screens/sign_in/sing_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase/routes.dart';
import 'package:firebase/screens/profile/profile_screen.dart';
import 'package:firebase/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SignInScreen.routeName,
      routes: routes,
    );
  }
}