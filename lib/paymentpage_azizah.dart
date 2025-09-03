import 'package:flutter/material.dart';

void main () => runApp(PaymentPageNur()); //object

class PaymentPageNur extends StatelessWidget{
  const PaymentPageNur ({super.key}); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Metode Pembayaran',
      home: PaymentMethodScreen(), //object
      debugShowCheckedModeBanner: false,
    );
  }
}

class PaymentMethodScreen extends StatefulWidget{
  const PaymentMethodScreen ({super.key}); //constructor
  
  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State <PaymentMethodScreen> {
  final Color redColor = Colors.red;
  int selectedMethod = -1;

 void _handleRadioValueChange(int? value) {
     setState(() {
      selectedMethod = value!;
    });
}

@override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Metode Pembayaran', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey, width: 1.2),
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(
              'Combo OMG! 6.5 GB', 
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              '4.5 GB Internet + 2 GB OMG! + 60 SMS Tsel + 100 Mins Voice Tsel',
            style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon (Icons.warning_amber, color: Colors.red, size: 16),
                SizedBox(width: 4),
                Text(
                  'Masa Aktif 30 hari',
                  style: TextStyle(color: Colors.red,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
              ],
            ),
            ),
            
            Text(
              'Pembayaran di MyTelkomsel',
               style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/BankCard.png', 
                        height: 24),
                        SizedBox(width: 8),
                        Text('Pulsa'),
                      ],
                     ),
                      SizedBox(height: 4),
                      Text('Rp12.000'),
                    ],
                  ),
                  value: 0,
                  groupValue: selectedMethod, 
                  onChanged: _handleRadioValueChange,
            ),
            RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/LinkAja.png',
                        height: 24),
                        SizedBox(width: 8),
                        Text('LinkAja'),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text('Rp76.200'),
                ],
              ),
              value: 1,
              groupValue: selectedMethod, 
              onChanged: _handleRadioValueChange,
            ),

            SizedBox(height: 16),
            Text('E-Wallet', style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/GoPay.png',
                        height: 24),
                        SizedBox(width: 8),
                        Text('GoPay'),
                       ],
                      )
                    ],
                  ),
                  value: 2,
                  groupValue: selectedMethod, 
                  onChanged: _handleRadioValueChange,
            ),
            RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/OVO.png',
                        height: 24),
                        SizedBox(width: 8),
                        Text('OVO'),
                    ],
                      )
                    ],
                  ),
                  value: 3,
                  groupValue: selectedMethod, 
                  onChanged: _handleRadioValueChange,
            ),
            RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/LinkAja.png',
                        height: 24),
                        SizedBox(width: 8),
                        Text('LinkAja'),
                    ],
                      ),
                    ],
                  ),
                  value: 4,
                  groupValue: selectedMethod, 
                  onChanged: _handleRadioValueChange,
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Pembayaran', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Rp61.000', style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedMethod == -1){
                    ScaffoldMessenger.of(context).
                    showSnackBar(
                      SnackBar (content: Text('Silahkan pilih metode pembayaran')),
              );
  }else {
    String metode = "";
    switch (selectedMethod){
      case 0:
      metode = 'Pulsa';
      break;
      case 1:
      case 4:
      metode = 'LinkAja';
      break;
      case 2:
      metode = 'GoPay';
      break;
      case 3:
      metode = 'OVO';
      break;
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
    Text('Kamu memilih : $metode')),
    );
  }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  ),
                  child: Text (
                    'KONFRIMASI DAN BAYAR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  ),
                  ),
                  ),
                  ],
                  ),
                  ),
                   ),
                  );
                }
           }