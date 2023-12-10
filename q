#include<iostream>
using namespace std;
class Queue
{
    public :
    int q[5];
    int no;
    int front,rear;
    Queue()
    {
        front=rear=0;
    }
    void insert()
    {
        cout<<"Enter job number ";
        cin>>no;
        q[rear]=no;
        rear++;
    }

    void Delete()
    {
        no=q[front];
        cout<<" job no is deleted "<<no;;
        front++;
    }
    void display()
    {   cout<<"Job numbers: ";
        for(int i=front;i<=rear;i++)
        {
            cout<<q[i]<<endl;
        }
    }
};

int main()
{
    Queue s1;
    int ch;
    do{
    cout<<"*******Job Menu********"<<endl;
    cout<<"1.Add job \t 2.Delete job\t3.Display jobs\t0.EXIT ";
    cout<<"\nEnter your choice :";
    cin>>ch;
    switch(ch)
    {
        case 1:s1.insert();
                break;
        case 2:s1.Delete();
               break;
        case 3:s1.display();
               break;
        
    }

    }while (ch!=0);
}
