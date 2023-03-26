holeDia = 7.0;

module base(h, b, t)  {
    difference(){
        cube([h,b,t]);
        translate([10,10,10])cube([h,b+5,t]);
    }
}

difference(){
    base(30,45,40);
 
    translate([-10,22.5+3,23+3]){
      rotate([0,90,0])cylinder(h=30,d=holeDia);
      translate([11,14.1,-3.5])cube([20,35,holeDia], true);
      translate([11,20.0,-4])rotate([45,0,0])cube([20,10,10], true);
    }
   
    translate([19,20,-4])senkloch();
    translate([19,38,-4])senkloch();
    
}


module senkloch() {
        cylinder(h=30,d=6);
        translate([0,0,12]) cylinder(h=3,d1=6, d2 =10);
       }