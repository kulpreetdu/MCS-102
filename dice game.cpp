#include<iostream>
#include<cstdlib>

using std::cout;
using std::cin;
using std::endl;
//win condition is when total score is 50
//lose or end of turn of turn  condition is when we roll the die and the output is 1 and then the opponent turn comes.
//when the human enter hold then the current score is the total score and the opponent turn come.
int dieroll(); //this is the function to calculate the number when dice is thrown 
int humanturn(int);//for the human turn 
int computerturn(int);//for the computer turn 

int main()
{
	int humantotalscore=0,computertotalscore=0;//initializing the scores for the human and computer
	//loop to keep playing until someone scores 50+
	do
	{
		humantotalscore=humantotalscore+humanturn(humantotalscore);//add the score from a new turn to the running total
		cout<<"your total score is "<<humantotalscore<<","<<endl;
		if(humantotalscore>=50)//this is win condition for human
		{
			cout<<"you win";
			break;
		}
		computertotalscore=computertotalscore+computerturn(computertotalscore);//add the scores from a new turn to the running total
		cout<<"cpu total score is"<<computertotalscore<<","<<endl;
		if(computertotalscore>=50)
		{
			cout<<"computer wins";//this is win condition for computer.
			break;
		}
	}
	while(humantotalscore<50&&computertotalscore<50);
	return 0;
}

//simulate rolling of die
int dieroll()
{
	return(rand()%6)+1;//call to rand() returns 0-5,+1 to give the range 1-6
}
//calculating the scores of human when its turn come
int humanturn(int humantotalscore)
{
	int thisturnscore=0,score =0;
	char rollorhold;
	//loop to keep going as long the player chooses roll again or a 1 is thrown
	do
	{
		score=dieroll();//roll the die
		if(score==1)//this is lose condition.
		{
			cout<<"you rolled a 1. end of turn"<<endl;
			break;
		}
		thisturnscore=thisturnscore+score;//running total for this turn only
		cout<<"you rolled a  "<<score<<"  score so far this turn is  "<<thisturnscore<<","<<endl;
		cout<<"roll again(r) or hold (h)";
		cin>>rollorhold;
	}
	while(rollorhold=='r'||rollorhold=='R');
	if(rollorhold=='h'||rollorhold=='H')return thisturnscore;//finish turn and return total score if player chooses to hold
	return 0;//will only get this far if player rolled a 1
}
//calculating the score of computer when its turn come
//if the turn is of computer then it will continue till the total score is above 25 
int computerturn(int computertotalscore)
{
	int thisturnscore=0,score=0;
	//loop to keep going as long the cpu score for this turn is less than 20
	do
	{
		score=dieroll();//roll the dice
		if(score==1)//this is lose condition.
		{
			cout<<"cpu rolled a 1. end or turn."<<endl;
			break;
		}
		thisturnscore=thisturnscore+score;//running total for this turn only
		cout<<"cpu rolled a  "<<score<<"  ,score so far this turn is  "<<thisturnscore<<","<<endl;
	}
	while(thisturnscore<25);
	//finish turn and return total score if the cpu scored 25+
	if(thisturnscore>=25)
	{
		cout<<"cpu holds"<<endl;
		return thisturnscore;
	}
	return 0;//will only get this far if cpu rolled a 1
}
