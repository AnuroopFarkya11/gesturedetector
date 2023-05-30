import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<String> todoList = [];
  TextEditingController textEditingController = TextEditingController();


  void onTaskSubmit() {
    String task = textEditingController.text;
    todoList.add(task);
    setState(() {

    });
    textEditingController.clear();

    Navigator.of(context).pop();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            'TO DO LIST',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          )),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: todoList.length==0?Center(child: Text('No todo'),):ListView.builder(
                itemCount: todoList.length, itemBuilder: (context, index) {

                  return ListTile(title: Text('${todoList[index]}'),);


            }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
          
          showDialog(context: context, builder: (BuildContext context){
            return Expanded(child: AlertDialog(
              title: Text('Enter task'),
              actions: [

                TextField(controller: textEditingController,),

                SizedBox(height: 50,),
                Center(child: ElevatedButton(onPressed: (){

                  onTaskSubmit();


                }, child: Text('Submit')))

              ],
            ));
          });
          
        },
        child: Icon(Icons.add),
      ),
    );
  }


}
