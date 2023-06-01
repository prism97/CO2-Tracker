import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  final List<Reward> rewards = [
    Reward('You won the discount for Lidl', 'assets/images/Lidl.png'),
    Reward('You won the super badge', 'assets/images/Lidl.png'),
    Reward('You saved 30% carbon emissions', 'assets/images/Lidl.png'),
    // Add more rewards as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rewards'),
      ),
      body: ListView.builder(
        itemCount: rewards.length,
        itemBuilder: (context, index) {
          return RewardItem(reward: rewards[index]);
        },
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
