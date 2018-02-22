var app = angular.module("quizQuestion", ['ngResource']);
questions = []
app.controller("QuestionsController", function($resource) {
  var Questions = $resource('http://localhost:3000/questions',{});
  questions = Questions.query();
  this.questions = questions;

  this.remove = function(i) {
    var Question = $resource('http://localhost:3000/questions/:id', {id: '@id'});
    var question = Question.remove({id: i}, function() {
      questions = Questions.query();
      console.log("asdf")
    });
  }
});

app.controller("QuestionController", function($resource) {
  this.qAndA = {
    options: []
  };

  var Questions = $resource('http://localhost:3000/questions',{});

  this.submit = function() {
    if (this.qAndA.type === "mcq") {
      this.qAndA.answers = [];
    }

    if (this.qAndA.optionA) {
      this.qAndA.answers.push(this.qAndA.options[0]);
    }
    if (this.qAndA.optionB) {
      this.qAndA.answers.push(this.qAndA.options[1]);
    }
    if (this.qAndA.optionC) {
      this.qAndA.answers.push(this.qAndA.options[2]);
    }
    if (this.qAndA.optionD) {
      this.qAndA.answers.push(this.qAndA.options[3]);
    }

    questions.push(this.qAndA);
    var newQuestion = new Questions(this.qAndA);
    newQuestion.$save();
    this.qAndA = {
      options: [],
    };
    questions = Questions.query();
  }
});