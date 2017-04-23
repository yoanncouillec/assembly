char foo(char a, char b, char c, char d, char e){
  int x = a + b;
  int y = c + d;
  int z = x + y;
  return e + z;
}
int main() {
  char res = foo(12,13,14,15,16);
  return 123;
}
