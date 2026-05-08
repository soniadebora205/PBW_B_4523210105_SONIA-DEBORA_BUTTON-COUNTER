import 'package:flutter/material.dart';

class Tugas2Page extends StatefulWidget {
  const Tugas2Page({super.key});

  @override
  State<Tugas2Page> createState() => _Tugas2PageState();
}

class _Tugas2PageState extends State<Tugas2Page> {
  int _counter = 0;

  void _tambahCounter() {
    setState(() {
      _counter++; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBCC1B4),
      body: Center(
        child: Container(
          width: 250,
          height: 400,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$_counter',
                style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: 50),
              
              // BUTTON PLUS-nya
              SizedBox(
                width: 60,
                height: 60,
                child: ElevatedButton(
                  onPressed: _tambahCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE7A372),
                    foregroundColor: const Color(0xFF411E19),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: const Icon(Icons.add, size: 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}