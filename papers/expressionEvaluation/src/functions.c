int f(int x);
int a = 10;
int main(){
	printf("%i",a*f(1)+a);
	return 0;
}
int f(int x){
	a = a + 1;
	return x*a;
}
