void main(){
  List numbers= [2,4,6,8,0];

  for(int i = 0; i < numbers.length; i++){
    print(numbers[i]);
    numbers.remove(numbers[i]);
  }
  print(numbers);
}