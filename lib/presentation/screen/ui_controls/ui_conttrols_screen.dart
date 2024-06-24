import 'package:flutter/material.dart';

class UiConttrolsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiConttrolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Controles'),
      ),
      body: const _UiControlsView(),
    );
  }
}

enum Trasportation { car, plane, boat, submarine }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;

  //controlador de la listaselectiva
  Trasportation selectedTrasportation = Trasportation.car;

  bool wantsBreackFast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //swicht con title

        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales de nuestra app'),
          value: isDeveloper,
          onChanged: (value) => setState(
            () {
              isDeveloper = !isDeveloper;
            },
          ),
        ),

        ExpansionTile(
          title: const Text('Vehiculo de trasporte'),
          subtitle: Text('$selectedTrasportation'),
          children: [
            //check list title
            RadioListTile(
              title: const Text('Viajar Por Carro'),
              subtitle: const Text('Viajar por Carro'),
              value: Trasportation.car,
              groupValue: selectedTrasportation,
              onChanged: (value) => setState(
                () {
                  selectedTrasportation = Trasportation.car;
                },
              ),
            ),
            RadioListTile(
              title: const Text('Viajar Por Avion'),
              subtitle: const Text('Viajar por Avion'),
              value: Trasportation.plane,
              groupValue: selectedTrasportation,
              onChanged: (value) => setState(
                () {
                  selectedTrasportation = Trasportation.plane;
                },
              ),
            ),
            RadioListTile(
              title: const Text('Viajar Por bote'),
              subtitle: const Text('Viajar por bote'),
              value: Trasportation.boat,
              groupValue: selectedTrasportation,
              onChanged: (value) => setState(
                () {
                  selectedTrasportation = Trasportation.boat;
                },
              ),
            ),
            RadioListTile(
              title: const Text('Viajar Por Submarino'),
              subtitle: const Text('Viajar por Submarino'),
              value: Trasportation.submarine,
              groupValue: selectedTrasportation,
              onChanged: (value) => setState(
                () {
                  selectedTrasportation = Trasportation.submarine;
                },
              ),
            ),
          ],
        ),

        CheckboxListTile(
          title: const Text('Desayuno'),
          subtitle: const Text('Mira el desayuno '),
          value: wantsBreackFast,
          onChanged: (value) => setState(() {
            wantsBreackFast = !wantsBreackFast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo'),
          subtitle: const Text('Mira el Almuerzo '),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Merienda'),
          subtitle: const Text('Mira la Merienda '),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
