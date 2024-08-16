import 'package:flutter/material.dart';
import 'package:flutter_application_atividade_listview_1608/gatinhos.dart';

class Mygatinhos extends StatefulWidget {
  const Mygatinhos({super.key});

  @override
  State<Mygatinhos> createState() => _MygatinhosState();
}

class _MygatinhosState extends State<Mygatinhos> {
  List<Gatinhos> listagato=[
    Gatinhos("Frajolinha","assets/images/adorable-black-white-kitty-with-monochrome-wall-her.jpg" , 5),
    Gatinhos("Mimi", "assets/images/close-up-portrait-beautiful-cat.jpg", 6)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gatinhos",style: TextStyle(color: Colors.white),),backgroundColor: Colors.cyan,centerTitle: true,),
       body: ListView.separated(
        separatorBuilder: (context, index) => Divider(thickness: 3,),
        itemCount: listagato.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading:ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(150.0)),
              child: Image.asset(
                listagato[index].foto,
                fit:BoxFit.cover,
                width: 80.0,
                height: 80.0,
              ),
            ),
            title: Text(listagato[index].nome),
            subtitle: Text(listagato[index].idade.toString()),
            trailing: Text(index.toString()),
          );
        },
      ),
    );
  }
}