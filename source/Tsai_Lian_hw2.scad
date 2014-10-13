$fn=80;
translate([0,0,0])
rotate([0,180,0])
for(i=[0 : 0.5 : 5]) {
   for(j=[0:12]) {
		for(k=[25:30:50]) {
		
	 //  color( [0.5+sin(14*i)/2, 0.5+sin(7*j), 0.5+sin(4*(i+j))/1.4] )
 		assign (angle = j*i*360/70, distance = j*i){
         rotate([0,0,angle])
			translate( [0, 0, k*j] )rotate([0,0,angle]) scale([distance,distance*0.8,k])
         house(); 
			
			}
		}
	}
}
scale([3,3,3])
translate([3 , 0, 20])
union(){
flower();

for ( i = [0 : 0.2 : 6] ){
    rotate( i * 60, [1, 0, 0])
    translate([0, 10, 15])
    sphere(r = 2);
}
translate([0, 0, -11])

union(){
	for ( i = [0 : 0.2 : 6] ){
   	rotate( i * 60, [0, 0, 1])
    	translate([0, 17, 0])
	 	scale([1,1,.6])
    	sphere(r = 1.7);
	}
	for ( i = [0 : 0.2 : 6] ){
    	rotate( i * 60, [0, 0, 1])
    	translate([0, 17, 0])
	 	scale([1,.6,1])
    	sphere(r = 1.7);
	}
}
}




/*for ( i = [0 : 5 : 60] ){
    rotate( i * 30, [0, 0, 1])
    translate([500, 505, 10])
    scale([4,4,4])
    rotate([150, 50, 0])
    flower();
}*/





















module house(){
//color("DarkGoldenrod",1.5)

union(){
 hull(){
 translate([12,10,0]) cylinder(h = 5, r=10);
 translate([7,-6,0]) cylinder(h = 5, r=6);
 translate([-3,5,0]) cylinder(h = 5, r=12);
 translate([-3,5,0]) cylinder(h = 5, r=12);
 translate([-8,14,0]) cylinder(h = 5, r=8);
 translate([-13,-7,0]) cylinder(h = 5, r=8);
}
 translate([-12,5,0]) cylinder(h = 5, r=10);
 translate([13,5,0]) cylinder(h = 5, r=8);
 translate([-2,-10,0]) cylinder(h = 5, r=10);
 translate([-4.5,21,0]) cylinder(h = 5, r=5);
 translate([0,20,0]) cylinder(h = 5, r=4);
 translate([9,-8.5,0]) cylinder(h = 5, r=5.5);

 translate([6.4,18.2,0])scale([.8,1.3,1]) cylinder(h = 5, r=3);
 translate([11,14,0])scale([.8,1.3,1]) cylinder(h = 5, r=7);
 translate([15,-6.5,0]) cylinder(h = 5, r=3.5);
 translate([-6.8,-17,0]) cylinder(h = 5, r=3.5);
 translate([15,17,0]) cylinder(h = 5, r=4);
 translate([-20,2.6,0]) cylinder(h = 5, r=2.7);
}
}

module king(){

for ( i = [0 : 5] ){
    rotate( i * 60, [0, 1, 0])
    translate([0, 10, 0])
    sphere(r = 11);
}
}

module flower(){
union(){
scale([1,1,0.9])
translate([0, 0, -14])
sphere(r =5);
rotate([56.5, 180, 0])
for ( i = [0 : 5] ){
    rotate( i * 60, [0, 1.5, 1])
    translate([0, 10, 0])
//color( [0.5+sin(16*i), 0.5+sin(11*i)/2.5, 0.5+sin(10*(i+13))/1.7] )
    king();
}
}
}