import 'package:flutter/material.dart';

void main() {
  runApp(const TemplateApp());
}

class TemplateApp extends StatelessWidget {
  const TemplateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Мои макеты',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Выбери макет')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MedinowScreen())),
            child: const Text('1. Medinow (Простой)'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MindDeepRelaxScreen())),
            child: const Text('2. Mind Deep Relax (Простой)'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CourseScreen())),
            child: const Text('3. 3D Design Basic (Сложный)'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MenuScreen())),
            child: const Text('4. Popular Menu (Сложный)'),
          ),
        ],
      ),
    );
  }
}

class MedinowScreen extends StatelessWidget {
  const MedinowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF009688),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'medinow',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              'Meditate With Us!',
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            const SizedBox(height: 40),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: const Center(
                child: Text('Sign in with Apple', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(color: const Color(0xFF80CBC4), borderRadius: BorderRadius.circular(25)),
              child: const Center(
                child: Text('Continue with Email or Phone', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 15),
            const Text('Continue With Google', style: TextStyle(color: Colors.white)),
            const SizedBox(height: 50),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(100)),
              child: ClipOval(
                child: Image.network(
                  'https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=600&auto=format&fit=crop',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.self_improvement, size: 100, color: Colors.white);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MindDeepRelaxScreen extends StatelessWidget {
  const MindDeepRelaxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.amber[200], borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=1000&auto=format&fit=crop',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(child: Icon(Icons.self_improvement, size: 80, color: Colors.white));
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Peter Mach', style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 5),
              const Text('Mind Deep Relax', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text(
                'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happiness session across the World.',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow),
                  label: const Text('Play Next Session'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00BFA5),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildSessionItem('Sweet Memories', 'December 29 Pre-Launch', Colors.blue),
              const SizedBox(height: 15),
              _buildSessionItem('A Day Dream', 'December 29 Pre-Launch', Colors.teal),
              const SizedBox(height: 15),
              _buildSessionItem('Mind Explore', 'December 29 Pre-Launch', Colors.orange),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSessionItem(String title, String subtitle, Color color) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
          child: const Icon(Icons.play_arrow, color: Colors.white),
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
        const Spacer(),
        const Icon(Icons.more_horiz, color: Colors.grey),
      ],
    );
  }
}

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('3D Design Basic', style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://images.unsplash.com/photo-1634017839464-5c339ebe3cb4?w=1000&auto=format&fit=crop',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(child: Icon(Icons.view_in_ar, size: 80, color: Colors.white));
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                _buildBadge(Icons.star, '4.569', Colors.blue),
                const SizedBox(width: 10),
                _buildBadge(Icons.star, '4.9', Colors.blue),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(15)),
                  child: const Text('Best Seller', style: TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('3D Design Basic', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text(
              'In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('24 Lessons (20 hours)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text('See all', style: TextStyle(color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.play_arrow, color: Colors.white),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Introduction to 3D', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('20 mins', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.check_circle, color: Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text('Enroll - \$24.99', style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBadge(IconData icon, String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 4),
          Text(text, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Popular Menu', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildDishItem('Original Salad', 'Lovy Food', '\$8', Colors.orange),
                  _buildDishItem('Fresh Salad', 'Cloudy Resto', '\$10', Colors.green),
                  _buildDishItem('Yummie Ice Cream', 'Circlo Resto', '\$6', Colors.pink),
                  _buildDishItem('Vegan Special', 'Haty Food', '\$11', Colors.green[800]!),
                  _buildDishItem('Mixed Pasta', 'Recto Food', '\$13', Colors.brown),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildDishItem(String name, String restaurant, String price, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          // ignore: deprecated_member_use
          BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 10, offset: const Offset(0, 5)),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                _dishImage(name),
                fit: BoxFit.cover,
                width: 60,
                height: 60,
                errorBuilder: (context, error, stackTrace) {
                  return Container(color: color, child: const Icon(Icons.fastfood, color: Colors.white));
                },
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(restaurant, style: const TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
          const Spacer(),
          Text(price, style: const TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 18)),
        ],
      ),
    );
  }

  String _dishImage(String name) {
    if (name == 'Original Salad') {
      return 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=300&auto=format&fit=crop';
    }
    if (name == 'Fresh Salad') {
      return 'https://images.unsplash.com/photo-1540420773420-3366772f4999?w=300&auto=format&fit=crop';
    }
    if (name == 'Yummie Ice Cream') {
      return 'https://images.unsplash.com/photo-1560008581-09826d1de69e?w=300&auto=format&fit=crop';
    }
    if (name == 'Vegan Special') {
      return 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=300&auto=format&fit=crop';
    }
    return 'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?w=300&auto=format&fit=crop';
  }
}