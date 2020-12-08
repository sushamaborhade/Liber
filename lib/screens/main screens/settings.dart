import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),centerTitle: true,),
      body: _settingsList()

    );
  }
  Widget _settingsList()
  {
    return ListView.separated(itemBuilder: (context,index)
    {
      return ListTile(
        leading: Icon(Icons.file_download),
        title: Text("Downloads"),
        onTap: (){},
      );
    },
        separatorBuilder: (context,index)=>Divider(), itemCount: 4);
  }
}
