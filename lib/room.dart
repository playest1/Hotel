import 'package:flutter/material.dart';

class Book {
  String title;
  String writer;
  String price;
  String image;
  String description;
  String pages;
  String explain;
  List contact;
  List services;
  List rooms;
  double rating;
  String dashtext;
  String dashicons;
  String foodname;
  String foodprice;
  String foodimage;
  String carname;
  String carimage;
  String carprice;

  Book(
      {this.title,
      this.writer,
      this.price,
      this.contact,
      this.rooms,
      this.image,
      this.services,
      this.description,
      this.explain,
      this.pages,
      this.rating,
      this.dashtext,
      this.dashicons,
      this.foodname,
      this.foodprice,
      this.foodimage,
      this.carimage,
      this.carname,
      this.carprice,
});
}

List<Book> bookData = [
  Book(
      title: 'MASTERS SUITE',
      writer: 'PLAYEST CHANCE',
      price: '\$300',
      image: 'assets/room1.jpg',
      description: 'A parlour with other bedrooms',
      explain:
          'The Master\'s Suite is A parlour or living room connected to one or more bedrooms',
      pages: 'Truly Hospitable',
      rating: 4.7,
      services: [
        'Acces to Internet, Cardkeys',
        'Satellite Channels of your choice',
        '250KVA & 450KVA Generator',
        '32 & 42 Inches Plasma TV',
        'Laundary/Car Hire Services',
        'Large & Mini Hall/Bar, and Restaurant',
        'Pool, Gymnasium & Out Bar',
      ],
      contact: [
        'No. 58 Akhionbare Street, GRA, B/C.', //  Off Wesley Drive.
        'Tel: +234 8052796669', // , +234 8052796670
        'Email: admin@wesleyshotel.com', // / info@wesleyshotels.com.ng
        'Website: www.wesleyshotels.com', //  / www.wesleyshotels.com.ng'
        'Twitter: @wesleyshotels.com',
        'Facebook: @wesleys hotels',
        'Instagram: wesleys hotel',
      ],
      rooms: [
        'assets/masters1.jpg',
        'assets/masters2.jpg',
        'assets/masters3.jpg',
        'assets/masters4.jpg',
      ],
      foodimage: 'assets/food1.jpg',
      foodname: 'Fruity Red Velvet Cake',
      foodprice: '\$200',
      carname: 'GWagon G63',
      carprice: '\$1000',
      carimage: 'assets/car1.jpg',
      ),
  Book(
      title: 'MINI SUITE',
      writer: 'PLAYEST CHANCE',
      price: '\$200',
      image: 'assets/room2.jpg',
      description: 'A room with a bed and sitting area',
      explain:
          'The Mini Suite or Junior Suite is A single room with bed and a sitting area for relaxation',
      pages: 'Truly Hospitable',
      rating: 4.7,
      services: [
        'Acces to Internet, Cardkeys',
        'Satellite Channels of your choice',
        '250KVA & 450KVA Generator',
        '32 & 42 Inches Plasma TV',
        'Laundary/Car Hire Services',
        'Large & Mini Hall/Bar, and Restaurant',
        'Pool, Gymnasium & Out Bar',
      ],
      contact: [
        'No. 58 Akhionbare Street, GRA, B/C.', //  Off Wesley Drive.
        'Tel: +234 8052796669', // , +234 8052796670
        'Email: admin@wesleyshotel.com', // / info@wesleyshotels.com.ng
        'Website: www.wesleyshotels.com', //  / www.wesleyshotels.com.ng'
        'Twitter: @wesleyshotels.com',
        'Facebook: @wesleys hotels',
        'Instagram: wesleys hotel',
      ],
      rooms: [
        'assets/mini1.jpg',
        'assets/mini2.jpg',
        'assets/mini3.jpg',
        'assets/queen4.jpg',
      ],
      foodimage: 'assets/food2.jpg',
      foodname: 'Tasty Haitian Dish',
      foodprice: '\$150',
      carname: 'Royce Rolls',
      carprice: '\$1400',
      carimage: 'assets/car2.jpg'),
  Book(
      title: '2 DOUBLE ROOM',
      writer: 'PLAYEST CHANCE',
      price: '\$400',
      image: 'assets/room4.jpg',
      description: 'A room with two double beds.',
      explain:
          'The Double Double Room is A room with two double beds. May be occupied by one or more people.',
      pages: 'Truly Hospitable',
      rating: 4.7,
      services: [
        'Acces to Internet, Cardkeys',
        'Satellite Channels of your choice',
        '250KVA & 450KVA Generator',
        '32 & 42 Inches Plasma TV',
        'Laundary/Car Hire Services',
        'Large & Mini Hall/Bar, and Restaurant',
        'Pool, Gymnasium & Out Bar',
      ],
      contact: [
        'No. 58 Akhionbare Street, GRA, B/C.', //  Off Wesley Drive.
        'Tel: +234 8052796669', // , +234 8052796670
        'Email: admin@wesleyshotel.com', // / info@wesleyshotels.com.ng
        'Website: www.wesleyshotels.com', //  / www.wesleyshotels.com.ng'
        'Twitter: @wesleyshotels.com',
        'Facebook: @wesleys hotels',
        'Instagram: wesleys hotel',
      ],
      rooms: [
        'assets/queen2.jpg',
        'assets/king1.jpg',
        'assets/queen4.jpg',
        'assets/king4.jpg',
      ],
      foodimage: 'assets/food3.jpg',
      foodname: 'Fries and Burgers',
      foodprice: '\$200',
      carname: 'Audi R8',
      carprice: '\$1000',
      carimage: 'assets/car3.jpg'),
  Book(
      title: 'QUEENS ROOM',
      writer: 'PLAYEST CHANCE',
      price: '\$500',
      image: 'assets/room5.jpg',
      description: 'A room with a Queen-sized bed',
      explain:
          'The Queen\'s room is A room with a Queen-sized bed. May be occupied by one or more people.',
      pages: 'Truly Hospitable',
      rating: 4.7,
      services: [
        'Acces to Internet, Cardkeys',
        'Satellite Channels of your choice',
        '250KVA & 450KVA Generator',
        '32 & 42 Inches Plasma TV',
        'Laundary/Car Hire Services',
        'Large & Mini Hall/Bar, and Restaurant',
        'Pool, Gymnasium & Out Bar',
      ],
      contact: [
        'No. 58 Akhionbare Street, GRA, B/C.', //  Off Wesley Drive.
        'Tel: +234 8052796669', // , +234 8052796670
        'Email: admin@wesleyshotel.com', // / info@wesleyshotels.com.ng
        'Website: www.wesleyshotels.com', //  / www.wesleyshotels.com.ng'
        'Twitter: @wesleyshotels.com',
        'Facebook: @wesleys hotels',
        'Instagram: wesleys hotel',
      ],
      rooms: [
        'assets/queen1.jpg',
        'assets/queen2.jpg',
        'assets/queen3.jpg',
        'assets/queen4.jpg',
      ],
      foodimage: 'assets/food4.jpg',
      foodname: 'Cheezus Pizza',
      foodprice: '\$100',
      carname: 'Lamborghini Huracan',
      carprice: '\$1000',
      carimage: 'assets/car4.jpg'),
  Book(
      title: 'KINGS ROOM',
      writer: 'PLAYEST CHANCE',
      price: '\$600',
      image: 'assets/room6.jpg',
      description: 'A room with a King-sized bed',
      explain:
          'The King\'s room is A room with a King-sized bed. May be occupied by one or more people.',
      pages: 'Truly Hospitable',
      rating: 4.7,
      services: [
        'Acces to Internet, Cardkeys',
        'Satellite Channels of your choice',
        '250KVA & 450KVA Generator',
        '32 & 42 Inches Plasma TV',
        'Laundary/Car Hire Services',
        'Large & Mini Hall/Bar, and Restaurant',
        'Pool, Gymnasium & Out Bar',
      ],
      contact: [
        'No. 58 Akhionbare Street, GRA, B/C.', //  Off Wesley Drive.
        'Tel: +234 8052796669', // , +234 8052796670
        'Email: admin@wesleyshotel.com', // / info@wesleyshotels.com.ng
        'Website: www.wesleyshotels.com', //  / www.wesleyshotels.com.ng'
        'Twitter: @wesleyshotels.com',
        'Facebook: @wesleys hotels',
        'Instagram: wesleys hotel',
      ],
      rooms: [
        'assets/king1.jpg',
        'assets/king2.jpg',
        'assets/king3.jpg',
        'assets/king4.jpg',
      ],
      foodimage: 'assets/food5.jpg',
      foodname: 'Viet grilled Chicken',
      foodprice: '\$90',
      carname: 'Lexus 2019',
      carprice: '\$1000',
      carimage: 'assets/car5.jpg'),
  Book(
      title: 'QUADS ROOM',
      writer: 'PLAYEST CHANCE',
      price: '\$500',
      image: 'assets/room1.jpg',
      description: 'A room assigned to four people',
      explain:
          'The Quad\'s room is A room assigned to four people. May have two or more beds.',
      pages: 'Truly Hospitable',
      rating: 4.7,
      services: [
        'Acces to Internet, Cardkeys',
        'Satellite Channels of your choice',
        '250KVA & 450KVA Generator',
        '32 & 42 Inches Plasma TV',
        'Laundary/Car Hire Services',
        'Large & Mini Hall/Bar, and Restaurant',
        'Pool, Gymnasium & Out Bar',
      ],
      contact: [
        'No. 58 Akhionbare Street, GRA, B/C.', //  Off Wesley Drive.
        'Tel: +234 8052796669', // , +234 8052796670
        'Email: admin@wesleyshotel.com', // / info@wesleyshotels.com.ng
        'Website: www.wesleyshotels.com', //  / www.wesleyshotels.com.ng'
        'Twitter: @wesleyshotels.com',
        'Facebook: @wesleys hotels',
        'Instagram: wesleys hotel',
      ],
      rooms: [
        'assets/quad1.jpg',
        'assets/quad2.jpg',
        'assets/quad3.jpg',
        'assets/quad4.jpg',
      ],
      foodimage: 'assets/food6.jpg',
      foodname: 'Salmon Pokè',
      foodprice: '\$100',
      carname: 'Bugatti Chiron',
      carprice: '\$900',
      carimage: 'assets/car6.jpg'),
  Book(
      title: 'TWINS ROOM',
      writer: 'PLAYEST CHANCE',
      price: '\$400',
      image: 'assets/room3.jpg',
      description: 'A room with two beds',
      explain:
          'The Twin\'s room is A room with two beds. It may be occupied by one or more people',
      pages: 'Truly Hospitable',
      rating: 4.7,
      services: [
        'Acces to Internet, Cardkeys',
        'Satellite Channels of your choice',
        '250KVA & 450KVA Generator',
        '32 & 42 Inches Plasma TV',
        'Laundary/Car Hire Services',
        'Large & Mini Hall/Bar, and Restaurant',
        'Pool, Gymnasium & Out Bar',
      ],
      contact: [
        'No. 58 Akhionbare Street, GRA, B/C.', //  Off Wesley Drive.
        'Tel: +234 8052796669', // , +234 8052796670
        'Email: admin@wesleyshotel.com', // / info@wesleyshotels.com.ng
        'Website: www.wesleyshotels.com', //  / www.wesleyshotels.com.ng'
        'Twitter: @wesleyshotels.com',
        'Facebook: @wesleys hotels',
        'Instagram: wesleys hotel',
      ],
      rooms: [
        'assets/twins1.jpg',
        'assets/mini1.jpg',
        'assets/masters1.jpg',
        'assets/king3.jpg',
      ],
      foodimage: 'assets/food7.jpg',
      foodname: 'Beef, Broccoli & Chicken',
      foodprice: '\$100',
      carname: 'Audi RS7',
      carprice: '\$1000',
      carimage: 'assets/car7.jpg'),
  Book(
      title: 'STUDIO',
      writer: 'PLAYEST CHANCE',
      price: '\$450',
      image: 'assets/room6.jpg',
      description: 'A room with a studio bed',
      explain:
          'The Studio\'s room is A room with a studio bed - A couch that can be converted into a bed.',
      pages: 'Truly Hospitable',
      rating: 4.7,
      services: [
        'Acces to Internet, Cardkeys',
        'Satellite Channels of your choice',
        '250KVA & 450KVA Generator',
        '32 & 42 Inches Plasma TV',
        'Laundary/Car Hire Services',
        'Large & Mini Hall/Bar, and Restaurant',
        'Pool, Gymnasium & Out Bar',
      ],
      foodimage: 'assets/food8.jpg',
      foodname: 'Nutella Banana Berry Pancakes',
      foodprice: '\$110',
      carname: 'Benz E350',
      carprice: '\$500',
      carimage: 'assets/car8.jpg'),
  Book(
      title: 'SINGLE ROOM',
      writer: 'PLAYEST CHANCE',
      price: '\$150',
      image: 'assets/room5.jpg',
      description: 'A room assigned to one person',
      explain:
          'The Single\'s room is A room assigned to one person. It may have one or more beds.',
      pages: 'Truly Hospitable',
      rating: 4.7,
      services: [
        'Acces to Internet, Cardkeys',
        'Satellite Channels of your choice',
        '250KVA & 450KVA Generator',
        '32 & 42 Inches Plasma TV',
        'Laundary/Car Hire Services',
        'Large & Mini Hall/Bar, and Restaurant',
        'Pool, Gymnasium & Out Bar',
      ],
      foodimage: 'assets/food9.jpg',
      foodname: 'Lobster Spaghetti',
      foodprice: '\$80',
      carname: 'GWagon',
      carprice: '\$800',
      carimage: 'assets/car9.jpg'),
  Book(
      title: 'DOUBLE ROOM',
      writer: 'PLAYEST CHANCE',
      price: '\$200',
      image: 'assets/room4.jpg',
      description: 'A room assigned to two people',
      explain:
          'The Double\'s room is A room assigned to two people. It may have one or more beds.',
      pages: 'Truly Hospitable',
      rating: 4.7,
      services: [
        'Acces to Internet, Cardkeys',
        'Satellite Channels of your choice',
        '250KVA & 450KVA Generator',
        '32 & 42 Inches Plasma TV',
        'Laundary/Car Hire Services',
        'Large & Mini Hall/Bar, and Restaurant',
        'Pool, Gymnasium & Out Bar',
      ],
      foodimage: 'assets/food10.jpg',
      foodname: 'Craving Hot Chicken',
      foodprice: '\$100',
      carname: 'Ferrari',
      carprice: '\$900',
      carimage: 'assets/car10.jpg'),
  Book(
      title: 'TRIPLE ROOM',
      writer: 'PLAYEST CHANCE',
      price: '\$250',
      image: 'assets/room1.jpg',
      description: 'A room assigned to three people',
      explain:
          'The Triple\'s room is A room assigned to three people. It may have two to more beds',
      pages: 'Truly Hospitable',
      rating: 4.7,
      services: [
        'Acces to Internet, Cardkeys',
        'Satellite Channels of your choice',
        '250KVA & 450KVA Generator',
        '32 & 42 Inches Plasma TV',
        'Laundary/Car Hire Services',
        'Large & Mini Hall/Bar, and Restaurant',
        'Pool, Gymnasium & Out Bar',
      ],
      foodimage: 'assets/food1.jpg',
      foodname: 'Fruity Red Velvet Cake',
      foodprice: '\$150',
      carname: 'Mercedes-AMG C63 S',
      carprice: '\$900',
      carimage: 'assets/car11.jpg'),
];
