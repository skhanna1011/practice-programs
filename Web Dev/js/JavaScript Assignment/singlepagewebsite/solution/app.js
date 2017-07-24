var ref;
	var pageObject;
	function init(){
		ref = document.getElementById("main");
		pageObject = JSON.parse(document.getElementById("data").textContent);
		displayPage(null,"home");
		document.getElementById("home").addEventListener('click',displayPage);	
		document.getElementById("about").addEventListener('click',displayPage);	
		document.getElementById("contact").addEventListener('click',displayPage);	
		document.getElementById("recent").addEventListener('click',displayNews);	
	}
	function displayPage(e,pageId){
		if(typeof(pageId) == 'undefined'){
			pageId = this.id
		}	
		var pageData = pageObject[pageId];
		var html = "<h1>"+pageData.title+"</h1><div class = 'content'>"+pageData.content+"</div>";
		ref.innerHTML = html		
	}
	function displayNews(){
		var pageData = pageObject[this.id];
		var newsArray = pageData.newsArray;
		var length = newsArray.length;
		var html = "<h1>"+pageData.title+"</h1>";
		for(var i = 0; i<length; i++){
			html+="<h3>"+newsArray[i].title+"</h3>"+"<div class = 'news'>"+newsArray[i].news+"</div>";
		}
		ref.innerHTML = html;
		
	}