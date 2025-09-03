import 'package:flutter/material.dart';

class HomepageNur extends StatelessWidget{
  const HomepageNur ({super.key}); //constructor

  @override
  Widget build (BuildContext context){
    return Scaffold( 
      appBar: AppBar( 
        centerTitle: false,
        title: RichText( 
          text: const TextSpan(
            text: 'Hai, ',
            style: TextStyle(color: Colors.white, fontSize: 18),
            children: [
              TextSpan(
                text: 'Muhammad',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )
              )
            ]
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.qr_code_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Color(0xFFEC2820),//object
        elevation: 0,
      ),
      body: SingleChildScrollView( //object
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: ClipPathClass(),
                  child: Container(
                    height: 160,
                    color: const Color(0xFFEC2028),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 335,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/rectangle.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '081290112333',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  letterSpacing: 2.0,
                                ),
                              ),
                              Image.asset(
                                'assets/icons/simpati.png',
                                height: 20,
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sisa Pulsa Anda',
                                    style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Rp34.000',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(content: Text('Menu isi Pulsa ditekan')),
                                      );
                                    },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFCC00),
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 4,
                                            offset: Offset(0, 2),
                                          )
                                        ]
                                      ),
                                      child: const Text(
                                        'Isi Pulsa',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                   ],
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    children: const [
                                      Text(
                                        'Berlaku sampai  ',
                                        style: TextStyle(
                                          color: Colors.white70, fontSize: 12),
                                        ),
                                        Text(
                                          '19 April 2020',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                          ),
                                         ],
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            const Text(
                                              'Telkomsel POIN',
                                              style: TextStyle(
                                                color: Colors.white70, fontSize: 12),
                                              ),

                                              Container(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 6, vertical: 2),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFFCC00),
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                  child: const Text(
                                                    '172',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                              )
                                             ],
                                            )
                                           ),
                                           SizedBox(height: 5),
                                           Transform.translate(
                                            offset: const Offset (0, 20),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                infoBox(title: 'Internet', value: '12.19', unit: 'GB'),
                                                const SizedBox(width: 5),
                                                infoBox(title: 'Telepon', value: '0', unit: 'Min'),
                                                const SizedBox(width: 5),
                                                infoBox(title: 'SMS', value : '23', unit: 'SMS'),
                                              ],
                                            ),
                                           ),

                                           const SizedBox(height: 50),

                                           const Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: const [
                                                Text(
                                                'Kategori Paket',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              ],
                                            ),
                                           ),
                                          ],
                                        )
                                      ],
                                      ),
                                      SizedBox(height: 60),
                                      _buildKategoriPaket(),
                                      const SizedBox(height: 60),

                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text(
                                              'Terbaru dari Telkomsel',
                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                                'Lihat Semua',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                            ),
                                          ],
                                        ),
                                      ),
                                            SizedBox(height: 20),
                                            Image.asset(
                                              'assets/images/Internet OMG.png',
                                              width: double.infinity),
                                              const SizedBox(height: 20),
                                              Image.asset(
                                                'assets/images/Undian Ketengan.png',
                                                width: double.infinity),
                                                const SizedBox(height: 20),
                                                ],
                                              ),
                                            ),
                                        bottomNavigationBar: BottomNavigationBar(
                                        type: BottomNavigationBarType.fixed,
                                        selectedItemColor: Colors.red,
                                        unselectedItemColor: Colors.grey[600],
                                        currentIndex: 0,
                                        onTap: (index){
                                        },
                                        items: const [
                                          BottomNavigationBarItem(
                                            icon: Icon(Icons.home),
                                            label: 'Beranda',
                                          ),
                                          BottomNavigationBarItem(
                                            icon: Icon(Icons.history),
                                            label: 'Riwayat',
                                          ),
                                          BottomNavigationBarItem(
                                            icon: Icon(Icons.help_outline),
                                            label: 'Bantuan',
                                          ),
                                          BottomNavigationBarItem(
                                            icon: Icon(Icons.mail_outline),
                                            label: 'Inbox',
                                          ),
                                          BottomNavigationBarItem(
                                            icon: Icon(Icons.person_outline),
                                            label: 'Akun Saya',
                                         ),
                                        ],
                                      ),
                                     );
                                    }

                                    Widget infoBox({
                                      required String title,
                                      required String value,
                                      required String unit,
                                    }){
                                      return Container(
                                        padding: const EdgeInsets.all(12),
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 8,
                                              offset: Offset(0, 2),
                                            )
                                          ]
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              title,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 12),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  value,
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(width: 4),
                                                Text(
                                                  unit,
                                                  style: const TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    }

                                    Widget _buildKategoriPaket(){
                                      List <Map<String, dynamic>> items = [
                                        {'Icon': 'assets/icons/internet.png', 'label': 'Internet'},
                                        {'Icon': 'assets/icons/telpon.png', 'label': 'Telpon'},
                                        {'Icon': 'assets/icons/sms.png', 'label': 'SMS'},
                                        {'Icon': 'assets/icons/roaming.png', 'label': 'Roaming'},
                                        {'Icon': 'assets/icons/hiburan.png', 'label': 'Hiburan'},
                                        {'Icon': 'assets/icons/unggulan.png', 'label': 'Unggulan'},
                                        {'Icon': 'assets/icons/tersimpan.png', 'label': 'Tersimpan'},
                                        {'Icon': 'assets/icons/riwayat.png', 'label': 'Riwayat'},
                                      ];
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        child: GridView.builder(
                                          shrinkWrap: true,
                                          physics: const NeverScrollableScrollPhysics(),
                                          itemCount: items.length,
                                          gridDelegate: const
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4,
                                            childAspectRatio: 0.75,
                                            crossAxisSpacing: 8,
                                            mainAxisSpacing: 8,
                                            ),
                                            itemBuilder: (context, index) {
                                              final item = items[index];
                                              return Column(
                                                children: [
                                                  Image.asset(
                                                    item ['Icon'],
                                                    width: 40,
                                                    height: 40,
                                                  ),
                                                  const SizedBox(height: 6),
                                                  Text(
                                                    item ['label'],
                                                    style: const TextStyle(fontSize: 12),
                                                  )
                                                ],
                                              );
                                            },
                                         ),
                                        );
                                      }
                                    }

                                    class ClipPathClass extends CustomClipper<Path>{
                                      @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> 
  oldClipper) => false;
}