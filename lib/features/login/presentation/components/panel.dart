import 'package:warehouse/config/constants/application_images.dart';
import 'package:flutter/material.dart';

class Panel extends StatelessWidget {
  const Panel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 171, 199, 246),
      child: Image(
        image: AssetImage(ApplicationImages.warehouseLogin),
        fit: BoxFit.contain,
      ),
    );
  }
}
