$fn=200;

length = 20;
width= 20;
height = 20;
cornerRadius = 10;

translate([10, 10, 0]){
    difference() {
            roundedBox(length, width, height, cornerRadius); 
            translate([1,1,1]) {
                roundedBox(length-2, width-2, height-1, cornerRadius); 
            }
           translate([0,,1]) {
                roundedBox(6,1,6, cornerRadius); 
            }
    }
}

translate([width*3, 10, 0]){
    mirror([1,0,0]) {
        roundedBox(length, width, 1, cornerRadius);
        difference() {
            translate([1,1,0]) {
                roundedBox(length-2,width-2,4,cornerRadius);
            }
            translate([2,2,0]) {
                roundedBox(length-4,width-4,4,cornerRadius);
            }    
        }
    }
}



module roundedBox(length, width, height, radius)
{
    dRadius = 2*radius;




    //base rounded shape

        cube(size=[width,length, height]);
  
    
  
}