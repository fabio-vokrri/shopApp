import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatefulWidget {
  final product;

  CustomListTile({@required this.product});

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.product.id),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) {
        return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Are you Sure?'),
              content: Text(
                  'Do you really want to remove this item from your shoppin bag?'),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text('Yes'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text('No'),
                ),
              ],
            );
          },
        );
      },
      onDismissed: (direction) {
        widget.product.removeProduct();
      },
      background: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.all(10),
        child: Icon(
          Icons.delete,
          color: Colors.black,
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 100,
        width: double.maxFinite,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.product.name,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
