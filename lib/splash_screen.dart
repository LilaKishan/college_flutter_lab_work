import 'dart:async';

import 'package:demo/birthday_card.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BirthdayCard(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Image.network(
                  'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANwAAADcCAMAAAAshD+zAAAAFVBMVEUAAACpqalNTU16enoRERHa2torKytuXfZEAAAEFklEQVR4nO2c4bKjIAxGRZD3f+RVRIREd2mLJrDfmfvL3nE4JoaAttMEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHSFW5EewzM4Pwf8gH5RLehJj6UxLnMbLniF22CxczOh69CVVdF5KufLf+6oiDq/k0bMApeFrq8ieoYpjfcvcus/20AXqZqn4GHHsjLlpY9qQU99mbms+bdyuZt+u3QHFXZ3aVm6rXa6M5Np+MujUY64Was6dBc1f7PgcvEwlVMduhu5m0mcZqXyu47Lxbyk7ddIcjR0sYhSt+7kHP/knP46lzu7lPSZO7uTrgoKn66zltGFnjPrkS+qpcSYq2Gh+2uesUlcc1ZOH65Kaeh0Z+Wn+wmlnU43ly031xur2q20O5dBxWJQlr1QeKpXN0AX77t0JdIBDXrHsjvTc5tu9dZBuBbpQmShlC8vmdvKtyfJNiTym1DYrnT7OZNo+ZS1I3K/2tFuU7R+Urcf7XjLIhm6xnIXy4RWI/1mNI/LCeZlWzmeldZC7hkapyWXk0zL5wvK0HKtRvoFTO63C81vOtHmeej2q03jnJ1Ok1tazYW4NUiifFtF3G26eJD629nS00gNblO5zdDgbL5qhwIA0BS2+S4wgra15Dzx0YnNQnouo/WpZ2siMr2zc4/ZrWEzRtTOPWbnZpMjsDRwz8l5a0q710NH5Rp2KMTNmLdDx9zaydHAvR86yH135pnLvbxA4HKt7Eit1CHX7NQjp6UCuTengvdn8cfcNEziQ7dfxK7pmYvQCW2pP+UWNviE3U67B84svVh9lu0VRtlthmcZVgx0iKt4U7NTjhWPmgchDcnmb+VvPH9O2VaOZUcXBCPZsUW4ioerjeDL1IFC56mbxFLuKS62hoaR41vNA910Q8sNnZZjF5ShpwI+iY8TOFZSlJaTz3aNsq+7WOVu8XtUla9vufC7GueXsKxuN2uWQNXozhoS9ye390k3M5WLVW+XhPnn+Da3ZVPLroXet/a8WZZ6O7+bBeoiLYmzy1JvVxbHRXvlnxeCLT4mNZS1W6rnbBq4NXSnzl4Ws7e8eaOsOnSzoXLLEYyt+wi2Jj22YYGrqECCsKxMeZkX0aNwXMhpzstbubKIRrtB5Oi9uN9b/cuF4dJ70RxHeyqXnhWUUCIcP+ymcgqP1VJzQZnYVBCy8sZ56mxtSjX24XqWrLsc3VbQHTh2181XB8MHsaQseXOp3I2I2ItjuXVZMHUnZeCsjGm0d2k57XZL+NOekzthjVaM9q6ghM/2J6kq16aX0N9D4f103iHv/y0wzEawItpLmGq4br9GobQbyy0s584iOphbeA9v3+iyPRePW8JPCXZdFwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD8j/wBBVgr9+m+9ycAAAAASUVORK5CYII=',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
