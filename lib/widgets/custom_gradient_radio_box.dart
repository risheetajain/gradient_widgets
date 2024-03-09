import 'package:flutter/material.dart';

//You can also use stateful builder instead of stateful widget
class GradientRadioBox extends StatefulWidget {
  const GradientRadioBox({Key? key}) : super(key: key);

  @override
  State<GradientRadioBox> createState() => _GradientRadioBoxState();
}

class _GradientRadioBoxState extends State<GradientRadioBox> {
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
                width: 30,
                height: 30,
                alignment: Alignment.center, //Alignment as center
                decoration: const BoxDecoration(
                    //TODO: you can change here gradient color
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFF09869),
                        Color(0xFFC729B2),
                      ],
                    ),
                    shape: BoxShape.circle),
                child: GestureDetector(
                  onTap: () {
                    //To change the state of isChecked variable
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  //TODO: Here you can see border of checkbox if ischecked is true , else gradient color of checkbox
                  child: isChecked
                      ? const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(
                            value: 1,
                            strokeWidth: 5,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(2.5),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                          ),
                        ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Custom Radio CheckBox',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        ));
  }
}
