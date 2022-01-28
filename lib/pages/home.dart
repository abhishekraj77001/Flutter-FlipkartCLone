import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flipkart_clone/models/CategoryMenu.dart';
import 'package:flutter_flipkart_clone/models/Product.dart';

class Home extends StatefulWidget {
  // const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryMenu> categoryMenuList = [
    CategoryMenu('All Category', 'allcategory.png'),
    CategoryMenu("Electronics", 'electronics.png'),
    CategoryMenu("Grocery", 'grocery.png'),
    CategoryMenu('Fashion', 'fashion.png'),
    CategoryMenu("Mobiles", 'mobile.png'),
    CategoryMenu("Sports", 'sports.png'),
    CategoryMenu("Beauty", 'beauty.png')
  ];

  List<Product> productList=[
    Product(1, 'https://drive.google.com/uc?export=view&id=1B6X0v593wy8303jJTDQyDivlqnzLUXJV','jacket', 'color', 'price', 'devliveryType'),
    Product(2, 'https://drive.google.com/uc?export=view&id=1B6X0v593wy8303jJTDQyDivlqnzLUXJV','saree', 'color', 'price', 'devliveryType'),
    Product(3, 'https://drive.google.com/uc?export=view&id=1B6X0v593wy8303jJTDQyDivlqnzLUXJV','jac', 'color', 'price', 'devliveryType'),
    Product(1, 'https://drive.google.com/uc?export=view&id=1B6X0v593wy8303jJTDQyDivlqnzLUXJV','valvel', 'color', 'price', 'devliveryType'),
    Product(2, 'https://drive.google.com/uc?export=view&id=1B6X0v593wy8303jJTDQyDivlqnzLUXJV','bnarsisaree', 'color', 'price', 'devliveryType'),
    //Product(3, 'https://drive.google.com/uc?export=view&id=1B6X0v593wy8303jJTDQyDivlqnzLUXJV','gg', 'color', 'price', 'devliveryType'),

  ];

  late List<Widget> catList = [];

  int productIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flipkart'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(35.0),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    // color: Colors.white,
                    height: 40.0,
                    child: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        print('icon clicke');
                        Navigator.pushNamed(context, '/search');
                      },
                    ),
                    //padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      height: 40.0,
                      // minWidth: double.infinity,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                      textColor: Colors.grey,
                      child: Text("Search for Products, Brands and More"),
                      onPressed: () {
                        print('button clicke');
                        Navigator.pushNamed(context, '/search');
                      },

                      // splashColor: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            )),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
                height: 100.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.home),
                        onPressed: () {},
                        color: Colors.black38,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Home"),
                      SizedBox(
                        width: 140.0,
                      ),
                      Image.asset(
                        "images/flipkart_icon.png",
                        height: 25.0,
                      ),
                    ],
                  ),
                )),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: const Text("My Orders"),
              onTap: () {},
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: const Text("My Cart"),
              onTap: () {},
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: const Text("My Wishlist"),
              onTap: () {},
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: const Text("My Account"),
              onTap: () {},
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category Menu
              Container(
                //color: Colors.grey,
                height: 80.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryMenuList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 85.0,
                        height: 10.0,
                        // color: Colors.cyan,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    'images/${categoryMenuList[index].image}'),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                categoryMenuList[index].name,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  //letterSpacing: 2.0
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              //Product Catalog
              Container(
                //color: Colors.grey,
                height: 400.0,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: productList.length~/2,
                    itemBuilder: (context, index) {
                      index!=0?productIndex=productIndex+2:productIndex=0;
                      return Row(
                        children: [
                          if (index==0) ...[
                            getProductCategoryWidget(productList[productIndex]),
                            getProductCategoryWidget(productList[productIndex+1])
                          ]
                          else ...[
                            getProductCategoryWidget(productList[productIndex]),
                            productList.length!=index? getProductCategoryWidget(productList[productIndex+1]):Container()
                          ]


                        ],

                      );

                    }),
              ),


            ],
          ),
        ],
      ),
    );
  }

  Widget buildProductCategoryMenu(String name, String image) => Container(
        width: 80.0,
        height: 10.0,
        color: Colors.cyan,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/$image'),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  //letterSpacing: 2.0
                ),
              )
            ],
          ),
        ),
      );

  Widget getProductCategoryWidget(Product product)
  {
    return Container(
      height: 270,
      width: (MediaQuery.of(context).size.width)/2,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

              children: [
                SizedBox(
                  height: 5,
                ),
                Image.network(
                 // 'https://drive.google.com/uc?export=view&id=1B6X0v593wy8303jJTDQyDivlqnzLUXJV',
                  product.image,
                  height: 170,
                  width: 170,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  product.name,
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  product.color,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  product.price,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  product.devliveryType,
                  style: TextStyle(
                    color: Colors.black,
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
