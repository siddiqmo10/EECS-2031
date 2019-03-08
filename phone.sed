#include <stdio.h>
#include <stdlib.h>

typedef struct Student
{
	char id[9];
	char fname[9];
	char lname[9];
	int eMar;
	int mMar;
	float qMar[3];
	
	float mark;
	
} Student;

void stuPrint(Student *student)
{
	printf("%s %s %s %d %d %f %f %f: %f\n",
	student->id,
	student->fname,
	student->lname,
	student->eMar,
	student->mMar,
	student->qMar[0],
	student->qMar[1],
	student->qMar[2],
	student->mark);
}

int main()
{
	int n;
	scanf("%d", &n);
	
	Student students[n];
	
	int i;
	for(i = 0;i < n;i++)
	{
		scanf("%s %s %s %d %d %f %f %f\n", 
		&(students[i].id),
		&(students[i].fname),
		&(students[i].lname),
		&(students[i].eMar),
		&(students[i].mMar),
		&(students[i].qMar[0]),
		&(students[i].qMar[1]),
		&(students[i].qMar[2]));
		
		students[i].mark = students[i].eMar*0.6 + students[i].mMar*0.25
		 + students[i].qMar[0]*0.5
		 + students[i].qMar[1]*0.5
		 + students[i].qMar[2]*0.5;
	}
	
	char command[8];
	
	while(scanf("%s", command) != EOF)
	{
		
		int i = 0;
		if(strcmp(command, "F") == 0)
		{
			for(i = 0; i < n; i++)
			{
				if(students[i].mark < 50)
				{
					printf("%s\n", students[i].id);	
				}
			}
		}
		else if(strcmp(command, "top") == 0)
		{
			
			student* highest = &(students[0]);
			for(i = 1;i < n;i++)
			{
				if(students[i].mark > highest->mark)
				{
					highest = &(students[i]);
				}
			}
			
			for(i = 0;i < n;i++)
			{
				if(students[i].mark == highest->mark)
				{
					printf("%s  %s\n", students[i].id, students[i].lname);
				}
			}
			
		}
		else if(strcmp(command, "A") == 0)
		{
			for(i = 0; i < n; i++)
			{
				if(students[i].mark >= 80)
				{
					printf("%s\n", students[i].id);	
				}
			}
		}
		else if(strcmp(command, "PerA") == 0)
		{
			int count = 0;
			for(i = 0; i < n; i++)
			{
				if(students[i].mark >= 80)
				{
					count++;
				}
			}
				
			printf("Percentage of students with an average of A:%2.2f%%\n", count*100.0/n);
		}
		else if(strcmp(command, "Anomaly") == 0)
		{
			int a = 0;
			for(i = 0; i < n; i++)
			{
				if(students[i].mark >= 80)
				{
					a++;
				}
			}
				
			int f = 0;
			for(i = 0; i < n; i++)
			{
				if(students[i].mark < 50)
				{
					f++;
				}
			}
			
			float percent = (float) (a+f)/n;
			if(percent > 0.3 && n > 15)
				printf("YES\n");
			else
				printf("NO\n");
		}
		else if(strcmp(command, "q") == 0 )
		{
			printf("Thanks\n");
			break;
		}
    else if(strcmp(command, "Q") == 0)
    {
      printf("Thanks\n");
			break;
    }
	}
}
