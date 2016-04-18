/// scr_recieved Packet (buffer) 
var buffer = argument[0];
var message_id = buffer_read(buffer,buffer_u8)
//message id determines data 
switch (message_id) {
        case 1:
            var my = buffer_read(buffer,buffer_u32);
            var mx = buffer_read(buffer,buffer_u32);
            if !instance_exists(obj_player2){
                 instance_create(mx,my,obj_player2)
            }
                 
            with(obj_player2){
                    x = mx 
                    y = my
                }
            break;
            
   }
