import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  final List<Reward> rewards = [
    Reward('You won the discount for Lidl', 'assets/images/Lidl.png'),
    Reward('You won the super badge', 'assets/images/gold.png'),
    Reward('You saved 30% carbon emissions', 'assets/images/leaf.png'),
    // Add more rewards as needed
  ];

  final int streakDays = 10; // Number of days of streak

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rewards'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rewards',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: rewards.length,
                    itemBuilder: (context, index) {
                      return RewardItem(reward: rewards[index]);
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Streak',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Current Streak: $streakDays days',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Reward {
  final String text;
  final String imagePath;

  Reward(this.text, this.imagePath);
}

class RewardItem extends StatelessWidget {
  final Reward reward;

  const RewardItem({Key? key, required this.reward}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(reward.imagePath),
      title: Text(reward.text),
    );
  }
}
