#include<stdio.h>
int max(int a, int b)
{

    if(a>b)
        return a;
    else
        return b;
}

int knapsack(int W, int wt[], int val[], int n)
{
    int i,w;
    int F[n+1][W+1];
    for(i=0;i<=n;i++){
        for(w=0;w<=W; w++){
            if(i==0 || w==0)
                F[i][w] = 0;
            else if(wt[i-1]<=w)
                F[i][w] = max(val[i-1] +F[i-1][w-wt[i-1]], F[i-1][w]);
            else
                F[i][w] = F[i-1][w];
        }
    }
    return F[n][W];
}

 int main()
 {
     int val[] = {20,25,40};
     int wt[] = {25,20,30};
     int W = 50;
     int n = 3;
     printf("The solution is : %d", knapsack(W,wt,val,n));
     return 0;
 }
