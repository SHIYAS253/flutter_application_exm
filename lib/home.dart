// import 'package:flutter/material.dart';
// import 'package:flutter_application_exm/controller.dart';
// import 'package:provider/provider.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   void initState(){
//     Provider.of<Controller>(context, listen:false).getemployeelist();
//     super.initState();
//   }
 
//   Widget build(BuildContext context) {
//     final homescreenprovide = Provider .of<Controller>(context);
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(onPressed: (){
//       homescreenprovide.addemployeelist();
//       }),
//       backgroundColor: Color.fromARGB(255, 226, 234, 230),
//       body:Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
            
//            Expanded(
//              child: ListView.builder(
//               itemCount: homescreenprovide.newemployeelist.length,
//               itemBuilder: (context,index) => 
//              Padding(
//                padding: const EdgeInsets.all(10.0),
//                child: Container(
//                 child: Center(
//                   child: Text(homescreenprovide.newemployeelist[index].toString()
//                 )), 
//                 width: 100,
//                 height: 100,
//                 color: Color.fromARGB(255, 33, 198, 243),
//                ),
//              ),
//              ),
//            )
//           ],
//         ),
//       ) ,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_exm/controller.dart';
import 'package:provider/provider.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  void initState() {
    Provider.of< Controller>(context,listen: false).fetchdata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final homecontroller = Provider.of<Controller>(context);
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 784,
            color: const Color.fromARGB(255, 54, 244, 86),
            child: ListView.builder(itemCount: 1,
              itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 300,
                color: const Color.fromARGB(255, 173, 33, 243),
                child: Column(
                  children: [
                    //Text(Provider.of<Controller>(context).responsedata?.address?.street?? '',style: TextStyle(color: Colors.black,fontSize: 30),),
                    SizedBox(height: 10,),
                    // Text(homecontroller.responsedata?.username??''),
                    SizedBox(height: 10,),
                    Text(homecontroller.responsedata?.id.toString()??''),
                    SizedBox(height: 10,),
                    // Text(homecontroller.responsedata?.email.toString()??''),
                  ],
                ),
              ),
            ),),
          )
        ],
      ),
    );
  }
}