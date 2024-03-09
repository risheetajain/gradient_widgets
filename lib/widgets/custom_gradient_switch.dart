import 'package:flutter/material.dart';

//You can also use stateful builder instead of stateful widget
class GradientSwitch extends StatefulWidget {
  const GradientSwitch({Key? key}) : super(key: key);

  @override
  State<GradientSwitch> createState() => _GradientSwitchState();
}

class _GradientSwitchState extends State<GradientSwitch> {
  bool isSwitchOn = false;
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
          title: const Text('Gradient Switch'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  //To change the state of isSwitchOn variable
                  setState(() {
                    isSwitchOn = !isSwitchOn;
                  });
                },
                //TODO: Here you can see border of Switch if isSwitchOn is true , else gradient color of Switch
                child: Stack(
                  alignment:
                      isSwitchOn ? Alignment.centerRight : Alignment.centerLeft,
                  children: [
                    //Gradient Container
                    Container(
                      //Fixed height and width is given so that it won't get change in responsiveness
                      width: 70,
                      height: 40,
                      alignment: Alignment.center, //Alignment as center
                      decoration: BoxDecoration(
                        //TODO: you can change here gradient color
                        gradient: LinearGradient(
                          colors: isSwitchOn
                              ? [
                                  const Color(0xFFF09869),
                                  const Color(0xFFC729B2),
                                ]
                              : [Colors.grey, Colors.grey],
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                    //White Ball like Container
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Custom Gradient Switch',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        ));
  }
}
