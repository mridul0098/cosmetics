import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/cosmetics.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _productList = [
    Product(
        productId: 'c022',
        name: 'Makeup Kit',
        price: 400.0,
        discount: 20.0 ,
        categoryName: 'cosmetics',
        subCategoryName: 'Cosmetics and Beauty',
        brandName: 'Brand: MRM',
        warrenty: '1 years',
        imageUrl:
            'https://media.istockphoto.com/photos/makeup-palette-and-brushes-professional-eyeshadow-palette-picture-id1299164489?b=1&k=20&m=1299164489&s=170667a&w=0&h=GqoYQHfqq4UfbHFq9TlUp3isRCAqm9hoFqnxaKUEQEU=',
        productDetails: 'Best Tablet'),
    Product(
        productId: 'c023',
        name: 'Lipstick',
        price: 80.0,
        discount: 0.0,
        categoryName: 'cosmetics',
        subCategoryName: 'Cosmetics and Beauty',
        brandName: 'Brand: MRM',
        warrenty: '2 Month',
        imageUrl:
            'https://www.greenqueen.com.hk/wp-content/uploads/2021/02/Tinge-Young-Startup-Disrupts-Indian-Beauty-Market-With-Customisable-Vegan-Eco-Cosmetics.jpg',
        productDetails: 'Best Tablet'),
    Product(
        productId: 'c024',
        name: 'Healthy Skin Nourishing Lip Balm',
        price: 300.0,
        discount: 0.0,
        categoryName: 'cosmetics',
        subCategoryName: 'Cosmetics and Beauty',
        brandName: 'Brand: MRM',
        //warrenty: '2 years',
        imageUrl:
            'https://static.standard.co.uk/2021/07/20/14/111skinmaskjpg?width=640&auto=webp&quality=50&crop=1500%3A1000%2Csmart',
        productDetails: 'Best Tablet'),
    Product(
        productId: 'c025',
        name: 'Indian Beauty ',
        price: 80.0,
        discount: 20.0,
        categoryName: 'cosmetics',
        subCategoryName: 'Cosmetics and Beauty',
        brandName: 'Mizan Group',
        //warrenty: '2 years',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5airOlVleSzg58vNYuzNv7F6hSgSojqpJOA&usqp=CAU',
        productDetails: 'Best Phone'),
    Product(
        productId: 'c026',
        name: 'GIrls Sungluss',
        price: 150.0,
        discount: 20.0,
        categoryName: 'cosmetics',
       subCategoryName: 'Cosmetics and Beauty',
        brandName: 'Mizan Group',
        //warrenty: '2 years',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOScgJir5rZfc8vrb3EsYMwcb5I8Uq8iKZYg&usqp=CAU',
        productDetails: 'Smart Audio Device'),
    Product(
        productId: 'c027',
        name: 'Girls Razor',
        price: 40.0,
        discount: 10.0,
        categoryName: 'cosmetics',
        subCategoryName: 'Cosmetics and Beauty',
        brandName: 'GOL',
        //warrenty: '2 years',
        imageUrl:
            'https://image.shutterstock.com/image-photo/pink-lady-shaver-on-white-260nw-65601124.jpg',
        productDetails: 'Best Laptop'),
    Product(
        productId: 'c028',
        name: 'Eyeliner',
        price: 145.0,
        discount: 20.0,
        categoryName: 'cosmetics',
        subCategoryName: 'Cosmetics and Beauty',
        brandName: '',
        //warrenty: '2 years',
        imageUrl:
            'https://m.media-amazon.com/images/I/61r+yeaIgAL._AC_SL1500_.jpg',
        productDetails: 'Best All in on PC'),
    Product(
        productId: 'c029',
        name: 'Metal Earrings for Women',
        price: 660.0,
        discount: 10.0,
        categoryName: 'cosmetics',
        subCategoryName: 'Cosmetics and Beauty',
        brandName: 'CTG',
        warrenty: '1 years',
        imageUrl:
            'https://static-01.daraz.com.bd/p/702c5d31c942c768582e3922814b0b73.jpg',
        productDetails: 'Best Laptop'),
    
  ];
  int _crossAxisCount = 2;
  double _expandedHeight = 280;
  double _imageHeight = 160;
  int get crossAxisCounts => _crossAxisCount;
  double get expandedHeight => _expandedHeight;
  double get imageHeight => _imageHeight;
  set setAxis(int data) {
    _crossAxisCount = data;
    notifyListeners();
  }

  set setexpandedHeight(double data) {
    _expandedHeight = data;
    notifyListeners();
  }

  set setImageHeight(double data) {
    _imageHeight = data;
    notifyListeners();
  }

  List<Product> get products => _productList;
}
