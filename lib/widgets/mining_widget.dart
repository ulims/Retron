import 'package:flutter/material.dart';
import 'package:retron/models/user.dart';
import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/bottomsheet.dart';

class MiningWidget extends StatelessWidget {
  final User miners;
  const MiningWidget({Key? key, required this.miners}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Mining Balance',
                style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: textColor60,
                ),
              ),
              const SizedBox(
                height: 11,
              ),
               Text(
                '${miners.miningBalance} QUL',
                style: const TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: textColor100,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      bottomsheet5(context);
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: storyGradient),
                      child: Image.asset('assets/images/sendvault.png'),
                    ),
                  ),
                  
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: stroke,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'YOUR COUNT',
                      style: TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: textColor40,
                      ),
                    ),
                    Text(
                      '0',
                      style: TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: textColor100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 60,
                ),
                const Text(
                  'OF',
                  style: TextStyle(
                    fontFamily: 'Mabry-Pro',
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: textColor40,
                  ),
                ),
                const SizedBox(
                  width: 65,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'TOTAL COUNT',
                      style: TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: textColor40,
                      ),
                    ),
                    Text(
                      '165',
                      style: TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: textColor100,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: stroke,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text(
                      'YOUR EARNINGS',
                      style: TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: textColor40,
                      ),
                    ),
                    Text(
                      miners.count.toString(),
                      style: const TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: textColor100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 45,
                ),
                const Text(
                  'OF',
                  style: TextStyle(
                    fontFamily: 'Mabry-Pro',
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: textColor40,
                  ),
                ),
                const SizedBox(
                  width: 45,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text(
                      'TOTAL  EARNINGS',
                      style: TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: textColor40,
                      ),
                    ),
                    Text(
                      miners.earnings.toString(),
                      style: const TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: textColor100,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
