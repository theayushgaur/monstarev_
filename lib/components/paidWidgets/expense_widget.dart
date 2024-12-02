import 'package:flutter/material.dart';

class ExpenseWidget extends StatelessWidget {
  const ExpenseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 280,
        width: 375,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildHeader(),
              const Text(
                'Available Balance',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const Text(
                '2500',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              _buildActionButtons(),
              _buildFooter(context),
              const DividerWithDottedLine(),
              _transaction(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _transaction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(Icons.person),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Ayush Gaur'),
            Text('Sent to ******3451'),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text('\$100'),
            Text('24/11 1:30PM'),
          ],
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.person, size: 24),
              SizedBox(width: 8),
              Text(
                'Ayush',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            height: 40,
            width: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromRGBO(216, 49, 32, 1),
            ),
            child: const Text(
              'Switch Account',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          _ActionButton(label: 'Top Up'),
          SizedBox(width: 10),
          _ActionButton(label: 'Transfer'),
          SizedBox(width: 10),
          _ActionButton(label: 'History'),
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Last Transaction',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          GestureDetector(
            onTap: () => _showAllTransactions(context),
            child: const Text(
              'See All',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(216, 49, 32, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showAllTransactions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return SizedBox(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'All Transactions',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person, size: 24),
                                SizedBox(width: 8),
                                Text(
                                  'Transaction ${index + 1}',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Text(
                              '\$${(index + 1) * 100}',
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String label;

  const _ActionButton({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromRGBO(216, 49, 32, 1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }
}

class DividerWithDottedLine extends StatelessWidget {
  const DividerWithDottedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 1,
      child: CustomPaint(
        painter: DottedLinePainter(),
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;

    const double dashWidth = 5;
    const double dashSpace = 3;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
