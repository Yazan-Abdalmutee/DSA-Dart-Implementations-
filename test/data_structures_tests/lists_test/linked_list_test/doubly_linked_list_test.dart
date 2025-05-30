import 'package:dsa_dart_implementations/data_structures/lists/linked_list/doubly_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group('Doubly LinkedList Basic Operations', () {
    late DoublyLinkedList<int> doublyLinkedList;

    setUp(() {
      doublyLinkedList = DoublyLinkedList<int>();
    });

    test('initial length should be zero', () {
      expect(doublyLinkedList.length(), equals(0));
    });

    test('insert at Head should add the value at beginning', () {
      doublyLinkedList.insertAtHead(5);
      doublyLinkedList.insertAtHead(9);
      expect(doublyLinkedList[0], equals(9));
      expect(doublyLinkedList.length(), equals(2));
    });

    test('insert at tail should add the value at the end', () {
      doublyLinkedList.insertAtTail(5);
      doublyLinkedList.insertAtHead(2);
      doublyLinkedList.insertAtTail(8);
      expect(doublyLinkedList[2], equals(8));
      expect(doublyLinkedList.length(), equals(3));
    });

    test('insertAt should insert at the correct index', () {
      doublyLinkedList.insertAtHead(1);
      doublyLinkedList.insertAtHead(2);
      bool isValidFirstInsert = doublyLinkedList.insertAt(1, 3);
      bool isValidSecondInsert = doublyLinkedList.insertAt(7, 3);
      expect(isValidFirstInsert, equals(true));
      expect(isValidSecondInsert, equals(false));
      expect(doublyLinkedList[1], equals(3));
      expect(doublyLinkedList.length(), equals(3));
    });

    test('Delete should delete all nodes that contain that element', () {
      doublyLinkedList.insertAtHead(1);
      doublyLinkedList.insertAtHead(2);
      doublyLinkedList.insertAtTail(3);
      doublyLinkedList.insertAt(1, 2);
      doublyLinkedList.insertAtHead(2);

      expect(doublyLinkedList.delete(2), equals(true));
      expect(doublyLinkedList.contains(2), equals(false));
      expect(doublyLinkedList.delete(5), equals(false));
      expect(doublyLinkedList.length(), equals(2));
    });

    test('getAt method should return the value at that index', () {
      doublyLinkedList.insertAtTail(1);
      doublyLinkedList.insertAtTail(2);
      doublyLinkedList.insertAtTail(3);
      doublyLinkedList.insertAtTail(4);
      doublyLinkedList.insertAtTail(5);

      expect(doublyLinkedList.getAt(12), null);
      expect(doublyLinkedList.getAt(3), equals(4));
    });

    test(
      'contains method should return true if that elemnt exist in the doubly llinked list',
      () {
        doublyLinkedList.insertAtHead(1);
        doublyLinkedList.insertAtHead(2);
        doublyLinkedList.insertAtTail(3);
        expect(doublyLinkedList.contains(3), equals(true));
        expect(doublyLinkedList.contains(4), equals(false));
      },
    );
  });
}
