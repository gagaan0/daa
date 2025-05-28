import java.util.Scanner;
class Student
{
    String name,usn,branch,ph_no;

void readdata() // To read the Data
    {
      Scanner sobj= new Scanner(System.in);
System.out.print("Enter Name of Student:");
name = sobj.next();
System.out.print("Enter USN of Student:");
usn = sobj.next();
System.out.print("Enter the Branch of Student:");
branch = sobj.next();
System.out.print("Enter the Phone Number of Student:");
ph_no= sobj.next();
System.out.println("\n");
    }

void displaydata() // To Display The Information
   {
      System.out.println ("Name= "+name);
System.out.println ("USN = "+usn);
      System.out.println ("Branch= "+branch);
System.out.println ("Phone Number= "+ph_no);
System.out.println("\n");
   }
}

public class StudentDemo
{
public static void main(String args[]) 
    {
int n;

System.out.println("Enter the Number of Students:");
      Scanner sobj=new Scanner(System.in);
      n=sobj.nextInt();
     // To Create Array of Object
Student[] stobj = new Student[n];
for(inti=0;i<n;i++)
     {
stobj[i]=new Student(); // initialize it zero by default constructor
     }
for(inti=0;i<n;i++)
     {
stobj[i].readdata();
     }
System.out.println("Information about Students is:\n");

for(inti=0;i<n;i++)
     {
stobj[i].displaydata();
     }
  }
}



import java.util.Scanner; //Scanner Method means to read the values from keyboard
class Stack
{
	int size=10;
	int arr[] = new int[size];
	int top = -1;
	void push(int item)
	{
		if(top==size-1)
		{
			System.out.println("Error !Stack Overflow ");
		}
		else
		{
			top++;
			arr[top]=item;
                 System.out.println("The Item\t " +item + "\t is pushed on to the stack");
		} 
	} 

  // Method to Delete(pop) the Elements from the stack
	void pop()
	{
		if(top==-1)
		{
			System.out.println("ERROR!!! stack underflow");
		} 
		else
		{
			int item;
			item =arr[top];
			System.out.println("The Item\t" + arr[top] + "\tis
			poped out of the stack");
			top--;
		}
	} 

 // Method to Print/Display the Elements from the stack
	void display()
	{
		if(top==-1)
		{
			System.out.println("Stack Empty ");
		} 
else
		{
			System.out.println("Elements in stack ");
			for(inti=0;i<=top;i++)
			{
				System.out.println(arr[i]);
			}
		}
	}
}
// Main Method class
public class StackDemo
{
	public static void main(String args[])
	{
		Stack stk= new Stack();
		int x;
		Scanner s =new Scanner(System.in);
		intch;
		System.out.println("Enter 1: to push element");
		System.out.println("Enter 2: to pop element");
System.out.println("Enter 3: to display elements");
		System.out.println("Enter 4: to Exit ");
		do
		{
			System.out.println("Enter your choice: ");
			ch=s.nextInt();
			switch(ch)
			{
			case 1:  System.out.println("Enter element:â€);
			x=s.nextInt();
			stk.push(x);
			break;

				case 2:  stk.pop();
			break;
				
				case 3:  stk.display();
			break;
				
				case 4: System.exit(0);
				default: System.out.println("Please Enter
				correct choice");
			}
		}
		while (ch!=4);
	}
}





import java.util.Scanner;

//Super class
class Staff
{
   	String sid,name,ph;
   	floatsal;
 
 	voidgetdetails()
   	{
     		Scanner s=new Scanner(System.in);
     		System.out.println("Enter Id");
     		sid=s.next();
     		System.out.println("Enter Name");
     		name=s.next();
     		System.out.println("Enter phone number");
     		ph=s.next();
     		System.out.println("Enter Salary");
     		sal=s.nextFloat();
     }

 	voidputdetails()
  	{
System.out.println("-----Staff Details are-----");
		System.out.println("Staff Id is:"+sid);
		System.out.println("Staff Name is:"+name);
		System.out.println("Staff Phone number is:"+ph);
		System.out.println("Staff Salary is:"+sal);}   
}

//class 1
class Teaching extends Staff
{
  	String dom,pub;
  
  	Teaching()
   	{
	  	getdetails();
      	Scanner s=new Scanner(System.in);
    		System.out.println("Enter domian");
     		dom=s.next();
    		System.out.println("Enter Publications");
    		pub=s.next(); 
    	}
   
  	voiddispTeach()
   	{
     		putdetails();
     		System.out.println("Staff Domain is:"+dom); 
     		System.out.println("Staff has Published:"+pub);
    	}
}

//class 2
class Technical extends Staff
{
  	String skills;
  	Technical()
  	{
   		getdetails();
   		Scanner s=new Scanner(System.in);
		System.out.println("Enter the Skills");
    		skills=s.next();
   	}
   	voiddispTech()
   	{
    		putdetails();
System.out.println("Skills of the Staff:"+skills);
   	}
}

//Class 3
class Contract extends Staff
{
 	int period;
 	Contract()
  	{
  		getdetails();
  		Scanner s=new Scanner(System.in);
		System.out.println("Enter Contract period in yrs");
        	period=s.nextInt();
  	}
  
voiddispContract()
{
 	 	putdetails();
System.out.println("Staff Contract period        is:"+period+"yrs");
}
}

//main class
public class Demo
{
  	public static void main(String arg[])
{
		System.out.println("Enter the details of Teaching
Staff");  
  		Teaching t1=new Teaching();  // Teaching Staff
 		System.out.println("Enter the details of Technical Staff");
  		Technical t2= new Technical();//Technical Staff
System.out.println("Enter the details of Contract Based Staff");
  		Contract c=new Contract(); //Contract based Staff
  		System.out.println("Teaching Staff");
  		t1.dispTeach();
System.out.println("Technical Staff");
  		t2.dispTech();
  		System.out.println("Contract Based Staff");
  		c.dispContract();
}
}



import java.util.Scanner;
importjava.util.StringTokenizer;
class Customer
{
String cname,dob;
Scanner sobj=newScanner(System.in);
void read()
{
System.out.println("Enter Customer name:");
cname=sobj.next();
System.out.println("Enter Customer DOB in the format dd/mm/yyy");
dob=sobj.next();
}
void display()
{
StringTokenizerst = newStringTokenizer(dob, "/");
System.out.print(cname+",");
while(st.hasMoreTokens())
{
String val = st.nextToken();
System.out.print(val);
if(st.countTokens()!=0)
System.out.print(","+" ");

}
}
}
publicclasssttoken {
	publicstaticvoid main(String[] args) {
							Customer cobj=newCustomer();
			cobj.read();
			System.out.println("Customer Details");
			System.out.println("---------------------");
			cobj.display();
			}
}







import java.util.Scanner;
public class DivideException
{
public static void main(String[] args)
  	{
     	Scanner s = new Scanner(System.in);
     	System.out.print("Enter first number(numerator): ");
     	int a = s.nextInt();
     	System.out.print("Enter second number(denominator): ");
     	int b = s.nextInt();
     	try 
     	{
       		if(b!=0)
       		{
         			int res=a/b;
         			System.out.println("result="+res);
       		}
       		else
         		throw new ArithmeticException();     
     	}
    		catch (ArithmeticException e)
    		{
      		System.out.println("Divide by Zero Error");
    		}
  	}
}




import java.util.*;
public class SelectionSort
 {

	int arr[]=new int[5000];
	int i,j,k,n,tmp;
	Scanner sc=new Scanner(System.in);
	Random r = new Random();
	void Read_data()
	{
		System.out.println("enter size of the array");
		n=sc.nextInt();
		System.out.println("enter array elements");
		for(i=0;i<n;i++)
			arr[i]=r.nextInt(n);
		System.out.println("Unsorted Elements are");
		for(i=0;i<n;i++)
			   System.out.print(arr[i]+ " ");
			System.out.print("\n"); 	
	}
	void Selc_sort()
	{
		System.out.println("Sorted Elements");
		  for(i=0;i<n-1;i++)
		  {
			  j=i;
			  for(k=j+1;k<n;k++)
			  {
				  if(arr[k]<arr[j])
				    j=k;
			  }
			  tmp=arr[i];
			  arr[i]=arr[j];
			  arr[j]=tmp;
		  }
		  for(i=0;i<n;i++)
		  {
			  System.out.println(arr[i]+ " ");
		  }
	}

	public static void main(String[] args) 
        {
		SelectionSort sst=new SelectionSort();
		long start,end;
		sst.Read_data();
		start=System.currentTimeMillis();
		sst.Selc_sort();
		end=System.currentTimeMillis();
		System.out.println("Time Taken in Sec\t" + ((end-start)/1000.0));
	}



}




import java.util.*;
public class InsertSort {
	int arr[]=new int[5000];
	int i,j,k,n,tmp;
	Scanner sc=new Scanner(System.in);
	Random r = new Random();
	void Input()
	{
		System.out.println("enter size of the array");
		n=sc.nextInt();
		System.out.println("Unsorted array elements are ");
		for(i=0;i<n;i++)
			arr[i]=10+r.nextInt(n);
		for(i=0;i<n;i++)
		   System.out.print(arr[i]+ " ");
		System.out.print("\n"); 	
	}
	void Insrt_sort() {
		System.out.println("Sorted Elements");
		  for(i=1;i<n;i++) {
			  k=arr[i];
			  j=i-1;
			  while(j>=0 && arr[j]>k) {
				  arr[j+1]=arr[j];
				  j--;
			  }
			  arr[j+1]=k;
		  }
		  for(i=0;i<n;i++)
		  {
			  System.out.print(arr[i]+ " ");
		  }
	}
	public static void main(String[] args) {
		long start,end;
		InsertSort sr=new InsertSort();
		sr.Input();
		start=System.currentTimeMillis();
		sr.Insrt_sort();
		end=System.currentTimeMillis();
		System.out.println("\nTime Taken in Sec\t" + (end-start));

	}

}



import java.util.*;
class QuickSort
{
  int n;
  int a[];
  QuickSort(int x)
  {
    n=x;
    a=new int[n];
  }
    
  void generate()
   {
     System.out.println("Generating n random numbers....");
     Random r=new Random();
     for(int i=0;i<n;i++)
      {
        a[i]=r.nextInt(20);
        System.out.print(a[i]+" ");
      }
   }

     
 int partition(int a[],int lb,int ub)
 {
 	int x,down,temp,up;
 	x=a[lb];
 	down=lb;
        up=ub;
 	while(down<up)
 	{
  		while((a[down]<=x)&&(down<up))
    		down++;
  		while(a[up]>x)
    		up--;
  		if(down<up)
   		{
    			temp=a[down];
    			a[down]=a[up];
   			 a[up]=temp;
   		}
 	}
 	a[lb]=a[up];//undo swap
 	a[up]=x;// Pvt element with j
 	return up;
 }
 void qsort(int a[],int lb,int ub)
 {
 	if(lb<ub)
 	{
  		int j=partition(a,lb,ub);
   		qsort(a,lb,j-1);
   		qsort(a,j+1,ub);
 	}
 }
 void display()
 {  
   for(int i=0;i<n;i++)
    System.out.print(a[i]+" ");
 }
}

 class QsortDemo1
{

   public static void main(String args[])
   {
 	Scanner s=new Scanner(System.in);
        System.out.println("Enter the number of elements");
        int x=s.nextInt();
        QuickSort q=new QuickSort(x);
        q.generate();
        long start_time=System.currentTimeMillis();
        q.qsort(q.a,0,q.n-1);
        long end_time=System.currentTimeMillis();
        System.out.println("\nThe Sorted array is:");
        q.display();
        System.out.println("\nTime taken="+(end_time-start_time)+"milli seconds");
        
   }	
 	
}






import java.util.*;
class Kruskal
{
	int n,c[][],st[][],par[];
	void read()
	{
		Scanner scr=new Scanner(System.in);
	System.out.println("enter the no of vertices");
	n=scr.nextInt();
	c=new int[n+1][n+1];
	par=new int[n+1];
	System.out.println("enter the cost adjacency matrix");
	for(int i=1;i<=n;i++)
	for(int j=1;j<=n;j++)
	c[i][j]=scr.nextInt();
	for(int i=1;i<=n;i++)
	par[i]=i;
	}
	int find(int i)
	{
		i=par[i];
	return i;
	}
	void algo()
	{
	int mincost=0,e=0,min,u=0,v=0,a,b;
	st=new int[n+1][n+1];
	for(int i=1;i<=n;i++)
	for(int j=1;j<=n;j++)
	st[i][j]=c[i][j];
	System.out.println("min cost spanning tree is:");
	while(e!=n-1)
	{
	min=999;
		for(int i=1;i<=n;i++)
	for(int j=1;j<=n;j++)
	if(min>st[i][j])
	{
	min=st[i][j];
	u=i;
	v=j;
	}
	System.out.println(u+"->"+v);
	st[u][v]=999;
	a=find(u);
	b=find(v);
	if(a!=b)
	{
	e++;
	System.out.print(e+":");
	System.out.println(u+"->"+v+"cost:"+min);
	unions(a,b);
	mincost=mincost+min;
	}
	else
		System.out.println(u+"->"+v+"rejected:forms a cycle");
	}
	System.out.println("cost of spanning tree"+mincost);
	}
	void unions(int i,int j)
	{
	par[j]=i;
	}

}
public class KruskalDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Kruskal k=new Kruskal();
		k.read();
		k.algo();

	}

}





import java.util.Scanner;
class Prims
{
	int n,c[][],st[][];
	void read()
	{
		Scanner s=new Scanner(System.in);
		System.out.println("Enter number of vertices");
		n=s.nextInt();
		c=new int[n+1][n+1];
		
		System.out.println("Enter the cost adjacency matrix");
		for(int i=1;i<=n;i++)
			for(int j=1;j<=n;j++)
				c[i][j]=s.nextInt();
		
	}
	void primsAlg()
	{
		int i,j,w,u=0,nr[],min,min_cost=0;
		st=new int[n+1][3];
		nr=new int[n+1];
		for(i=1;i<=n;i++)
			nr[i]=1;
		nr[1]=0;
		
		for(i=1;i<n;i++)
		{
			min=999;
			for(j=1;j<=n;j++)
			{
				if(nr[j]!=0&&c[j][nr[j]]<min)
				{
					min=c[j][nr[j]];
					u=j;
				}
			}
		st[i][1]=u;
		st[i][2]=nr[u];
		min_cost=min_cost+c[u][nr[u]];
		nr[u]=0;
		for(w=1;w<=n;w++)
		{
		if(nr[w]!=0&&c[w][nr[w]]>c[w][u])
		nr[w]=u;
		}
		
		}
		System.out.println("the minimum spanning tree is:");
		for(i=1;i<=n-1;i++)
			System.out.println(st[i][1]+"<->"+st[i][2]);
		
		System.out.println("minimum cost="+min_cost);

	}
}
public class PrimsDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Prims p=new Prims();
		p.read();
		p.primsAlg();

	}

}
