class SearchAlgorithms {
  static int linearSearch(List<int> list, int value) {
    for (int i = 0; i < list.length; i++) {
      if (list[i] == value) {
        return i;
      }
    }

    return -1;
  }

  static int binarySearch(List<int> list, int value) {
    int low = 0;
    int high = list.length - 1;

    while (low <= high) {
      int mid = (low + high) ~/ 2;

      if (list[mid] == value) {
        return mid;
      } else if (list[mid] < value) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }

    return -1;
  }
}
