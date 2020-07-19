
#include <stdio.h>

void drag(double a,double cd);

int main(int argc, const char * argv[]) {
    double a,cd;
    printf("please enter the A :");
    scanf("%lf",&a);
    printf("please enter the CD :");
    scanf("%lf",&cd);
    drag(a, cd);
    system("pause\n");
    return 0;
}

void drag(double a,double cd){
    double f;
    double p=1.23;
    int v;
    double s;
    printf("V(m/s)   F(N)\n");
    for (s=0; s<=8; s++) {
        v=s*5;
        f=0.5*cd*a*p*v*v;
        printf("%4d     %f\n",v,f);
    }
}
