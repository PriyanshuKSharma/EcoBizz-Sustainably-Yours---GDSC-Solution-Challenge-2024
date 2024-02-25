import 'package:flutter/material.dart';

class FiltersTab extends StatefulWidget {
  const FiltersTab({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FiltersTabState createState() => _FiltersTabState();
}

class _FiltersTabState extends State<FiltersTab> {
  final categories = [
    'Apparel',
    'Accessories',
    'Health',
    'Outdoor Gear',
    'Stationery'
  ];
  String selectedCategories = '';

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categories
                .map((category) => Padding(
                      padding: const EdgeInsets.only(
                          bottom: 30, top: 10), // Added bottom padding here
                      child: ChoiceChip(
                        showCheckmark: false,
                        selectedColor: const Color(0xFF66BB6A),
                        selected: selectedCategories.contains(category),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.transparent),
                        ),
                        label: Text(category,
                            style: TextStyle(
                                color: selectedCategories.contains(category)
                                    ? Colors.white
                                    : const Color(0xff647E8A),
                                fontFamily: 'Panton Narrow Bold')),
                        onSelected: (selected) => setState(() {
                          selectedCategories = selected ? category : '';
                        }),
                      ),
                    ))
                .toList(),
          ),
        ),
      );
}
