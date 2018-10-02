Bacteria[] bob; 
 void setup()   
 {     
 	size(500, 500);
 	bob = new Bacteria[1000];
 	for(int i=0; i < bob.length; i++)
    	bob[i] = new Bacteria();
 }   
 void draw()   
 {    
 	background(random(255), random(255), random(255));
 	for(int i=0; i < bob.length; i++){
 		bob[i].show();
 		bob[i].walk ();
 	}   
 }  
 class Bacteria    
 {     
 	int myX, myY;
 	Bacteria(){
 		myX = myY = 250;
 	}  

 	void walk(){
 		myX = myX + (int)(Math.random()*7)-3;
 		myY = myY + (int)(Math.random()*7)-3;
 	}

 	void show(){
 		ellipse(myX, myY, 30, 30);
 	}
 }    