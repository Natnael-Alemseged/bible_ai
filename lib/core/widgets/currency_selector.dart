import 'package:flutter/material.dart';

class CurrencySelectorDialog {
  static Future<String?> showCurrencyDialog(BuildContext context) async {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text(
            'Select Currency',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(0, 12.0, 0, 16.0),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          children: <Widget>[
            SizedBox(
              height: 400,
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Prominent currencies (US, UK, Euro)
                    _buildCurrencyOption(
                        context, 'USD', 'US Dollar', Icons.attach_money),
                    _buildCurrencyOption(
                        context, 'GBP', 'British Pound', Icons.currency_pound),
                    _buildCurrencyOption(context, 'EUR', 'Euro', Icons.euro),
                    // African currencies
                    _buildCurrencyOption(
                        context, 'ZAR', 'South African Rand', Icons.money),
                    _buildCurrencyOption(
                        context, 'NGN', 'Nigerian Naira', Icons.money),
                    _buildCurrencyOption(
                        context, 'KES', 'Kenyan Shilling', Icons.money),
                    _buildCurrencyOption(
                        context, 'GHS', 'Ghanaian Cedi', Icons.money),
                    _buildCurrencyOption(
                        context, 'EGP', 'Egyptian Pound', Icons.money),
                    _buildCurrencyOption(
                        context, 'DZD', 'Algerian Dinar', Icons.money),
                    _buildCurrencyOption(
                        context, 'MAD', 'Moroccan Dirham', Icons.money),
                    _buildCurrencyOption(
                        context, 'AOA', 'Angolan Kwanza', Icons.money),
                    _buildCurrencyOption(
                        context, 'BWP', 'Botswana Pula', Icons.money),
                    _buildCurrencyOption(context, 'XAF',
                        'Central African CFA Franc', Icons.money),
                    _buildCurrencyOption(
                        context, 'XOF', 'West African CFA Franc', Icons.money),
                    _buildCurrencyOption(
                        context, 'ETB', 'Ethiopian Birr', Icons.money),
                    _buildCurrencyOption(
                        context, 'SDG', 'Sudanese Pound', Icons.money),
                    _buildCurrencyOption(
                        context, 'TND', 'Tunisian Dinar', Icons.money),
                    _buildCurrencyOption(
                        context, 'UGX', 'Ugandan Shilling', Icons.money),
                    _buildCurrencyOption(
                        context, 'ZMW', 'Zambian Kwacha', Icons.money),
                    _buildCurrencyOption(
                        context, 'MZN', 'Mozambican Metical', Icons.money),
                    _buildCurrencyOption(
                        context, 'RWF', 'Rwandan Franc', Icons.money),
                    _buildCurrencyOption(
                        context, 'NAD', 'Namibian Dollar', Icons.money),
                    _buildCurrencyOption(
                        context, 'SZL', 'Swazi Lilangeni', Icons.money),
                    _buildCurrencyOption(
                        context, 'CDF', 'Congolese Franc', Icons.money),
                    _buildCurrencyOption(
                        context, 'SLL', 'Sierra Leonean Leone', Icons.money),
                    _buildCurrencyOption(
                        context, 'CVE', 'Cape Verdean Escudo', Icons.money),
                    _buildCurrencyOption(
                        context, 'GMD', 'Gambian Dalasi', Icons.money),
                    _buildCurrencyOption(
                        context, 'BIF', 'Burundian Franc', Icons.money),
                    _buildCurrencyOption(
                        context, 'DJF', 'Djiboutian Franc', Icons.money),
                    _buildCurrencyOption(
                        context, 'ERN', 'Eritrean Nakfa', Icons.money),
                    _buildCurrencyOption(
                        context, 'GNF', 'Guinean Franc', Icons.money),
                    _buildCurrencyOption(
                        context, 'LSL', 'Lesotho Loti', Icons.money),
                    _buildCurrencyOption(
                        context, 'LYD', 'Libyan Dinar', Icons.money),
                    _buildCurrencyOption(
                        context, 'MGA', 'Malagasy Ariary', Icons.money),
                    _buildCurrencyOption(
                        context, 'MWK', 'Malawian Kwacha', Icons.money),
                    _buildCurrencyOption(
                        context, 'MUR', 'Mauritian Rupee', Icons.money),
                    _buildCurrencyOption(
                        context, 'SCR', 'Seychellois Rupee', Icons.money),
                    _buildCurrencyOption(
                        context, 'SOS', 'Somali Shilling', Icons.money),
                    _buildCurrencyOption(context, 'STN',
                        'São Tomé and Príncipe Dobra', Icons.money),
                    _buildCurrencyOption(
                        context, 'TZS', 'Tanzanian Shilling', Icons.money),
                    _buildCurrencyOption(
                        context, 'ZWL', 'Zimbabwean Dollar', Icons.money),
                    // Cancel button
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.redAccent,
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 16.0),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        child: const Text('Cancel'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static Widget _buildCurrencyOption(
      BuildContext context, String code, String name, IconData icon) {
    return SimpleDialogOption(
      onPressed: () => Navigator.pop(context, code),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          children: [
            Icon(icon, size: 20, color: Colors.black54),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                '$code - $name',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
