class merch{
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;

  merch({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
  });
}

final List<merch> listmerch = [
  merch(
    id: 1,
    name: '',
    price: '',
    imageUrl: 'images/image1 (2).jpg',
    isFavorite: true,
    subMenu: '',
  ),

];