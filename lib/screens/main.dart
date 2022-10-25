import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedindex=0;

  int _currentIndex = 0;
   List<IconData> _icons=[
    Icons.sports_tennis,
    Icons.sports_basketball_outlined,
    Icons.sports_soccer_outlined,
    Icons.sports_baseball_outlined,
    Icons.sports_volleyball_outlined,
    Icons.sports_cricket_outlined,
    Icons.location_on_outlined,
  ];
   List<String> Sports=[
     'badminton',
     'football',
     'tennis',
   ];
   List<Image> images=[Image.asset('assets/badminton.jpg'),Image.asset('assets/football.jpg'),Image.asset('assets/tennis.jpg')];

   Widget _buildIcon(int index){
     return GestureDetector(
       onTap:(){
         setState(() {
           _selectedindex =index;
         });

       },
        child:Container(
       height:60.0,
       width:60.0,
       decoration:BoxDecoration(
                    color: _selectedindex==index? Colors.redAccent:Color(0xFFE7BEE),
                    borderRadius:BorderRadius.circular(30.0),
                  ),
       child:Icon(
           _icons[index],
             size:25.0,
            color: _selectedindex==index? Colors.white:Color(0xFFB4C1C4),
         ),

     ),
     );
   }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 7, child: Scaffold(
      //resizeToAvoidBottomInset: false,
      /*appBar: AppBar(
        title: Text('Home'),

      ),*/

      body:
      
         SafeArea(
          child: ListView(

              padding: EdgeInsets.symmetric(vertical: 30.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 120.0),
                    child: Text(
                        'HOME',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        )
                    )
                ),

                SizedBox(height:20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:<Widget>[
                    _buildIcon(0),
                    _buildIcon(1),
                    _buildIcon(2),
                    _buildIcon(3),
                    _buildIcon(4),
                    _buildIcon(5),
                  ],
                ),
                SizedBox(
                  height:30.0,
                ),
                Container(
                  width:double.maxFinite,
                  height:40.0,
                  child:TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey ,
                    indicator: BoxDecoration(color:Colors.red,borderRadius: BorderRadius.circular(8.0)),
                    tabs:[
                      Tab(text:'Today'),
                      Tab(text:'14 Feb'),
                      Tab(text:'15 Feb'),
                      Tab(text:'16 Feb'),
                      Tab(text:'17 Feb'),
                      Tab(text:'18 Feb'),
                      Tab(text:'19 Feb'),

                    ],
                  ),
                ),

                 Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                         Container(
                           decoration:BoxDecoration(
                             borderRadius:BorderRadius.circular(30.0),

                           ),
                          width:double.maxFinite,

                          child:
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:[
                                Column(
                                  children: [
                                    Image.asset('assets/badminton.jpg'),
                                  ],
                                ),
                                Column(

                                  children: [
                                    Text('Badminton',style:TextStyle(fontSize:28.0,fontWeight:FontWeight.bold,color:Colors.black87)),
                                    Text('         '),
                                    Text('10/12',style:TextStyle(fontSize:23.0,fontWeight:FontWeight.w600,color:Colors.red)),
                                    Text('Spots available',style:TextStyle(fontSize:18.0,fontWeight:FontWeight.w300,color:Colors.grey.withOpacity(0.9))),
                                    Text('      '),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            _buildIcon(6),
                                          ],
                                        ),
                                        Column(
                                            children:[
                                              Text('Dubai Sports District',style:TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400,color:Colors.red.withOpacity(0.8))),
                                              Text('                     12km',style:TextStyle(fontSize: 14.0,fontWeight: FontWeight.w200,color: Colors.redAccent)),]
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Saturday',style:TextStyle(fontSize:12.0,fontWeight:FontWeight.w600,color:Colors.black)),
                                    Text('13 Feb',style:TextStyle(fontSize:18.0,fontWeight:FontWeight.w600,color:Colors.red)),
                                    Text('     '),
                                    Text('20:00',style:TextStyle(fontSize:17.0,fontWeight:FontWeight.w600,color:Colors.red)),
                                    Text('     '),
                                    ElevatedButton(onPressed: (){}, child: Text('Join Now'),style:ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
                                  ],
                                )
                              ],
                            ),

                          ),
                        ),

                    ),

                SizedBox(
                  height:10.0,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Container(
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(30.0),

                      ),
                      width:double.maxFinite,

                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          Column(
                            children: [
                              Image.asset('assets/football.jpg'),
                            ],
                          ),
                          Column(

                            children: [
                              Text('Football',style:TextStyle(fontSize:28.0,fontWeight:FontWeight.bold,color:Colors.black87)),
                              Text('        '),
                              Text('2/10',style:TextStyle(fontSize:23.0,fontWeight:FontWeight.w600,color:Colors.red)),
                              Text('Spots available',style:TextStyle(fontSize:18.0,fontWeight:FontWeight.w300,color:Colors.grey.withOpacity(0.9))),
                              Text('      '),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      _buildIcon(6),
                                    ],
                                  ),
                                  Column(
                                    children:[
                                      Text('Dubai Sports District',style:TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400,color:Colors.red.withOpacity(0.8))),
                                      Text('                     12km',style:TextStyle(fontSize: 14.0,fontWeight: FontWeight.w200,color: Colors.redAccent)),]
                                  ),
                                ],
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              Text('Saturday',style:TextStyle(fontSize:12.0,fontWeight:FontWeight.w600,color:Colors.black)),
                              Text('13 Feb',style:TextStyle(fontSize:18.0,fontWeight:FontWeight.w600,color:Colors.red)),
                              Text('     '),
                              Text('20:00',style:TextStyle(fontSize:17.0,fontWeight:FontWeight.w600,color:Colors.red)),
                              Text('   '),
                              ElevatedButton(onPressed: (){}, child: Text('Join Now'),style:ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
                            ],
                          )
                        ],
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height:10.0,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Container(
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(30.0),

                      ),
                      width:double.maxFinite,

                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          Column(
                            children: [
                              Image.asset('assets/tennis.jpg'),
                            ],
                          ),
                          Column(

                            children: [
                              Text('Padel Tennis',style:TextStyle(fontSize:28.0,fontWeight:FontWeight.bold,color:Colors.black87)),
                              Text('     '),
                              Text('2/5',style:TextStyle(fontSize:23.0,fontWeight:FontWeight.w600,color:Colors.red)),
                              Text('Spots Available',style:TextStyle(fontSize:18.0,fontWeight:FontWeight.w300,color:Colors.grey.withOpacity(0.9))),
                              Text('      '),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      _buildIcon(6),
                                    ],
                                  ),
                                  Column(
                                      children:[
                                        Text('Dubai Sports District',style:TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400,color:Colors.red.withOpacity(0.8))),
                                        Text('                     12km',style:TextStyle(fontSize: 14.0,fontWeight: FontWeight.w200,color: Colors.redAccent)),]
                                  ),
                                ],
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              Text('Saturday',style:TextStyle(fontSize:12.0,fontWeight:FontWeight.w600,color:Colors.black)),
                              Text('13 Feb',style:TextStyle(fontSize:18.0,fontWeight:FontWeight.w600,color:Colors.red)),
                              Text('       '),
                              Text('20:00',style:TextStyle(fontSize:17.0,fontWeight:FontWeight.w600,color:Colors.red)),
                              Text('    '),
                              ElevatedButton(onPressed: (){}, child: Text('Join Now'),style:ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
                            ],
                          )
                        ],
                      ),

                    ),
                  ),
                ),

                ],




          ),


        ),
      


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.lightBlue
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard_outlined),
              label: 'leaderboard',
              backgroundColor: Colors.lightBlue
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball_outlined),
              label: 'activities',
              backgroundColor: Colors.lightBlue
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'profile',
              backgroundColor: Colors.lightBlue
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    ));
  }
}

