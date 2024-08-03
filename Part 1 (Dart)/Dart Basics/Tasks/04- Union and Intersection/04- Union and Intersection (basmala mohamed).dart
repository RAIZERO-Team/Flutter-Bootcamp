// Author: basmala mohamed
Set<int> union(Set<int> set1, Set<int> set2) {
  return set1.union(set2);
}

Set<int> intersection(Set<int> set1, Set<int> set2) {
  return set1.intersection(set2);
}

void main() {
  Set<int> set1 = {1, 2, 3, 4, 5};
  Set<int> set2 = {3, 4, 5, 6, 7};

  Set<int> unionSet = union(set1, set2);
  Set<int> intersectionSet = intersection(set1, set2);

  print('$unionSet $intersectionSet');
}