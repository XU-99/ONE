//
//  main.c
//  406234012
//
//  Created by 许钧豪 on 2018/11/30.
//  Copyright © 2018 许钧豪. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
        int i,s,n,a,c,m;
        printf("please input a number:\n");
        scanf("%d",&a);
        printf("===output===\n");
        for(i=0;i<=a;i++){
            for(s=a;s>i;s--){
                printf(" ");
            }
            for(n=0;n<=i;n++){
                printf("%d",i);
            }
            for(m=1;m<=i;m++){
                printf("%d",i);
            }
            printf("\n");
        }
        
        for(i=0;i<=a;i++){
            for(n=0;n<=i;n++){
                printf(" ");
            }
            for(s=a;s>i;s--){
                printf("%d",a-1-i);
            }
            for(c=a-1;c>i;c--){
                printf("%d",a-1-i);
            }
            
            printf("\n");
        }
        system("pause");
    return 0;
}
