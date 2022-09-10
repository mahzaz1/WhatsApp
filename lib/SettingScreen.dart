import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsaap/HomeScreen.dart';
import 'package:whatsaap/ThemeChanger.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
  final themeChange = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Call(
                title: 'Ahzaz',
                subtitle: 'Alhmadulliah for everything',
                trailing: Icon(Icons.qr_code,
                  color: Colors.teal,),
                image: 'assets/images/ahzaz.jpg'
            ),
          ),
          Divider(
            height: 10,
            thickness: 2,
          ),
          RadioListTile<ThemeMode>
            (
            title: Text('Light MOde'),
              value: ThemeMode.light,
              groupValue: themeChange.themeMode,
              onChanged: themeChange.setTheme
          ),
          RadioListTile<ThemeMode>
            (
            title: Text('Dark MOde'),
              value: ThemeMode.dark,
              groupValue: themeChange.themeMode,
              onChanged: themeChange.setTheme
          ),
           SizedBox(height: 100,),
           Text('From'),
           SizedBox(height: 5 ,),

           Text('Malik Ahzaz'),

        ],
      )
    );
  }
}
