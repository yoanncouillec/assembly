int mul(int a, int b){
  return a * b;
}
int inc(int a){
  return a + 1;
}
int sub(int a, int b){
  return inc(a) - b;
}
int main() {
  return sub(99,1);
}
