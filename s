#include <stdio.h>
void getItemPrice();
int withinbudget(int,int,int,int,char);
int pog(int ,int, int);

int main(){
    int budget,apl,orng,pr;
    char item;
    printf("***ITEM PROFILES***\n");
    printf("A: Apple\n");
    printf("O: Orange\n");
    printf("P: Pears\n");
    printf("********************\n\n");
    getItemPrice();
    
    budget=withinbudget(apl,orng,pr,budget,item);
    
    
    
   
   
    
    
   return 0;
}

// function 1
void getItemPrice(){
     int orng, apl, pr,items;
     
     printf("Enter apple price: ");
     scanf("%d",&apl);
     printf("Enter orange price: ");
     scanf("%d",&orng);
     printf("Enter pear price: ");
     scanf("%d",&pr);
     items=pog(apl,orng,pr);
}
//function 2 used inside function 1

int pog(int apl,int orng, int pr){
    printf("***ITEM MENU***\n");
    printf("Item Prices\n");
    printf("A: %d\n", apl);
    printf("O: %d\n", orng);
    printf("P: %d\n", pr);
    printf("***************\n\n");
}

//function 3
int withinbudget(int apl,int orng,int pr,int budget,char item){
   printf("Enter budget: ");
   scanf("%d",&budget);
   
   printf("Which item would you like to purchase?\n");
    printf("Press 'A' if you would like to purchase an apple!\nPress 'O' if you would like to purchase an orange!\nPress 'P' if you would like to purchase a pear!\n\n", apl, orng, pr);
    printf("Please enter the item you want to purchase: ");
    scanf(" %c", &item);
   
   
switch (item) {
    case 'A':
        if (budget >= apl)
        {
            printf("Orange purchased!\n");
        }
        else
        {
            printf("Purchase failed!\n");
            printf("Insufficient funds!");
            printf("Thanks for shopping with us!");
        }
        break;
    case 'O':
        if (budget >= orng)
        {
            printf("Apple purchased!\n");
        }
        else
        {
            printf("Purchase failed!\n");
            printf("Insufficient funds!");
            printf("Thanks for shopping with us!");
        }
        break;
    case 'P':
        if (budget >= pr)
        {
            printf("Pear purchased!\n");
        }
        else
        {
            printf("Purchase failed!!!\n");
            printf("Insufficient funds!");
            printf("Thanks for shopping with us!");
        }
        break;
    default:
        printf("Purchase failed!\n");
        printf("Missing item!");
        printf("Thanks for shopping with us!");
    }
}
