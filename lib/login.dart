import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode? _focusNode;
  bool _loggingIn = false;
  TextEditingController? _passwordController;
  TextEditingController? _usernameController;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _passwordController = TextEditingController(text: 'Qawsed1-');
    _usernameController = TextEditingController(text: '');
  }

  void _login() async {
    FocusScope.of(context).unfocus();

    setState(() {
      _loggingIn = true;
    });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _usernameController!.text,
        password: _passwordController!.text,
      );
      if (!mounted) return;
      Navigator.of(context).pop();
    } catch (e) {
      setState(() {
        _loggingIn = false;
      });

      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
          content: Text(
            e.toString(),
          ),
          title: const Text('Error'),
        ),
      );
    }
  }

  @override
  void dispose() {
    _focusNode?.dispose();
    _passwordController?.dispose();
    _usernameController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
            child: Column(
              children: [
                Image.asset(
                  'logo.jpeg', // Replace with your image asset path
                  height: 150,
                  width: 150,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity, // Menentukan form sepanjang lebar
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    autocorrect: false,
                    autofocus: true,
                    controller: _usernameController,
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.none,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                // TextField(
                //   autocorrect: false,
                //   autofillHints: _loggingIn ? null : [AutofillHints.email],
                //   autofocus: true,
                //   controller: _usernameController,
                //   decoration: InputDecoration(
                //     border: const OutlineInputBorder(
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(8),
                //       ),
                //     ),
                //     labelText: 'Email',
                //     suffixIcon: IconButton(
                //       icon: const Icon(Icons.cancel),
                //       onPressed: () => _usernameController?.clear(),
                //     ),
                //   ),
                //   keyboardType: TextInputType.emailAddress,
                //   onEditingComplete: () {
                //     _focusNode?.requestFocus();
                //   },
                //   readOnly: _loggingIn,
                //   textCapitalization: TextCapitalization.none,
                //   textInputAction: TextInputAction.next,
                // ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity, // Menentukan form sepanjang lebar
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    autocorrect: false,
                    controller: _passwordController,
                    obscureText: true,
                    textCapitalization: TextCapitalization.none,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.symmetric(vertical: 8),
                //   child: TextField(
                //     autocorrect: false,
                //     autofillHints: _loggingIn ? null : [AutofillHints.password],
                //     controller: _passwordController,
                //     decoration: InputDecoration(
                //       border: const OutlineInputBorder(
                //         borderRadius: BorderRadius.all(
                //           Radius.circular(8),
                //         ),
                //       ),
                //       labelText: 'Password',
                //       suffixIcon: IconButton(
                //         icon: const Icon(Icons.cancel),
                //         onPressed: () => _passwordController?.clear(),
                //       ),
                //     ),
                //     focusNode: _focusNode,
                //     keyboardType: TextInputType.emailAddress,
                //     obscureText: true,
                //     onEditingComplete: _login,
                //     textCapitalization: TextCapitalization.none,
                //     textInputAction: TextInputAction.done,
                //   ),
                // ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      // Handle the "Lupa Password" action here
                      // For example, you can show a dialog or navigate to a password recovery screen.
                    },
                    child: Text(
                      'Lupa Password',
                      style: TextStyle(
                        color: Color(0xFF53DB71),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _loggingIn ? null : _login,
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF53DB71),
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 24,
                      ),
                    ),
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                // TextButton(
                //   onPressed: _loggingIn ? null : _login,
                //   child: const Text('Login'),
                // ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xBBBCBCBC),
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'atau masuk dengan',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xBBBCBCBC),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xBBBCBCBC),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity, // Menentukan tombol sepanjang lebar
                  child: ElevatedButton(
                    onPressed: _loggingIn
                        ? null
                        : () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const RegisterPage(),
                              ),
                            );
                          },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF0F0F0), // Warna abu-abu
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical:
                            20, // Sesuaikan dengan ukuran vertikal yang diinginkan
                        horizontal:
                            24, // Sesuaikan dengan ukuran horizontal yang diinginkan
                      ),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                // TextButton(
                //   onPressed: _loggingIn
                //       ? null
                //       : () {
                //           Navigator.of(context).push(
                //             MaterialPageRoute(
                //               builder: (context) => const RegisterPage(),
                //             ),
                //           );
                //         },
                //   child: const Text('Register'),
                // ),
              ],
            ),
          ),
        ),
      );
}
