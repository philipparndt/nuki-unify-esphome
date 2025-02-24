wall=1.5;

innerWidth=30;
innerLength=90;
innerHeight=22; // TODO
fn=40;

difference() {
    union() {
        difference() {
            cube([innerWidth + wall * 2, innerLength + wall * 2, innerHeight + wall * 2]);
            translate([wall, wall, wall]) {
                cube([innerWidth, innerLength, innerHeight + wall + .1]);
            }

            // Ethernet Port
            translate([wall + 9.8, -.1, wall + 5]) {
                cube([18, wall + .2, 15]);
            }

            holes(fn);
        }



        holeD = 3;
        translate([0, 53.5, 0]) {
            distance = 1.5;
            fineTunePos=-1.3;
            fineTuneWidth=1.2;
            translate([0, -distance + fineTunePos, 0]) {
                cube([innerWidth + wall * 2, holeD + distance * 2 + fineTuneWidth, wall]);
            }
        }
    }

    translate([0, 53.5, -0.1]) {
        holeD = 3;
        translate([holeD / 2 + innerWidth - 3, holeD / 2, 0]) {
            cylinder(d = holeD, h = wall + .4 + 5, center = false, $fn = fn);

            translate([-23, 0, 0]) {
                cylinder(d = holeD, h = wall + .3, center = false, $fn = fn);
            }
        }
    }
}


module holes(fn) {
    translate([0,0,-.1]) {
        for (y = [0:17]) {
            for (x = [1:5]) {
                hole = 2.4;
                translate([0, y*hole*2, 0]) {
                    translate([wall + x * hole * 2, wall + hole, 0]) {
                        cylinder(d = hole, h = wall + .2, center = false, $fn = fn);
                    }

                    translate([wall + x * hole * 2 + hole, wall + hole * 2, 0]) {
                        cylinder(d = hole, h = wall + .2, center = false, $fn = fn);
                    }
                }
            }
        }
    }
}