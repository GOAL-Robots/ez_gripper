while(true)
    startpos()
    movetocup()
    grip()
    lift()
    placeposition
    startpos()
    movetocup()
    open_full()
    secure_start_position()
end


function startpos()

kukamove = rospublisher('/kuka', 'std_msgs/Float64MultiArray')
    for i=1:500
        msg = rosmessage(kukamove)
        msg.Data =[0 0 0 0 0 0 0];
        msg.showdetails
        send(kukamove, msg)
        disp(msg.showdetails)
    end
end

function movetocup()
kukamove = rospublisher('/kuka', 'std_msgs/Float64MultiArray')
    for i=1:300
        msg = rosmessage(kukamove)
        msg.Data = [5*pi/180 -71*pi/180 0 110*pi/180 0 90*pi/180 0];
        msg.showdetails
        send(kukamove, msg)
        disp(msg.showdetails)
    end
        for i=1:100
        msg = rosmessage(kukamove)
        msg.Data = [5*pi/180 -75*pi/180 0 85*pi/180 0 70*pi/180 0];
        msg.showdetails
        send(kukamove, msg)
        disp(msg.showdetails)
        end
        for i=1:200
        msg = rosmessage(kukamove)
        msg.Data = [5*pi/180 -78*pi/180 0 80*pi/180 0 66*pi/180 0];
        msg.showdetails
        send(kukamove, msg)
        disp(msg.showdetails)
        end
    
end
function secure_start_position()
kukamove = rospublisher('/kuka', 'std_msgs/Float64MultiArray')
 
    for i=1:100
        msg = rosmessage(kukamove)
        msg.Data = [5*pi/180 -75*pi/180 0 85*pi/180 0 70*pi/180 0];
        msg.showdetails
        send(kukamove, msg)
        disp(msg.showdetails)
        end
    for i=1:300
        msg = rosmessage(kukamove)
        msg.Data = [5*pi/180 -71*pi/180 0 110*pi/180 0 90*pi/180 0];
        msg.showdetails
        send(kukamove, msg)
        disp(msg.showdetails)
    end
        for i=1:50
        msg = rosmessage(kukamove)
        msg.Data = [0 0 0 0 0 0 0];
        msg.showdetails
        send(kukamove, msg)
        disp(msg.showdetails)
    end
        
    
end

function placeposition()
kukamove = rospublisher('/kuka', 'std_msgs/Float64MultiArray')
     for i=1:1000
        msg = rosmessage(kukamove)
        msg.Data = [70*pi/180 -55*pi/180 0 70*pi/180 0 -55*pi/180 0];
        msg.showdetails
        send(kukamove, msg)
        disp(msg.showdetails)
     end
    
end

function lift()
kukamove = rospublisher('/kuka', 'std_msgs/Float64MultiArray')
    for i=1:100
        msg = rosmessage(kukamove)
        msg.Data = [3*pi/180 -40*pi/180 0 70*pi/180 0 -20*pi/180 0];
        msg.showdetails
        send(kukamove, msg)
        disp(msg.showdetails)
    end
end

function closehalf()
pub_position_grasp = rospublisher('/grasp', 'std_msgs/Int32')

    for i=0:500
        msg = rosmessage(pub_position_grasp)
        msg.Data = floor(i/10)
        msg.showdetails
        send(pub_position_grasp, msg)
        disp(msg.showdetails)
    end
end
function openhalf()
pub_position_grasp = rospublisher('/grasp', 'std_msgs/Int32')

    for i=1000:-1:500
        msg = rosmessage(pub_position_grasp)
        msg.Data = floor(i/10)
        msg.showdetails
        send(pub_position_grasp, msg)
        disp(msg.showdetails)
    end
end
function open_full()
pub_position_grasp = rospublisher('/grasp', 'std_msgs/Int32')

    for i=1000:-1:0
        msg = rosmessage(pub_position_grasp)
        msg.Data = floor(i/10)
        msg.showdetails
        send(pub_position_grasp, msg)
        disp(msg.showdetails)
    end
end

function grip()
pub_position_grasp = rospublisher('/grasp', 'std_msgs/Int32')

    for i=0:1000
        msg = rosmessage(pub_position_grasp)
        msg.Data = floor(i/10)
        msg.showdetails
        send(pub_position_grasp, msg)
        disp(msg.showdetails)
    end
end
