import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet App',
      // home: const WalletDashboard(),
      home: const WalletHomePage(),
    );
  }
}

class WalletHomePage extends StatelessWidget {
  const WalletHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // here
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                _HeaderSection(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white, //here
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      _PeopleList(),
                      _PaymentList(),
                      const SizedBox(height: 30),
                      _PromoSection(),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
            Positioned(top: 225, right: 20, left: 20, child: _ActionButtons())
          ],
        ),
      ),
      bottomNavigationBar: _BottomNav(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF4A148C),
        onPressed: () {},
        child: const Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

/* ---------------- HEADER ---------------- */

class _HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 90),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
        gradient: LinearGradient(
          colors: [
            Color(0xFF4A148C),
            Color(0xFF6C2BD9),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: const [
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                    'data:image/jpeg;base64,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'),
              ),
              Spacer(),
              Icon(Icons.notifications_none, color: Colors.white),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Available Balance',
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 6),
          const Text(
            '₹4500.54',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Statment',
            style: TextStyle(
              inherit: false,
              color: Colors.white,
              fontSize: 16,
              height: 2,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}

/* ---------------- ACTION BUTTONS ---------------- */

class _ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Card(
          elevation: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _ActionItem(Icons.add_circle_outline, 'Top Up'),
                _ActionItem(Icons.send, 'Send'),
                _ActionItem(Icons.swap_horiz, 'Request'),
                _ActionItem(Icons.history, 'History'),
              ],
            ),
          ),
        ));
  }
}

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionItem(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Color(0xFF6C2BD9)),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

/* ---------------- PAYMENT LIST ---------------- */

class _PaymentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': Icons.wifi, 'label': 'Internet'},
      {'icon': Icons.flash_on, 'label': 'Electricity'},
      {'icon': Icons.card_giftcard, 'label': 'Voucher'},
      {'icon': Icons.security, 'label': 'Assurance'},
      {'icon': Icons.phone_android, 'label': 'Mobile\nCredit'},
      {'icon': Icons.receipt_long, 'label': 'Bill'},
      {'icon': Icons.store, 'label': 'Merchant'},
      {'icon': Icons.grid_view, 'label': 'More'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                'Payment List',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Text(
                'See more',
                style: TextStyle(color: Color(0xFF6C2BD9)),
              )
            ],
          ),
          const SizedBox(height: 14),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) {
              return _PaymentItem(
                icon: items[index]['icon'] as IconData,
                label: items[index]['label'] as String,
              );
            },
          ),
        ],
      ),
    );
  }
}

class _PaymentItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _PaymentItem({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(icon, color: const Color(0xFF6C2BD9)),
        ),
        const SizedBox(height: 6),
        Flexible(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 11),
          ),
        ),
      ],
    );
  }
}

/* ---------------- PROMO ---------------- */

class _PromoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        height: 120,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF311B92),
              Color(0xFF512DA8),
            ],
          ),
        ),
        child: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Special Offer for\nToday\'s Top Up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class _PeopleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = [
      {'people': Icons.person_2, 'label': 'Ahmed'},
      {'people': Icons.person, 'label': 'Saheel'},
      {'people': Icons.person_2_rounded, 'label': 'Laks'},
      {'people': Icons.person_3_outlined, 'label': 'Rashid'},
      {'people': Icons.person_2, 'label': 'Vikram'},
      {'people': Icons.person, 'label': 'Vyshna'},
      {'people': Icons.person, 'label': 'Ezhil'},
      {'people': Icons.grid_view, 'label': 'More'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                'Peoples',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Text(
                'See more',
                style: TextStyle(color: Color(0xFF6C2BD9)),
              )
            ],
          ),
          const SizedBox(height: 14),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) {
              return _People(
                icon: items[index]['people'] as IconData,
                label: items[index]['label'] as String,
              );
            },
          ),
        ],
      ),
    );
  }
}

class _People extends StatelessWidget {
  final IconData icon;
  final String label;

  const _People({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(icon, color: const Color(0xFF6C2BD9)),
        ),
        const SizedBox(height: 6),
        Flexible(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 11),
          ),
        ),
      ],
    );
  }
}
/* ---------------- BOTTOM NAV ---------------- */

class _BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 4,
      // color: const Color.fromARGB(255, 89, 29, 194),
      shape: const CircularNotchedRectangle(inverted: false),
      notchMargin: 15,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.home_outlined,
            ),
            Icon(Icons.bar_chart_outlined),
            SizedBox(width: 40),
            Icon(Icons.credit_card),
            Icon(Icons.person_outline),
          ],
        ),
      ),
    );
  }
}

class WalletDashboard extends StatelessWidget {
  const WalletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      {
        "title": "Amazon",
        "date": "20 Dec 2025",
        "amount": "- ₹1,299",
        "isCredit": false,
      },
      {
        "title": "Salary",
        "date": "18 Dec 2025",
        "amount": "+ ₹25,000",
        "isCredit": true,
      },
      {
        "title": "Uber",
        "date": "16 Dec 2025",
        "amount": "- ₹320",
        "isCredit": false,
      },
      {
        "title": "Electricity Bill",
        "date": "15 Dec 2025",
        "amount": "- ₹1,450",
        "isCredit": false,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A2540),
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://i.pravatar.cc/150?img=3',
            ),
          ),
        ),
        title: const Text(
          'My Wallet',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications_none),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _BalanceCard(),
            const SizedBox(height: 20),
            _ActionButtons(),
            const SizedBox(height: 24),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent Transactions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final tx = transactions[index];
                  return _TransactionTile(
                    title: tx["title"] as String,
                    date: tx["date"] as String,
                    amount: tx["amount"] as String,
                    isCredit: tx["isCredit"] as bool,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* -------------------- BALANCE CARD -------------------- */

class _BalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF1E3C72),
            Color(0xFF6A11CB),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Total Balance',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '₹25,480.00',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

/* -------------------- ACTION BUTTONS -------------------- */

class ActionButt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _ActionIte(
          icon: Icons.send,
          label: 'Send',
        ),
        _ActionIte(
          icon: Icons.call_received,
          label: 'Receive',
        ),
        _ActionIte(
          icon: Icons.add,
          label: 'Add Money',
        ),
      ],
    );
  }
}

class _ActionIte extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionIte({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                )
              ],
            ),
            child: Icon(icon, color: const Color(0xFF0A2540)),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

/* -------------------- TRANSACTION TILE -------------------- */

class _TransactionTile extends StatelessWidget {
  final String title;
  final String date;
  final String amount;
  final bool isCredit;

  const _TransactionTile({
    required this.title,
    required this.date,
    required this.amount,
    required this.isCredit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor:
              isCredit ? Colors.green.shade100 : Colors.red.shade100,
          child: Icon(
            isCredit ? Icons.arrow_downward : Icons.arrow_upward,
            color: isCredit ? Colors.green : Colors.red,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(date),
        trailing: Text(
          amount,
          style: TextStyle(
            color: isCredit ? Colors.green : Colors.red,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
