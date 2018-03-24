var app = angular.module("quizQuestion", ['ngResource']);

app.controller("QuestionsController", function($resource) {
  this.qAndA = {
    options: []
  };

  var Questions = $resource('http://localhost:3000/questions',{});

  this.questions = Questions.query();

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

    var newQuestion = new Questions(this.qAndA);
    newQuestion.$save()
    .$promise.then(function(question) {
      this.questions = Questions.query();      
    });

    this.qAndA = {
      options: [],
    };
  }

  this.remove = function(i) {
    var Question = $resource('http://localhost:3000/questions/:id', {id: '@id'});
    var question = Question.remove({id: i}, function() {
    });
    this.questions = Questions.query();
  }
});