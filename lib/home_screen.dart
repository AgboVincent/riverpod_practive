import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practive/main.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  final String userNo = '1';
  void onSubmit (WidgetRef ref, String value) {
     ref.read(userProvider.notifier).updateName(value);

    // ref.read(userChangeNotifierProvider).updateName(value);
  }
  
@override
  Widget build(BuildContext context, WidgetRef ref) {
       //final user = ref.watch(userProvider);
   //    final user = ref.watch(userChangeNotifierProvider).user;
       //final userSelect = ref.watch(userProvider.select((value) => value.name));
       final fakeUser = ref.watch(fetchUserProvider(userNo));
      return fakeUser.when(data: (data){
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(data.name),
            ),
            body: Column(
              children: [
                  TextField(
                    onSubmitted: (value) => onSubmit(ref, value) ,
                  ),
                  Center(
                    child: Text(data.name),
                  )
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed:() => ref.read(counterProvider.notifier).state++,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );

       }, 
       error: (error, stackTrace) {
        return Center(child: Text(error.toString()));

       }, loading: () {
         return Center(child: CircularProgressIndicator());
       });
  }
}
