
#include <stdio.h>

int main(int argc, const char * argv[]) {
    int file_data,ipt;
    int high=0,com=0,low=0,sum=0;
    float avg;
    FILE *inp;
    inp=fopen("data1.txt", "r");
    printf("Temperature data: \n");
    file_data=fscanf(inp,"%d",&ipt);
    while(file_data==1){
       if(ipt>=85){
            high += 1;
            sum += ipt;
        }
        else if(ipt<=84 && ipt>=60) {
            com += 1;
            sum += ipt;
        }
        else if(ipt<60) {
            low += 1;
            sum += ipt;
        }
       file_data=fscanf(inp,"%d",&ipt);
    }
    avg=sum/(high+com+low);
    printf("High temperature: %d days\n",high);
    printf("Comfortable temperature: %d days\n",com);
    printf("Low temperature: %d days\n",low);
    printf("Average temperature: %f \n\n",avg);
    fclose(inp);
    system("pause");
    return 0;
}
