import 'package:flutter/material.dart';

class SpaTile extends StatelessWidget {
  const SpaTile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/images/spa.jpeg',
                  fit: BoxFit.cover,
                )),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Lorem Ipsum',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
            ),
            const Text(
              '200 SAR',
              style: TextStyle(color: Colors.cyan, fontSize: 12),
            ),
            SizedBox(
              width: size.width * 0.5,
              child: const Text(
                'Lorem ipsum dolor sit amet, consectetur',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SizedBox(
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(Colors.cyan),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                child: const Text('Back'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
