import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/models/response.dart';

class Responses extends StatelessWidget {
  final List<Response> responses;

  const Responses({Key? key, required this.responses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Відгуки',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 20,
          ),
        ),
        const Divider(),
        Column(
          children: List.generate(
            responses.length,
            (index) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${responses[index].name}, ${responses[index].date.day}/${responses[index].date.month}/${responses[index].date.year}',
                      style: const TextStyle(fontWeight: FontWeight.w300),
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (number) => Icon(
                          Icons.star,
                          color: (number < responses[index].stars)
                              ? Colors.amber
                              : Colors.grey,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  responses[index].text,
                  style: const TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
