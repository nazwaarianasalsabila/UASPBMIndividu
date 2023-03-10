import 'package:flutter/material.dart';

import 'package:demo/models/produk.dart';
import 'package:demo/users/card.dart';
import 'package:demo/users/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Rincian Pesanan'),
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.greenAccent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Image.network(
                        'https://www.blibli.com/friends-backend/wp-content/uploads/2022/10/B100166-Cara-Membedakan-Lightstick-NCT-Asli-dan-Palsu-Blibli.jpg',
                        fit: BoxFit.fill,
                        height: 140,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Flexible(
                      flex: 2,
                      child: SizedBox(
                        height: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'NCT Official Fanlight (Lightstick)',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'x1',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'IDR 898.000',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'Data diri',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              const SizedBox(height: 12),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Nomor Telepon',
                  labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Alamat',
                  labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Metode Pembayaran',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    Material(
                      child: RadioListTile<String>(
                        value: 'cod',
                        groupValue: '',
                        title: Row(
                          children: const [
                            Icon(Icons.payment, size: 30),
                            SizedBox(width: 12),
                            Text('Bayar di tempat'),
                          ],
                        ),
                        controlAffinity: ListTileControlAffinity.trailing,
                        onChanged: (value) {},
                      ),
                    ),
                    Material(
                      child: RadioListTile<String>(
                        value: 'dana',
                        groupValue: '',
                        title: Row(
                          children: [
                            Image.network(
                              'https://play-lh.googleusercontent.com/v0UW49SrkxIzfRRhYArIJvP456-QeKT9-1Yxk19gwJESPidGAnJS7n7_sHZe81NpX_E=s48-rw',
                              height: 30,
                            ),
                            const SizedBox(width: 12),
                            const Text('Dana'),
                          ],
                        ),
                        controlAffinity: ListTileControlAffinity.trailing,
                        onChanged: (value) {},
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                Text(
                  'IDR 888.000',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 18),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.deepPurple.shade50),
                ),
                onPressed: () {},
                child: const Text(
                  'BUAT PESANAN',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
