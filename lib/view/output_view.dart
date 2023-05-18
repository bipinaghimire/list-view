import 'package:flutter/material.dart';

import '../model/student.dart';

class OutputView extends StatefulWidget {
  const OutputView({super.key});

  @override
  State<OutputView> createState() => _OutputViewState();
}

class _OutputViewState extends State<OutputView> {
  List<Student>? lstStudents;
  @override
  void didChangeDependencies() {
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>?;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Output View'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: lstStudents!.length,
          itemBuilder: (context, index) {
            var fname = lstStudents![index].fname!;
            var lname = lstStudents![index].lname!;
            return ListTile(
              leading: const Icon(Icons.person),
              title: Text('$fname $lname'),
              subtitle: Text(lstStudents![index].address!),
              trailing: Wrap(children: [
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {
                      lstStudents!.removeAt(index);
                    },
                    icon: const Icon(Icons.delete)),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/editstudent');
                    },
                    icon: const Icon(Icons.edit)),
              ]),
            );
          },
        ));
  }
}

// Row(children: [
//               Text(
//                 lstStudents![index].fname!,
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const Spacer(),
//               Text(
//                 lstStudents![index].lname!,
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ]);
