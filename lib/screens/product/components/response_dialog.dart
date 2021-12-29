import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/constants/constants.dart';
import 'package:tsvit_paporoti/screens/product/components/stars.dart';

class ResponseDialog extends StatefulWidget {
  const ResponseDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<ResponseDialog> createState() => _ResponseDialogState();
}

class _ResponseDialogState extends State<ResponseDialog> {
  final nameController = TextEditingController();
  final responseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 455,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Ваше ім\'я',
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: TextField(
              controller: nameController,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kGreyColor),
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kGreyColor),
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
            ),
            width: 300,
          ),
          const Text(
            'Ваш відгук',
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: TextField(
              controller: responseController,
              textCapitalization: TextCapitalization.sentences,
              maxLines: 7,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kGreyColor),
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kGreyColor),
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
            ),
            width: 300,
          ),
          const Text(
            'Рейтинг',
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          const Stars(),
          Container(
            child: ElevatedButton(
              child: const Text('Надіслати відгук'),
              onPressed: () {
                if (nameController.text != '' &&
                    responseController.text != '') {
                  Navigator.pop(context);
                }
              },
              style: ElevatedButton.styleFrom(
                shape: const BeveledRectangleBorder(),
                primary: kPrimaryColor,
                elevation: 0,
              ),
            ),
            alignment: Alignment.centerRight,
            width: 300,
          ),
        ],
      ),
    );
  }
}
