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
}
