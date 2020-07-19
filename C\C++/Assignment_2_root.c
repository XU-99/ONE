
#include <stdio.h>
#include <math.h>

void square_root(double n);

int main(int argc, const char * argv[]) {
    double n1=4,n2=120.5,n3=88,n4=36.01,n5=10000,n6=0.25;
    printf("Find square root of %1f\n",n1);
    square_root(n1);
    printf("=====================\n");
    printf("Find square root of %.1f\n",n2);
    square_root(n2);
    printf("=====================\n");
    printf("Find square root of %2f\n",n3);
    square_root(n3);
    printf("=====================\n");
    printf("Find square root of %.2f\n",n4);
    square_root(n4);
    printf("=====================\n");
    printf("Find square root of %5f\n",n5);
    square_root(n5);
    printf("=====================\n");
    printf("Find square root of %.2f\n",n6);
    square_root(n6);
    return 0;
}

void square_root(double n){
    double lg=1.0;
    double s=1;
    double ng;
    while(s>0.005){
    ng=(lg+n/lg)/2;
    s=fabs(lg-ng);
    if(s<=0.005){
        printf("LG:%f，NG:%f\n",lg,ng);
        printf("The square root of %.2f is :%f\n",n,ng);
        break;
    }
    else if(s>0.005){
        printf("LG:%f，NG:%f\n",lg,ng);
    }
        lg=ng;
    }
}

