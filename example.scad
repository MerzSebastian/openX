include <openX.scad>;
$fn=25;

//xcube([X,Y,Z],[radius1,radius2,radius3,radius4],centerX,centerY,centerZ)
color([1,0,0]){
    translate([20,0,0]) xcube([5,5,5],[1,1,1,1]);
    translate([20,10,0]) xcube([5,5,5],[1,1,1,0]);
    translate([20,20,0]) xcube([5,0,2],[1,1,0,0]);
}

//xcube([X,Y,Z],[radiusBottom1,radiusBottom2,radiusBottom3,radiusBottom4,radiusTop5,radiusTop6,radiusTop7,radiusTop8],centerX,centerY,centerZ)
color([0,1,0]){
    translate([10,0,0]) xcube([5,5,5],[1,1,1,1,1,1,1,1]);
    translate([10,10,0]) xcube([5,5,5],[2,2,2,2,1,1,1,1]);
    translate([10,20,0]) xcube([5,5,5],[1,1,1,1,0,0,0,0]);
    translate([10,30,0]) xcube([4,4,4],[2,2,2,2,1,1,1,1]);
    translate([10,40,0]) xcube([8,8,8],[2,2,3,3,1,1,1,6]);
}

//xcube([X,Y,Z],centerX,centerY,centerZ)
color([0,0,1]){
    translate([0,0,0]) xcube([5,5,5]);
    translate([0,10,0]) xcube([5,5,5],centerX=true);
    translate([0,20,0]) xcube([5,5,5],centerX=true,centerY=true);
    translate([0,30,0]) xcube([5,5,5],centerX=true,centerY=true,centerZ=true);
    translate([0,40,0]) xcube([5,5,5],center=true);
}