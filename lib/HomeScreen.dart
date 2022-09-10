import 'package:flutter/material.dart';

import 'SettingScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  TabController? tabController;
  var fabIcon = Icons.message;

  @override

  void initState(){
    super.initState();

    tabController = TabController(length: 3, vsync: this)
    ..addListener(() {
      setState(() {
        switch (tabController?.index){
          case 0:
            fabIcon = Icons.message;
            break;

            case 1:
            fabIcon = Icons.camera_alt_outlined;
            break;

            case 2:
            fabIcon = Icons.phone;
            break;
        }
      });
    });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(fabIcon,color: Colors.white,),
      ),
      appBar: AppBar(
        title: const Text('WhatsApp'),
        bottom:  TabBar (
          controller: tabController,
          tabs: [
            Tab(child: Text('Chats')),
            Tab(child: Text('Status')),
            Tab(child: Text('Calls')),

          ],
        ),
        actions: [
          const Icon(Icons.search),
          const SizedBox(width: 10,),
          PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
            itemBuilder: (context)=>[
              const PopupMenuItem(
                  child: Text('New Group')),
              const PopupMenuItem(
                  child: Text('New Broadcast')),
              const PopupMenuItem(
                  child: Text('Linked Devices')),
               PopupMenuItem(

                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingScreen()));
                    },
                    child: Text('Settings'),
                  )
              ),
            ],
          ),
          const SizedBox(width: 10,),

        ],

      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView.builder(
            itemCount: 1,
              itemBuilder: (context, index) => Column(
            children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/images/archived.png'),radius: 10,),
                  SizedBox(width: 20,),
                  Text('Archived',textScaleFactor: 1.3,),
                  Spacer(),
                  Text('16',style: TextStyle(color: Colors.teal)),

                ],
              ),
            ),

            const Chat(
                title: 'Jhon Wick',
                subtitle: 'You should love my dog',
                trailing: '9:08 pm',
                image: 'assets/images/jhon.jpeg', num: '5', radius: 10,),
            const Chat(
                title: 'Shahrukh Khan',
                subtitle: 'Jani kdr h',
                trailing: '8:58 pm',
                image: 'assets/images/shahrukh.jpg', num: '3', radius: 10,),
            const Chat(
                title: 'kriti sanon',
                subtitle: 'Ma jacqueline ko goli mar dungi',
                trailing: '8:34 pm',
                image: 'assets/images/kriti.jpg', num: '12', radius: 10,),
            const Chat(
                title: 'Noor Zafar Khan',
                subtitle: 'Miss you',
                trailing: '8:16 pm',
                image: 'assets/images/noor.jpg', num: '22', radius: 10,),
            const Chat(
                title: 'Sara khan',
                subtitle: 'Ma kal aungi tmhri trf',
                trailing: '8:02 pm',
                image: 'assets/images/sara.jpg', num: '5', radius: 10,),
              const Chat(
                title: 'Jacqueline ',
                subtitle: 'Kriti ko block kro',
                trailing: '9:08 pm',
                image: 'assets/images/jac.jpg', num: '6', radius: 10,),
            const Chat(
                title: 'Hania Amir',
                subtitle: 'Sara ko block kro',
                trailing: '8:58 pm',
                image: 'assets/images/hania.jpg', num: '5', radius: 10,),
            const Chat(
                title: 'Aima Baig',
                subtitle: 'Reply me plzzz',
                trailing: '8:34 pm',
                image: 'assets/images/aima.jpg', num: '1', radius: 10,),
              const Chat(
                  title: 'Noor Zafar Khan',
                  subtitle: 'Miss you',
                  trailing: '8:16 pm',
                  image: 'assets/images/noor.jpg', num: '8', radius: 10,),
              const Chat(
                  title: 'Sara khan',
                  subtitle: 'Ma kal aungi tmhri trf',
                  trailing: '8:02 pm',
                  image: 'assets/images/sara.jpg', num: '11', radius: 10,),
              const Chat(
                  title: 'Jhon Wick',
                  subtitle: 'You should love my dog',
                  trailing: '9:08 pm',
                  image: 'assets/images/jhon.jpeg', num: '21', radius: 10,),
              const Chat(
                  title: 'Shahrukh Khan',
                  subtitle: 'Jani kdr h',
                  trailing: '8:58 pm',
                  image: 'assets/images/shahrukh.jpg', num: '4', radius: 10,),
              const Chat(
                  title: 'kriti sanon',
                  subtitle: 'Ma jacqueline ko goli mar dungi',
                  trailing: '8:34 pm',
                  image: 'assets/images/kriti.jpg', num: '6', radius: 10,),
              const Chat(
                  title: 'Noor Zafar Khan',
                  subtitle: 'Miss you',
                  trailing: '8:16 pm',
                  image: 'assets/images/noor.jpg', num: '8', radius: 10,),
              const Chat(
                  title: 'Sara khan',
                  subtitle: 'Ma kal aungi tmhri trf',
                  trailing: '8:02 pm',
                  image: 'assets/images/sara.jpg', num: '9', radius: 10,),
            ],
          )),
          ListView.builder(
            itemCount: 1,
              itemBuilder: (context, index) => Column(
            children: const [
              Chat(
                  title: 'My Status',
                  subtitle: 'Tap to add status update',
                  trailing: '',
                  image: 'assets/images/ahzaz.jpg', num: '', radius: 0,),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: EdgeInsets.only(top: 10,left: 10,bottom: 10),
                    child: Text('New Updates')),
              ),

            Status(
                title: 'Jhon Wick',
                subtitle: 'Just Now',
                trailing: '',
                image: 'assets/images/jhon.jpeg'),
              Status(
                title: 'Shahrukh Khan',
                subtitle: '1 minute ago',
                trailing: '',
                image: 'assets/images/shahrukh.jpg'),
              Status(
                title: 'kriti sanon',
                subtitle: '20 minute ago',
                trailing: '',
                image: 'assets/images/kriti.jpg'),
              Status(
                title: 'Noor Zafar Khan',
                subtitle: '29 minute ago',
                trailing: '',
                image: 'assets/images/noor.jpg'),
              Status(
                title: 'Sara khan',
                subtitle: '39 minute ago',
                trailing: '',
                image: 'assets/images/sara.jpg'),

              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: EdgeInsets.only(top: 10,left: 10,bottom: 10),
                    child: Text('Viewed Updates')),
              ),
              Chat(
                title: 'Jhon Wick',
                subtitle: '40 minute ago',
                trailing: '',
                image: 'assets/images/jhon.jpeg', num: '', radius: 0,),
            Chat(
                title: 'Shahrukh Khan',
                subtitle: '45 minute ago',
                trailing: '',
                image: 'assets/images/shahrukh.jpg', num: '', radius: 0,),
            Chat(
                title: 'kriti sanon',
                subtitle: '49 minute ago',
                trailing: '',
                image: 'assets/images/kriti.jpg', num: '', radius: 0,),
            Chat(
                title: 'Noor Zafar Khan',
                subtitle: '55 minute ago',
                trailing: '',
                image: 'assets/images/noor.jpg', num: '', radius: 0,),
            Chat(
                title: 'Sara khan',
                subtitle: 'Today, 7;50',
                trailing: '',
                image: 'assets/images/sara.jpg', num: '', radius: 0,),
              Chat(
                  title: 'Jhon Wick',
                  subtitle: '40 minute ago',
                  trailing: '',
                  image: 'assets/images/jhon.jpeg',
                num: '', radius: 0,),
              Chat(
                  title: 'Shahrukh Khan',
                  subtitle: '45 minute ago',
                  trailing: '',
                  image: 'assets/images/shahrukh.jpg', num: '', radius: 0,),
              Chat(
                  title: 'kriti sanon',
                  subtitle: '49 minute ago',
                  trailing: '',
                  image: 'assets/images/kriti.jpg', num: '', radius: 0,),
              Chat(
                  title: 'Noor Zafar Khan',
                  subtitle: '55 minute ago',
                  trailing: '',
                  image: 'assets/images/noor.jpg', num: '', radius: 0,),
              Chat(
                  title: 'Sara khan',
                  subtitle: 'Today, 7;50',
                  trailing: '',
                  image: 'assets/images/sara.jpg', num: '', radius: 0,),
            ],
          )),
          ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => Column(
                children: const [
                  Call(
                      title: 'Jhon Wick',
                      subtitle: '44 minute ago',
                      trailing: Icon(Icons.phone,
                        color: Colors.teal,),
                      image: 'assets/images/jhon.jpeg'),
                  Call(
                      title: 'Shahrukh Khan',
                      subtitle: 'Today 4:44 pm',
                      trailing: Icon(Icons.phone,
                        color: Colors.teal,),
                      image: 'assets/images/shahrukh.jpg'),
                  Call(
                      title: 'kriti sanon',
                      subtitle: 'Today 3:54 pm',
                      trailing: Icon(Icons.video_call_rounded,
                        color: Colors.teal,),
                      image: 'assets/images/kriti.jpg'),
                  Call(
                      title: 'Noor Zafar Khan',
                      subtitle: 'Today 8:16 pm',
                      trailing: Icon(Icons.video_call_rounded,
                        color: Colors.teal,),
                      image: 'assets/images/noor.jpg'),
                  Call(
                      title: 'Sara khan',
                      subtitle: 'Yesterday 8:02 pm',
                      trailing: Icon(Icons.phone,
                        color: Colors.teal,),
                      image: 'assets/images/sara.jpg'),
                  Call(
                      title: 'Jhon Wick',
                      subtitle: '44 minute ago',
                      trailing: Icon(Icons.phone,
                        color: Colors.teal,),
                      image: 'assets/images/jhon.jpeg'),
                  Call(
                      title: 'Shahrukh Khan',
                      subtitle: 'Today 4:44 pm',
                      trailing: Icon(Icons.phone,
                        color: Colors.teal,),
                      image: 'assets/images/shahrukh.jpg'),
                  Call(
                      title: 'kriti sanon',
                      subtitle: 'Today 3:54 pm',
                      trailing: Icon(Icons.video_call_rounded,
                        color: Colors.teal,),
                      image: 'assets/images/kriti.jpg'),
                  Call(
                      title: 'Noor Zafar Khan',
                      subtitle: 'Today 8:16 pm',
                      trailing: Icon(Icons.video_call_rounded,
                        color: Colors.teal,),
                      image: 'assets/images/noor.jpg'),
                  Call(
                      title: 'Sara khan',
                      subtitle: 'Yesterday 8:02 pm',
                      trailing: Icon(Icons.phone,
                        color: Colors.teal,),
                      image: 'assets/images/sara.jpg'),
                  Call(
                      title: 'Jhon Wick',
                      subtitle: '44 minute ago',
                      trailing: Icon(Icons.phone,
                        color: Colors.teal,),
                      image: 'assets/images/jhon.jpeg'),
                  Call(
                      title: 'Shahrukh Khan',
                      subtitle: 'Today 4:44 pm',
                      trailing: Icon(Icons.phone,
                        color: Colors.teal,),
                      image: 'assets/images/shahrukh.jpg'),
                  Call(
                      title: 'kriti sanon',
                      subtitle: 'Today 3:54 pm',
                      trailing: Icon(Icons.video_call_rounded,
                        color: Colors.teal,),
                      image: 'assets/images/kriti.jpg'),
                  Call(
                      title: 'Noor Zafar Khan',
                      subtitle: 'Today 8:16 pm',
                      trailing: Icon(Icons.video_call_rounded,
                        color: Colors.teal,),
                      image: 'assets/images/noor.jpg'),
                  Call(
                      title: 'Sara khan',
                      subtitle: 'Yesterday 8:02 pm',
                      trailing: Icon(Icons.phone,
                        color: Colors.teal,),
                      image: 'assets/images/sara.jpg'),
                ],
              )),
        ],
      ),
    );
}
}



class Chat extends StatelessWidget {
  const Chat({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.image,
    required this.radius,
    required this.num
  })
      : super(key: key);

  final String title , subtitle, trailing, image,num;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Column(
        children: [
          Text(trailing,
            style: const TextStyle(color: Colors.teal,fontSize: 10),),
          const SizedBox(height: 2,),
          CircleAvatar(
            backgroundColor: Colors.teal,
            radius: radius,
            child: Text(num,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                textScaleFactor: 0.6),)
        ],
      ),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),

    );
  }
}
class Call extends StatelessWidget {
  const Call({Key? key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.image
  }) : super(key: key);

  final String title , subtitle,  image;
  final Icon trailing;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: trailing,
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),

    );
  }
}


class Status extends StatelessWidget {
  const Status({Key? key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.image})
      : super(key: key);
  final String title , subtitle, trailing, image;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Text(trailing),
      subtitle: Text(subtitle),
      leading: Container(

        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border:  Border.all(color: Colors.lightGreen,
              width: 2)
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
      ),

    );
  }
}

