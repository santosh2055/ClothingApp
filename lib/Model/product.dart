class Product {
  final int id;
  final String title;
  final String image;
  final double newprice;
  final double oldprice;
  final String size;

  Product(
      {required this.id,
      required this.title,
      required this.image,
      required this.newprice,
      required this.oldprice,
      required this.size});
}

List<Product> products = [
  Product(
      id: 1,
      title: 'New Shirt',
      image: 'Images/1.jpg',
      newprice: 100,
      oldprice: 110,
      size: 'Extra large(XL)'),
  Product(
      id: 2,
      title: 'Coat',
      image: 'Images/coat.jpg',
      newprice: 140,
      oldprice: 150,
      size: 'Extra large(XL)'),
  Product(
      id: 3,
      title: 'Ladies Bag',
      image: 'Images/menshirt.jpg',
      newprice: 90,
      oldprice: 110,
      size: 'Extra large(XL)'),
  Product(
      id: 4,
      title: 'Men_shirt',
      image: 'Images/lbag.jpg',
      newprice: 70,
      oldprice: 90,
      size: 'Extra large(XL)'),
  Product(
      id: 5,
      title: 'Men_shirt',
      image: 'Images/tshirt.webp',
      newprice: 50,
      oldprice: 60,
      size: 'Extra large(XL)'),
  Product(
      id: 6,
      title: 'Men_shirt',
      image: 'Images/bag.jpg',
      newprice: 40,
      oldprice: 65,
      size: ' Large(L)'),
];