// Author: Ahmed Badawi

void union_intersection(Set<int> set1, Set<int> set2){
  Set<int> union = set1.union(set2);
  Set<int> intersection = set1.intersection(set2);

  print(union);
  print(intersection);
}

void main() {
  Set<int> set1 = {1,2,3,4,5};
  Set<int> set2 = {2,3,6};

  union_intersection(set1, set2);
}

/*
* Another Solution

  Set<int> union = {};

  late int max;

  if (set1.length > set2.length){
    max = set1.length;
  } else {
    max = set2.length;
  }

  for (int i = 0; i < max; i++){
    if (set1[i] == set2[i]){

    }
  }
*/