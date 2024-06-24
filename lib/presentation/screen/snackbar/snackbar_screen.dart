import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    //rompe la apcion de acer varias filas de snackbars
    ScaffoldMessenger.of(context).clearMaterialBanners();

    // ui Widget
    final snackbar = SnackBar(
      content: const Text('hello Word'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 1),
    );

    //enviar snackbar
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas Seguro'),
        content: const Text(
            'Excepteur sint reprehenderit mollit velit exercitation ea id incididunt ad laboris nulla reprehenderit labore ex. Tempor tempor sunt laborum sint. Non voluptate qui occaecat deserunt pariatur ea excepteur ut ipsum esse nulla. Ullamco eiusmod officia eu in. Fugiat sint non dolor irure nisi occaecat consequat do irure consectetur qui amet. Adipisicing sunt non reprehenderit ut. Cillum occaecat eu ullamco adipisicing est.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Canclear'),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Hello user, how are yo?, mi first app using flutter ,Hola amigs, est es mi primera app de flutter estoy aprendiendo con el curso de Fernando Herrera en Udemy a continucaion entrontraran las licnecias de uso que de le doy a mi app')
                ]);
              },
              child: const Text('Politicas de uso'),
            ),
            const SizedBox(height: 20),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: const Text('Politicas de uso'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        icon: const Icon(Icons.bus_alert),
        label: const Text('Mostrar Snackbar'),
      ),
    );
  }
}
