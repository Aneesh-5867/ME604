function T = fdkine(q)
    alpha=[-pi/2,0,-pi/2,+pi/2,-pi/2,0];
    d=[486.5,0,0,600,0,65];
    a=[150,700,0,0,0,0];
    offset = [0,-pi/2,0,0,0,+pi]; 

    L1=Link('revolute','d',d(1),'a',a(1),'alpha',alpha(1),'offset',offset(1));
    L2=Link('revolute','d',d(2),'a',a(2),'alpha',alpha(2),'offset',offset(2));
    L3=Link('revolute','d',d(3),'a',a(3),'alpha',alpha(3),'offset',offset(3));
    L4=Link('revolute','d',d(4),'a',a(4),'alpha',alpha(4),'offset',offset(4));
    L5=Link('revolute','d',d(5),'a',a(5),'alpha',alpha(5),'offset',offset(5));
    L6=Link('revolute','d',d(6),'a',a(6),'alpha',alpha(6),'offset',offset(6));

    bot = SerialLink([L1,L2,L3,L4,L5,L6], 'name','IRB1600'); 

    T1 = L1.A(q(1));
    T2 = L2.A(q(2));
    T3 = L3.A(q(3));
    T4 = L4.A(q(4));
    T5 = L5.A(q(5));
    T6 = L6.A(q(6));
    T = T1*T2*T3*T4*T5*T6;
end