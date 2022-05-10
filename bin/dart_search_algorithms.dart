import 'package:dart_search_algorithms/search_algorithms.dart';
import 'package:dart_search_algorithms/sort_algorithms.dart';

void main(List<String> arguments) {
  print(SearchAlgorithms.linearSearch([10, 15, 15, 35, 60], 15));
  print(SearchAlgorithms.binarySearch([10, 15, 35, 60, 100, 100], 100));

  print(SortAlgorithms.insertionSort([10, 15, 35, 60, 1, 100, 100, 40]));
  print(SortAlgorithms.selectionSort([10, 15, 35, 60, 1, 100, 100, 40]));
  print(SortAlgorithms.mergeSort([10, 15, 35, 60, 1, 100, 100, 40]));
}
