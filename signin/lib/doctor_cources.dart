import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DoctorCource());
}

class DoctorCource extends StatefulWidget {
  const DoctorCource({Key? key}) : super(key: key);

  @override
  State<DoctorCource> createState() => _DoctorCourceState();
}

class _DoctorCourceState extends State<DoctorCource> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cources Page'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            buildCouce(),
            buildCouce(),
            buildCouce(),
          ],
        ),
      ),
    );
  }

  buildCouce() {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Card(
        elevation: 5,
        child: ListTile(
          leading: Image.network(
              "https://play-lh.googleusercontent.com/5UwL7nXjNKqMAaF9zDyLupztNcoEdppXfWXJYKJMES7CK-rZ-t7bM5gy9p4Gc7qUm-Y",fit: BoxFit.fill,),
          title: Text('Data conmmunication'),
          subtitle: Text('Cource Code :2020Fci3It313'),
          trailing: PopupMen(MenuList: [
            PopupMenuItem(
                child: InkWell(onTap: (){},
                  child: ListTile(
              leading: Icon(Icons.remove_red_eye_sharp),
              title: Text("View"),
            ),
                )),
            PopupMenuItem(
                child: ListTile(
              leading: Icon(Icons.edit),
              title: Text("Edit"),
            )),
            PopupMenuItem(
                child: ListTile(
              leading: Icon(Icons.delete),
              title: Text("Remove"),
            )),
          ], icon: Icon(Icons.more_vert_rounded)),
          isThreeLine: true,
        ),
      ),
    );
  }
}

class PopupMen extends StatelessWidget {
  final List<PopupMenuEntry> MenuList;
  final Widget? icon;

  const PopupMen({Key? key, required this.MenuList, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      constraints: BoxConstraints.expand(
          width: MediaQuery.of(context).size.width * 0.5, height: 180),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      itemBuilder: ((context) => MenuList),
      icon: icon,
    );
  }
}
