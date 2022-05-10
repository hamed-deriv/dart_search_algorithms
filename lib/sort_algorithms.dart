class SortAlgorithms {
  static List<T> insertionSort<T extends num>(List<T> list) {
    for (int i = 1; i < list.length; i++) {
      T value = list[i];
      int j = i - 1;

      while (j >= 0 && list[j] > value) {
        list[j + 1] = list[j];
        j--;
      }

      list[j + 1] = value;
    }

    return list;
  }

  static List<T> selectionSort<T extends num>(List<T> list) {
    for (int i = 0; i < list.length; i++) {
      int min = i;

      for (int j = i + 1; j < list.length; j++) {
        if (list[j] < list[min]) {
          min = j;
        }
      }

      if (min != i) {
        T temp = list[i];

        list[i] = list[min];
        list[min] = temp;
      }
    }

    return list;
  }

  static List<T> mergeSort<T extends num>(List<T> list) {
    if (list.length <= 1) {
      return list;
    }

    int middle = list.length ~/ 2;

    List<T> left = list.sublist(0, middle);
    List<T> right = list.sublist(middle);

    return merge(mergeSort(left), mergeSort(right));
  }

  static List<T> merge<T extends num>(List<T> left, List<T> right) {
    List<T> result = [];

    while (left.isNotEmpty && right.isNotEmpty) {
      if (left.first <= right.first) {
        result.add(left.first);
        left.removeAt(0);
      } else {
        result.add(right.first);
        right.removeAt(0);
      }

      if (left.isEmpty) {
        result.addAll(right);
      } else if (right.isEmpty) {
        result.addAll(left);
      }
    }

    return result;
  }
}
