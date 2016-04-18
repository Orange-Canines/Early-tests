myroomwidth = argument[0]; 
myroomlength = argument[1];

/// Create a grid  With Blocks to create a room 

    var j;
    var i;
    for (j = 0; j < width; j += 1){
        for (i = 0; i < length; i += 1) {
            instance_create(j*32 + myroomwidth, i*32 + myroomlength, obj_block)
        }
    }
        //uncreated = false; 

// Carve! 
 
    randomize() 
    var Cwidth=  irandom_range(2, 10)//irandom(15)
    var Clength= irandom_range(2, 10)//irandom(15)
    var Dmax= irandom_range(10, 30)
    for (D = 0; D < Dmax; D += 1)
            instance_create(Cwidth*32 + myroomwidth, Clength*32+ myroomlength, obj_destroyer)              
//    uncarved = false


/* Gjve a "random" locatjon for The exits 
if (unstairs) == true { 
    randomize()
    var Cwidth=  irandom_range(3, width) //irandom(15)
    var Clength= irandom_range(3, length)//irandom(15)
    var mystair=  instance_create(Cwidth*32 - 64+ myroomwidth, Clength*32 - 64+ myroomlength, obj_stairs)
     unstairs = false     
   }
              






