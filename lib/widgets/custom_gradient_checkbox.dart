import 'package:flutter/material.dart';

//You can also use stateful builder instead of stateful widget
class GradientCheckBox extends StatefulWidget {
  const GradientCheckBox({Key? key}) : super(key: key);

  @override
  State<GradientCheckBox> createState() => _GradientCheckBoxState();
}

class _GradientCheckBoxState extends State<GradientCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Gradient CheckBox'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //Fixed height and width is given so that it won't get change in responsiveness
                width: 40,
                height: 40,
                alignment: Alignment.center, //Alignment as center
                decoration: BoxDecoration(
                  //TODO: you can change here gradient color
                  gradient: LinearGradient(
                    colors: const [
                      Color(0xFFF09869),
                      Color(0xFFC729B2),
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
                child: InkWell(
                  onTap: () {
                    //To change the state of isChecked variable
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  //TODO: Here you can see border of checkbox if ischecked is true , else gradient color of checkbox
                  child: isChecked
                      ? const Icon(Icons.check_rounded, color: Colors.white)
                      : Padding(
                          padding: const EdgeInsets.all(2.5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Custom Gradient CheckBox',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        ));
  }
}
