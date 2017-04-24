int inc(int a){
  return a + 1;
}
int sub(int a, int b){
  return inc(a) - b;
}
int main() {
  if (sub(99,1) == 0){
    return 22;
  }
  else {
    return 33;
  }
}
