import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главная страница'),
        backgroundColor: Colors.black26, // Укажите желаемый цвет
        actions: [
          IconButton(
            icon: Icon(Icons.category),
            onPressed: () {
              // Обработка нажатия на кнопку "Категории"
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Обработка нажатия на значок профиля
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(''),
            SizedBox(height: 20),
            Container(
              width: 500.0, // ширина контейнера (можно изменить)
              height: 600.0, // высота контейнера (можно изменить)
              child: Stack(
                children: [
                  // Задний фон - увеличенное изображение
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background.jpg'),
                        fit: BoxFit
                            .cover, // растягиваем изображение, чтобы оно покрыло весь контейнер
                      ),
                    ),
                  ),
                  // Верхний слой - кнопка
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        // Обработка нажатия на кнопку
                      },
                      child: Text('Начать'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black45),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Категории',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Вход',
          ),
        ],
        onTap: (index) {
          // Обработка нажатия на BottomNavigationBar
          if (index == 0) {
            // Нажата кнопка "Категории"
          } else if (index == 1) {
            // Нажата кнопка "Вход"
          }
        },
        selectedItemColor: Colors.teal, // Цвет активного элемента
        unselectedItemColor: Colors.grey, // Цвет неактивных элементов
      ),
    );
  }
}
