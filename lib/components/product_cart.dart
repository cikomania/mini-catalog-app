import 'package:flutter/material.dart';
import 'package:flutter_application/models/products_model.dart';

class ProductCart extends StatelessWidget {
  final ProductsModel product;

  const ProductCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Hero(
              tag: product.id,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.vertical(
                  top: Radius.circular(12),
                ),
                child: Image.network(
                  product.image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),

                Text(
                  product.name,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 1),

                Text(
                  product.tagline,
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),

                SizedBox(height: 1),

                Text(
                  product.price,
                  style: TextStyle(
                    color: Colors.blue.shade500,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
