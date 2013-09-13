# JS Module Patterns

```js
// http://enterprisejquery.com/2010/10/how-good-c-habits-can-encourage-bad-javascript-habits-part-1/

//Object Literal declaring properties and methods
var skillet = {
  ingredient: "Bacon Strips", 
  fry: function() {
    console.log( "Frying " + this.ingredient );
  }
};
console.log( skillet.ingredient ); //Bacon Strips
skillet.fry(); //Frying Bacon Strips
 
//Adding a public property to an Object Literal
skillet.quantity = "12";
console.log( skillet.quantity ); //12
 
//Adding a public method to an Object Literal
skillet.toString = function() {
  console.log( this.quantity + " " + this.ingredient );
};
skillet.toString(); //12 Bacon Strips​


//Self-Executing Anonymous Function: Part 1 (All Private)
(function() {
  var ingredient = "Bacon Strips";
  function fry() {
	  console.log( "Frying " + ingredient );
	}
	fry();
}());


//Revealing Module Pattern (Public & Private)
var skillet = (function() {
    var pub = {},
        //Private property
        amountOfGrease = "1 Cup";
 
    //Public property    
    pub.ingredient = "Bacon Strips";
 
    //Public method
    pub.fry = function() {
        console.log( "Frying " + pub.ingredient );
    };
 
    //Private method
    function privateWay() {
        //Do something...
    }
 
    //Return just the public parts
    return pub;
}());
 
//Public Properties
console.log( skillet.ingredient ); //Bacon Strips
 
//Public Methods
skillet.fry();
 
//Adding a public property to a Module
skillet.quantity = 12;
console.log( skillet.quantity ); //12
 
//Adding a public method to a Module
skillet.toString = function() {
    console.log( skillet.quantity + " " + 
                 skillet.ingredient + " & " + 
                 amountOfGrease + " of Grease" );
};

//Self-Executing Anonymous Func: Part 2 (Public & Private)
(function( skillet, $, undefined ) {
    //Private Property
    var isHot = true;
 
    //Public Property
    skillet.ingredient = "Bacon Strips";
     
    //Public Method
    skillet.fry = function() {
        var oliveOil;
         
        addItem( "\t\n Butter \n\t" );
        addItem( oliveOil );
        console.log( "Frying " + skillet.ingredient );
    };
     
    //Private Method
    function addItem( item ) {
        if ( item !== undefined ) {
            console.log( "Adding " + $.trim(item) );
        }
    }    
}( window.skillet = window.skillet || {}, jQuery ));
 
//Public Properties
console.log( skillet.ingredient ); //Bacon Strips
 
//Public Methods
skillet.fry(); //Adding Butter & Fraying Bacon Strips
 
//Adding a Public Property
skillet.quantity = "12";
console.log( skillet.quantity ); //12
 
//Adding New Functionality to the Skillet
(function( skillet, $, undefined ) {
    //Private Property
    var amountOfGrease = "1 Cup";
     
    //Public Method
    skillet.toString = function() {
        console.log( skillet.quantity + " " + 
                     skillet.ingredient + " & " + 
                     amountOfGrease + " of Grease" );
        console.log( isHot ? "Hot" : "Cold" );
    };    
}( window.skillet = window.skillet || {}, jQuery ));
 
try {
    //12 Bacon Strips & 1 Cup of Grease
    skillet.toString(); //Throws Exception
} catch( e ) {
    console.log( e.message ); //isHot is not defined
}


// http://www.klauskomenda.com/code/javascript-programming-patterns/

// revealing module pattern
var anchorChange4 = function () {
    
    // this will be a private property
    var config = {
        colors: [ "#F63", "#CC0", "#CFF" ]
    }
    
    // this will be a public method
    var init = function () {
        var self = this; // assign reference to current object to "self"
    
        // get all links on the page
        var anchors = document.getElementsByTagName("a");
        var size = anchors.length;
        
        for (var i = 0; i < size; i++) {
            anchors[i].color = config.colors[i];
            
            anchors[i].onclick = function () {
                self.changeColor(this, this.color); // this is bound to the anchor object
                return false;
            };
        }
    }
    
    // this will be a public method
    var changeColor = function (linkObj, newColor) {
        linkObj.style.backgroundColor = newColor;
    }
    
    return {
        // declare which properties and methods are supposed to be public
        init: init,
        changeColor: changeColor
    }
}();

anchorChange4.init();



// custom object constructor
var anchorChanger = function () {
    this.init();
};

anchorChanger.prototype.config = {
    colors: [ "#F63", "#CC0", "#CFF" ]
}

anchorChanger.prototype.changeColor = function (linkObj, newColor) {
    linkObj.style.backgroundColor = newColor;
};

anchorChanger.prototype.init = function () {
    var self = this;

    // get all links on the page
    var anchors = document.getElementsByTagName("a");
    var size = anchors.length;
    
    for (var i = 0; i < size; i++) {            
        anchors[i].color = self.config.colors[i];
        
        anchors[i].onclick = function () {
            self.changeColor(this, this.color);
            return false;
        };
    }
};

new anchorChanger();


// http://www.kevlindev.com/tutorials/javascript/inheritance/
```
