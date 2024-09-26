import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/driver_provider.dart';

class DriverLicenseScreen extends StatefulWidget {
  const DriverLicenseScreen({super.key});

  @override
  State<DriverLicenseScreen> createState() => _DriverLicenseScreenState();
}

class _DriverLicenseScreenState extends State<DriverLicenseScreen> {
  final TextEditingController _editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Eligibility Screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // circle indicator
            Consumer<DriverProvider>(
              builder: (BuildContext context, DriverProvider provider,
                      Widget? child) =>
                  CircleAvatar(
                backgroundColor: provider.isEligible == null
                    ? Colors.orange
                    : provider.isEligible!
                        ? Colors.green
                        : Colors.red, // red (is illegible), green (is eligible)
                radius: 30,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: _editingController,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
              cursorColor: Colors.black,
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Provider.of<DriverProvider>(context, listen: false)
                    .checkEligible(_editingController.text);
              },
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(Colors.black),
                fixedSize: WidgetStatePropertyAll(
                  Size(
                    MediaQuery.sizeOf(context).width,
                    55,
                  ),
                ),
              ),
              child: const Text(
                'Check Eligibility Status',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Change Notifier

// Change Notifier Provider

// Consumer