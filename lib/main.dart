import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyApp1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  List image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDhFnukBWAAnguOdoiQ5hJDrh7cgq430HBKg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvBRLUWKFRYrpOaracntl7fKP-XkahiyNZ1A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzR-9SiMnhXYbSvjHHkRKttjLVFTshRZ9gZw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8FPkQdACXNET7Xl13Kd6XefVG-2UkEphZzQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv30AMYOejVZgrq1UmY7SKHJ44xkvoKLL1s8eJpEoB1zh0KyzRJHR8G1igi_I-oz0vaAE&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNKuOGj47K4oeEs10uCkmaZFPj09zgFJYnIUlLlA4IL8FTK-SKgQ0Y-PcSZSzAnz4HaYw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0n7W8SMRw5nLkaSo9Kdnr7aeBrSOQygiemQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXJmH1eoc2IUpXkQMjPEKI4I2Y0Bwc4-XhVA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp09TOo_tTgEpgVyMKbGskOuGTwHQO565xqA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWu0-xLVakG6MAmzRGiF3s_pOpJML3mrTRcw&usqp=CAU'
  ];

  List text = [
    '2023',
    '2022',
    '2021',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014',
    '2013'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.share,
              color: Colors.blueGrey,
              size: 30,
            ),
          ),
        ],
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.blueGrey,
          size: 30,
        ),
        backgroundColor: Colors.white,
      ),
      body: DefaultTabController(
        length: 2,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.blueGrey,
                          backgroundImage: NetworkImage(
                              'https://w0.peakpx.com/wallpaper/837/919/HD-wallpaper-ms-dhoni-msd.jpg'),
                        ),
                        InkWell(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.purple,
                            child: Icon(Icons.edit),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'M.S.Dhoni',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        '112',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'Posts',
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                              color: Colors.blueGrey,
                            ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      children: [
                        Text(
                          '1.2k',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          'Followers',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(color: Colors.blueGrey),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      children: [
                        Text(
                          '316',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          'Following',
                          style:
                              Theme.of(context).textTheme.subtitle1?.copyWith(
                                    color: Colors.blueGrey,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60, left: 60),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)),
                  height: 50,
                  width: MediaQuery.of(context).size.height,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Follow',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                child: const TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'Posts',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Likes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: image.length,
                      itemBuilder: (BuildContext context, index) {
                        return InkWell(
                          onTap: () {
                            alertmsg(context, index, img: image, title: text);
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(image[index]),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                text[index],
                                style: TextStyle(fontSize: 25.0),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                        itemCount: image.length,
                        itemBuilder: (BuildContext context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(image[index]),
                            ),
                            title: Text(
                              text[index],
                              style: TextStyle(fontSize: 25),
                            ),
                            subtitle: Text(
                              'Liked by 2.2k ',
                              style: TextStyle(fontSize: 20),
                            ),
                            onTap: () {
                              alertmsg(context, index,
                                  img: image[index], title: text[index]);
                            },
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void alertmsg(BuildContext context, int index,
      {required img, required title}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Container(
              child: Image.network(
                image[index],
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 50,
                  ))
            ],
          );
        });
  }
}
