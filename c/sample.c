/* sample.c */
int global_var = 0;

int init_model(int val) {
  global_var = val;
  return global_var;
}

int ndf1(void) {
  int i;
  int j;
  double ret = 0.00123;
  for (i = 0; i < 20000; ++i) {
    for (j = 0; j < 100000; ++j) {
      ret += 0.00123;
    }
  }
  global_var++;
  return global_var;
}

int ndf1_nogil(void) {
  return ndf1();
}