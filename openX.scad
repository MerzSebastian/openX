module xcube(size, radius, centerX, centerY, centerZ, center) {
    X = centerX ? -size[0]/2 : 0;
    Y = centerY ? -size[1]/2 : 0;
    Z = centerZ ? -size[2]/2 : 0;
    
    translate([X,Y,Z]) union(){
        hull(){
            if(radius[4] != undef && radius[5] != undef && radius[6] != undef && radius[7] != undef ) {
                    
                translate([radius[0]/2,radius[0]/2,radius[0]/2]) sphere(d=radius[0]);
                translate([size[0]-radius[1]/2,radius[1]/2,radius[1]/2]) sphere(d=radius[1]);
                translate([size[0]-radius[2]/2,size[1]-radius[2]/2,radius[2]/2]) sphere(d=radius[2]);
                translate([radius[3]/2,size[1]-radius[3]/2,radius[3]/2]) sphere(d=radius[3]);

                translate([radius[4]/2,radius[4]/2,size[2]-radius[4]/2]) sphere(d=radius[4]);
                translate([size[0]-radius[5]/2,radius[5]/2,size[2]-radius[5]/2]) sphere(d=radius[5]);
                translate([size[0]-radius[6]/2,size[1]-radius[6]/2,size[2]-radius[6]/2]) sphere(d=radius[6]);
                translate([radius[7]/2,size[1]-radius[7]/2,size[2]-radius[7]/2]) sphere(d=radius[7]);
            }
            else if(radius[0] != undef || radius[1] != undef || radius[2] != undef || radius[3] != undef ) {
                    translate([radius[0]/2,radius[0]/2,0]) if(radius[0] != 0) cylinder(d=radius[0], h=size[2]);
                        else translate([-radius[0]/2,-radius[0]/2,0]) cube([radius[0],radius[0],size[0]]);
                    translate([size[0]-radius[1]/2,radius[1]/2,0]) if(radius[1] != 0) cylinder(d=radius[1], h=size[2]);
                        else translate([-radius[1]/2,-radius[1]/2,0]) cube([radius[1],radius[1],size[1]]);
                    translate([size[0]-radius[2]/2,size[1]-radius[2]/2,0]) if(radius[2] != 0) cylinder(d=radius[2], h=size[2]);
                        else translate([-radius[2]/2,-radius[2]/2,0]) cube([radius[2],radius[2],size[2]]);
                    translate([radius[3]/2,size[1]-radius[3]/2,0]) if(radius[3] != 0) cylinder(d=radius[3], h=size[2]);
                        else translate([-radius[3]/2,-radius[3]/2,0]) cube([radius[3],radius[3],size[2]]);
            }
            else {
                cube(size,center);
            }
        }
    }
}