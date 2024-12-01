import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Delhi Darbar',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.only(left: 9.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 15,
            backgroundImage: AssetImage('assets/delhi_darbar.jpg'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined, color: Colors.white),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: [
          const Text(
            'Quick Actions',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildQuickActionButton(
                label: 'Generate QR Code',
                icon: Icons.qr_code,
                onPressed: () {},
              ),
              const SizedBox(width: 15),
              buildQuickActionButton(
                label: 'Generate Sale',
                icon: Icons.monetization_on_outlined,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Today's Sales",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildSalesCard(
                icon: Icons.currency_rupee_outlined,
                iconColor: Colors.blue,
                changeText: '+8%',
                changeColor: Colors.green,
                amount: '₹1500',
                label: 'Gross Sales',
              ),
              const SizedBox(width: 15),
              buildSalesCard(
                icon: Icons.inventory_2_outlined,
                iconColor: Colors.green,
                changeText: '',
                changeColor: Colors.transparent,
                amount: '30',
                label: 'Sold Items',
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Recent Purchases',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  dense: true,
                  onTap: () {},
                  tileColor: Colors.white,
                  title: const Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: const Text(
                    '23 Aug 8:00 PM',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  leading: const CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.grey,
                  ),
                  trailing: const Text(
                    '+300 pts',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildQuickActionButton({
    required String label,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: onPressed,
      child: Container(
        height: 80,
        width: 150,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(height: 5),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSalesCard({
    required IconData icon,
    required Color iconColor,
    required String changeText,
    required Color changeColor,
    required String amount,
    required String label,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black45),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Container(
        height: 135,
        width: 150,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: iconColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: Colors.white, size: 20),
                ),
                if (changeText.isNotEmpty)
                  Text(
                    changeText,
                    style: TextStyle(
                      color: changeColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                Text(
                  amount,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
