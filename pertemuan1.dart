import 'dart:io';

class Queue {
  List items = [];

  void enqueue(item) {
    items.add(item);
  }

  pop() {
    if (items.isEmpty) {
      return null;
    }

    return items.removeAt(0);
  }

  void display() {
    print(items);
  }
}

void main() {
  Queue queue = Queue();

  while (true) {
    print('Masukkan angka atau ketik "pop":');
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'exit') {
      break;
    }

    if (input.toLowerCase() == 'pop') {
      print('Data keluar: ${queue.pop()}');
    } else {
      int? angka = int.tryParse(input);

      if (angka != null) {
        queue.enqueue(angka);
      } else {
        print('Input tidak valid!');
      }
    }

    print('Isi antrian:');
    queue.display();
    print('');
  }
}