import 'package:flutter/material.dart';

class RegisterpageAzizah extends StatefulWidget { //constructor
  @override
  _RegisterPageAzizahState createState() => _RegisterPageAzizahState();
}

class _RegisterPageAzizahState extends State<RegisterpageAzizah> {
  final    _formkey = GlobalKey<FormState>(); //objek dari globalKey
  final TextEditingController _phonecontroller = TextEditingController(); //objek controller

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) { //object
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formkey, 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Center(
                  child: Image.asset(
                    'assets/icons/layanan.png',
                    height: 200,
                  ),
                ),
                SizedBox(height: 23),
                Text(
                  'Silahkan masuk dengan nomor\nTelkomsel kamu',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Text(
                  'Nomor HP',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: _phonecontroller, //objek TextFormField
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Nomor tidak valid';
                    }
                    return null;
                  }
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked, 
                      onChanged: (value) { //objek checkbox
                        setState (() {
                          _isChecked = value!;
                        });
                      },
                    ),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          text: 'Saya Menyetujui',
                          children: [
                            TextSpan(
                              text: ' Syarat, ketentuan',
                              style: TextStyle(color: Colors.red),
                            ),
                            TextSpan(
                              text: ' dan',
                            ),
                            TextSpan(
                              text: ' Privasi Telkomsel',
                              style: TextStyle(color: Colors.red),
                            )
                          ]
                        )
                      )
                    )
                  ],
                ),
                SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )
                    ),
                    onPressed: (){ 
                      if (_formkey.currentState!.validate()){
                        if (!_isChecked){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Silahkan menyetujui syarat dan ketentuan')),
                          );
                          return;
                        }
                      }
                    },
                    child: Text(
                      'MASUK',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Center(child: Text('Atau masuk menggunakan')),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          print('Login dengan Facebook');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                      child:  Image.asset(
                      'assets/images/facebook.png',
                      width: 100,
                      height: 35,
                      fit: BoxFit.contain,
                     ),
                    ),
                  ),
                ),
                    SizedBox(width: 12),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          print('Login dengan Twitter');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                      child: Image.asset(
                      'assets/images/twitter.png',
                      width: 100,
                      height: 35,
                      fit: BoxFit.contain,
                     ),
                    ),
                   ),
                   ),
                  ],
                ),
              ],
            ),
          ),
        )
      ),
    ),
  );
  }
}