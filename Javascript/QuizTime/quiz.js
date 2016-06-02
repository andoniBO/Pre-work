var user = {};
var responses = [];

function question1()
{
	var name = prompt('What is your name?');
	user.name = name;
}

function question2()
{
	var firstQuestion = prompt('Is 2 even? (Yes or No)');
	if(firstQuestion.toLowerCase() === 'yes')
	{
		firstQuestion = true;
	}
	else if(firstQuestion.toLowerCase() === 'no')
	{
		firstQuestion = false;
	}
	else
	{
		alert("Please answer either Yes or No");
		return question2();
	}
	responses.push(firstQuestion);
}

function question3()
{
	var js = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive, or ScriptyScript?');
	js = js.toLowerCase();
	switch (js) 
	{
		case "java":
				js = false;
			break;
		case "livescript":
				js = true;
			break;
		case "javalive":
				js = false;
			break;
		case "scriptyscript":
				js = false;
			break;
		default:
				js = false;
			break;
	}
	responses.push(js);
}

function question4()
{
	var answer = prompt('How many decimals may an integer contain? (Input number)')
	if( answer === '0' )
	{
		answer = true;
	}
	else
	{
		answer = false;
	}
	responses.push(answer);
}

function question5()
{
	var lastQuestion = prompt('What is the oldest videogame? Pacman, DragonAge or Farcry?')
	lastQuestion = lastQuestion.toLowerCase();
	switch (lastQuestion)
	{
		case "pacman":
				lastQuestion = true;
			break;
		case "dragonage":
				lastQuestion = false;
			break;
		case "farcry":
				lastQuestion = false;
			break;
		default:
				lastQuestion = false;
			break;			
	}
	responses.push(lastQuestion);
}

function evaluate(responsesArray)
{
	user.correct = 0;
	user.incorrect = 0;
	for (i = 0; i < responsesArray.length; i++)
	{
		if(responsesArray[i] === true)
		{
			user.correct += 1;
		}
		else
		{

			user.incorrect += 1;
		}
	}
	showResults();
}

function showResults()
{
	console.log("This are " + user.name + " results:");
	console.log("Correct answers: " + user.correct);
	console.log("Incorrect answers: " + user.incorrect);
}

function startQuiz()
{
	question1();
	question2();
	question3();
	question4();
	question5();
}

startQuiz();
evaluate(responses);