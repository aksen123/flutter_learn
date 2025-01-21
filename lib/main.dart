import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp()
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = [0,0,0];
  var name = ['김영숙', '홍길동', '피자집'];
  var b = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
          floatingActionButton: FloatingActionButton(child: Text('추가 버튼'),onPressed: (){
            showDialog(context: context, builder: (context){
              return DialogUI(state: b,test:(text){setState(() {
                name.add(text);
                a.add(0);
                print("값 확인: $text");
              });});

            });
          },),
          appBar: AppBar(title: Text(a.toString()), titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.black),backgroundColor: Colors.blue,),
          body: ListView.builder(itemCount: name.length, itemBuilder: (context,i){
            return ListTile(
              leading: Text(a[i].toString()),
              title : Text(name[i]+ b.toString()),
              trailing: ElevatedButton(child: Text('좋아요'), onPressed: (){
                setState(() {
                  a[i]++;
                });
              }),
            );
          },),
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Colors.green,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [Icon(Icons.phone),Icon(Icons.message), Icon(Icons.contact_page)],),
          )
        );

  }
}


class DialogUI extends StatelessWidget {
   DialogUI({super.key, this.state,this.test});
  final state;
  final  test;
  
  var inputData = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(controller: inputData,),
            Text(state.toString()),
            TextButton(onPressed: (){
                test(inputData.text);
                Navigator.pop(context);
              }, child: Text('완료')),
            TextButton(onPressed: (){Navigator.pop(context);}, child: Text('취소')),
          ],
        ),
      ),
    );
  }
}

class StateTest extends StatefulWidget {
  const StateTest({super.key});

  @override
  State<StateTest> createState() => _StateTestState();
}

class _StateTestState extends State<StateTest> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
