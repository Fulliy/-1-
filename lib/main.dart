
import 'package:flutter/material.dart';

void main() => runApp(const TemplateApp());

const int selectedTemplate = 2;

class TemplateApp extends StatelessWidget {
  const TemplateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TemplatePreview(),
    );
  }
}

class TemplatePreview extends StatelessWidget {
  const TemplatePreview({super.key});

  @override
  Widget build(BuildContext context) {
    const screens = <Widget>[
      PopularMenuScreen(),
      DesignCourseScreen(),
      MindDeepRelaxScreen(),
      MedinowScreen(),
    ];
    return screens[selectedTemplate];
  }
}

const ink = Color(0xFF172033);
const pale = Color(0xFFF5F6FA);
const pink = Color(0xFFFF4168);
const teal = Color(0xFF079FA3);
const blue = Color(0xFF4B50FF);

class PopularMenuScreen extends StatelessWidget {
  const PopularMenuScreen({super.key});

  static const names = [
    ['Original Salad', 'Lov y Food', '\$8'],
    ['Fresh Salad', 'Cloudy Resto', '\$10'],
    ['Yummie Ice Cream', 'Circlo Resto', '\$6'],
    ['Vegan Special', 'Haty Food', '\$11'],
    ['Mixed Pasta', 'Recto Food', '\$13'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F6),
      body: Center(
        child: Container(
          width: 328,
          height: 704,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('9:41', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                    Row(children: [Icon(Icons.signal_cellular_alt, size: 13), Icon(Icons.wifi, size: 13), Icon(Icons.battery_full, size: 16)]),
                  ],
                ),
              ),
              const SizedBox(height: 31),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Container(
                      width: 28, height: 28,
                      decoration: BoxDecoration(color: Color(0xFFFFE9EE), borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Icon(Icons.chevron_left, color: pink, size: 24),
                    ),
                    SizedBox(width: 18),
                    Text('Popular Menu', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600, color: ink)),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 36,
                        padding: const EdgeInsets.symmetric(horizontal: 21),
                        decoration: const BoxDecoration(color: Color(0xFFF4F5F8), borderRadius: BorderRadius.all(Radius.circular(24))),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('Search', style: TextStyle(fontSize: 10, color: Color(0xFF657080))), Icon(Icons.search, size: 18, color: Color(0xFF84909E))],
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 35, height: 35,
                      decoration: const BoxDecoration(color: Color(0xFFFCE9EF), borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Icon(Icons.filter_list, color: pink, size: 20),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 22),
              ...List.generate(names.length, (i) {
                final item = names[i];
                return Container(
                  height: 68,
                  margin: EdgeInsets.fromLTRB(18, 0, 18, i == 4 ? 0 : 23),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/food_${i+1}.jpg', width: 49, height: 49, fit: BoxFit.cover),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item[0], maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: ink)),
                            const SizedBox(height: 5),
                            Text(item[1], style: const TextStyle(fontSize: 10, color: Color(0xFF9AA2AC))),
                          ],
                        ),
                      ),
                      Text(item[2], style: const TextStyle(fontSize: 20, color: pink)),
                    ],
                  ),
                );
              }),
              const Spacer(),
              Container(
                height: 68,
                margin: const EdgeInsets.fromLTRB(18, 0, 18, 18),
                padding: const EdgeInsets.symmetric(horizontal: 18),
                decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [Icon(Icons.home, color: pink, size: 17), SizedBox(width: 8), Text('Home', style: TextStyle(color: pink, fontSize: 13))]),
                    Icon(Icons.shopping_basket, color: pink, size: 18),
                    Icon(Icons.receipt, color: pink, size: 18),
                    Icon(Icons.person, color: pink, size: 18),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DesignCourseScreen extends StatelessWidget {
  const DesignCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F6),
      body: Center(
        child: Container(
          width: 328, height: 704, color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text('9:41', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                  Row(children: [Icon(Icons.signal_cellular_alt, size: 13), Icon(Icons.wifi, size: 13), Icon(Icons.battery_full, size: 16)])
                ]),
              ),
              const SizedBox(height: 31),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(children: [
                  Container(width: 28, height: 28, decoration: BoxDecoration(color: Color(0xFFECEEFF), borderRadius: BorderRadius.all(Radius.circular(8))), child: Icon(Icons.chevron_left, color: Color(0xFF6974FF), size: 24)),
                  SizedBox(width: 15),
                  Text('3D Design Basic', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: ink))
                ]),
              ),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/design_hero.jpg', width: 292, height: 184, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(children: [
                  _Tag(icon: Icons.public, text: '4.569'),
                  SizedBox(width: 8),
                  _Tag(icon: Icons.star, text: '4.9'),
                  SizedBox(width: 8),
                  Container(padding: EdgeInsets.symmetric(horizontal: 9, vertical: 5), decoration: BoxDecoration(color: blue, borderRadius: BorderRadius.all(Radius.circular(14))), child: Text('Best Seller', style: TextStyle(color: Colors.white, fontSize: 10))),
                ]),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text('3D Design Basic', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: ink)),
              ),
              const SizedBox(height: 22),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text('In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.', style: TextStyle(fontSize: 11.5, height: 1.55, color: Colors.black)),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text('24 Lessons (20 hours)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF334155))),
                  Text('See all', style: TextStyle(fontSize: 11, color: blue, fontWeight: FontWeight.w600))
                ]),
              ),
              const SizedBox(height: 20),
              Container(
                height: 70,
                margin: const EdgeInsets.symmetric(horizontal: 18),
                padding: const EdgeInsets.symmetric(horizontal: 14),
                decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(17)), boxShadow: [BoxShadow(color: Color(0x0A000000), blurRadius: 16, offset: Offset(0, 6))]),
                child: Row(children: [
                  ClipRRect(borderRadius: BorderRadius.circular(8), child: Image.asset('assets/design_lesson.jpg', width: 46, height: 46, fit: BoxFit.cover)),
                  const SizedBox(width: 15),
                  const Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text('Introduction to 3D', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: ink)),
                    SizedBox(height: 4),
                    Text('20 mins', style: TextStyle(fontSize: 9, color: ink))
                  ])),
                  const Icon(Icons.check_circle_outline, color: blue, size: 20)
                ]),
              ),
              const Spacer(),
              Container(
                height: 42,
                margin: const EdgeInsets.fromLTRB(18, 0, 18, 37),
                alignment: Alignment.center,
                decoration: const BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF6857FF), Color(0xFF3548FF)]), borderRadius: BorderRadius.all(Radius.circular(24))),
                child: const Text('Enroll - \$24.99', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  final IconData icon;
  final String text;
  const _Tag({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: const BoxDecoration(color: Color(0xFFEDEEFF), borderRadius: BorderRadius.all(Radius.circular(7))),
      child: Row(children: [
        Icon(icon, color: blue, size: 11),
        const SizedBox(width: 5),
        Text(text, style: const TextStyle(fontSize: 10, color: blue)),
      ]),
    );
  }
}

class MindDeepRelaxScreen extends StatelessWidget {
  const MindDeepRelaxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const sessions = [
      ['Sweet Memories', 'December 29 Pre-Launch', Color(0xFF3285F6)],
      ['A Day Dream', 'December 29 Pre-Launch', Color(0xFF00A6A8)],
      ['Mind Explore', 'December 29 Pre-Launch', Color(0xFFF68B2E)],
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: Container(
          width: 328, height: 704, color: Colors.white,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 15),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 25), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text('9:41', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
              Row(children: [Icon(Icons.signal_cellular_alt, size: 13), Icon(Icons.wifi, size: 13), Icon(Icons.battery_full, size: 16)])
            ])),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(borderRadius: BorderRadius.circular(13), child: Image.asset('assets/relax_hero.jpg', width: 298, height: 146, fit: BoxFit.cover)),
            ),
            const SizedBox(height: 12),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Peter Mach', style: TextStyle(fontSize: 9, color: Color(0xFF888888)))),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Mind Deep Relax', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black))),
            const SizedBox(height: 8),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Join the Community as we prepare over 33 days to relax and feel joy with the mind and happiness session across the World.', style: TextStyle(fontSize: 11, height: 1.45, color: Colors.black))),
            const SizedBox(height: 15),
            Container(
              height: 32, margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: teal, borderRadius: BorderRadius.all(Radius.circular(22))),
              child: const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.play_arrow, color: Colors.white, size: 15), SizedBox(width: 8),
                Text('Play Next Session', style: TextStyle(color: Colors.white, fontSize: 12))
              ]),
            ),
            const SizedBox(height: 15),
            ...sessions.map((session) => Container(
              height: 46,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFF2F2F2), width: 0.7))),
              child: Row(children: [
                Container(width: 27, height: 27, decoration: BoxDecoration(color: session[2] as Color, borderRadius: const BorderRadius.all(Radius.circular(7))), child: const Icon(Icons.play_arrow, color: Colors.white, size: 17)),
                const SizedBox(width: 10),
                Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(session[0] as String, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: ink)),
                  const SizedBox(height: 3),
                  Text(session[1] as String, style: const TextStyle(fontSize: 9, color: Color(0xFF999999)))
                ])),
                const Icon(Icons.more_horiz, color: Color(0xFFD7D7D7), size: 20),
              ]),
            )),
          ]),
        ),
      ),
    );
  }
}

class MedinowScreen extends StatelessWidget {
  const MedinowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: teal,
      body: Center(
        child: Container(
          width: 328, height: 704,
          decoration: const BoxDecoration(color: teal, borderRadius: BorderRadius.all(Radius.circular(3))),
          child: Column(children: [
            const SizedBox(height: 15),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 25), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text('9:41', style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600)),
              Row(children: [Icon(Icons.signal_cellular_alt, size: 13, color: Colors.white), Icon(Icons.wifi, size: 13, color: Colors.white), Icon(Icons.battery_full, size: 16, color: Colors.white)])
            ])),
            const SizedBox(height: 71),
            const Text('medinow', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800, color: Colors.white, letterSpacing: 0.5)),
            const SizedBox(height: 2),
            const Text('Meditate With Us!', style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500)),
            const SizedBox(height: 33),
            Container(
              height: 33, margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(22))),
              child: const Text('Sign in with Apple', style: TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 7),
            Container(
              height: 33, margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Color(0xFFCEFAF9), borderRadius: BorderRadius.all(Radius.circular(22))),
              child: const Text('Continue with Email or Phone', style: TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 10),
            const Text('Continue With Google', style: TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.w500)),
            const Spacer(),
            Image.asset('assets/meditation_illustration.jpg', width: 300, height: 230, fit: BoxFit.contain),
            const SizedBox(height: 8),
            Container(width: 108, height: 4, decoration: const BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(4)))),
            const SizedBox(height: 8),
          ]),
        ),
      ),
    );
  }
}
