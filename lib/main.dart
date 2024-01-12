import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const Myapp());
}
class Myapp extends StatelessWidget
{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }

}
class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).orientation);
    print(MediaQuery.of(context).size);
    print(MediaQuery.sizeOf(context));

   return Scaffold(
     appBar: AppBar(
      title: const Text("Home"),
     ),
     body: Column(
       children: [
         Scrollbar(

             child: SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             children: [
               Text(" hbdceikcnkcjnwjicnewcndjkcnsdcndjc"),
               Text(" hbdceikcnkcjnwjicnewcndjkcnsdcndjc"),
               Text(" hbdceikcnkcjnwjicnewcndjkcnsdcndjc"),
             ],
           ),
         )),
         Wrap(
           alignment: WrapAlignment.center,
           spacing: 10,
           children: [
             Text(" hbdceikcnkcjnwjicnewcndjkcnsdcndjc"),
             Text(" hbdceikcnkcjnwjicnewcndjkcnsdcndjc"),
             Text(" hbdceikcnkcjnwjicnewcndjkcnsdcndjc"),
           ],
         ),
         OrientationBuilder(builder: (context,orientation){
         print(orientation);
         if(orientation==Orientation.portrait)
           {
             return Text("looks good");
           }
         else if(orientation==Orientation.landscape)
           {
             return Text("looks big");
           }
       else {
               return Text("no");
         }

         },
         ),
         LayoutBuilder(builder:(context,constraints) {
           print(constraints);
           if (constraints.maxWidth < 500) {
             return Text("tv");
           }
           else
             {
               return Text("niah");
             }
         },

         )
       ],
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){
         count++;
         setState((){});
       },
       child: const Icon(Icons.add),
     ),
   );
  }
}