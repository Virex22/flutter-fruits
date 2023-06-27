String getImagePath(int index) {
  if (isPrime(index)) {
    return 'images/ananas.png';
  } else {
    return index % 2 == 0 ? 'images/poire.png' : 'images/pomme.png';
  }
}

String getTabTitle(int index) {
  if (isPrime(index)) {
    return 'nombre premier';
  } else {
    return index % 2 == 0 ? 'nombre pair' : 'nombre impair';
  }
}

bool isPrime(int index) {
  if (index == 0 || index == 1) {
    return false;
  } else {
    for (int i = 2; i <= index / 2; ++i) {
      if (index % i == 0) {
        return false;
      }
    }
  }
  return true;
}
