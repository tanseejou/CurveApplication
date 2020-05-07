function A=Bezier3DSurface(cp)
% Bézier surface of degree (n, m) is defined by a set of (n + 1)(m + 1)
% control points ki,j
% Control points [x,y,z]

%cp=cell(3,3);
%cp{1,1}=[ 0.0, 0.0, 65.0];
%cp{1,2}=[ 0.0, 76.2, 100.0];
%cp{1,3}=[ 0.0, 152.4, 85.0];
%cp{2,1}=[ 50.8, 0.0, 50.0];
%cp{2,2}=[ 50.8, 76.2, 95.0];
%cp{2,3}=[ 50.8, 152.4, 65.0];
%cp{3,1}=[ 101.6, 0.0, 85.0];
%cp{3,2}=[ 101.6, 76.2, 70.0];
%cp{3,3}=[ 101.6, 152.4, 85.0];

ctemp = cell(1,9);
ctemp{1,1} = cp{1,1}';
ctemp{1,2} = cp{1,2}';
ctemp{1,3} = cp{1,3}';
ctemp{1,4} = cp{2,1}';
ctemp{1,5} = cp{2,2}';
ctemp{1,6} = cp{2,3}';
ctemp{1,7} = cp{3,1}';
ctemp{1,8} = cp{3,2}';
ctemp{1,9} = cp{3,3}';

ctemp2 = cell(1,9);
cptemp = cp';
ctemp2{1,1} = cptemp{1,1}';
ctemp2{1,2} = cptemp{1,2}';
ctemp2{1,3} = cptemp{1,3}';
ctemp2{1,4} = cptemp{2,1}';
ctemp2{1,5} = cptemp{2,2}';
ctemp2{1,6} = cptemp{2,3}';
ctemp2{1,7} = cptemp{3,1}';
ctemp2{1,8} = cptemp{3,2}';
ctemp2{1,9} = cptemp{3,3}';


P=cell2mat(ctemp);
Q=cell2mat(ctemp2);

% Plotting vectors
U=0:0.005:1; % 1-direction (201 points)
V=0:0.005:1; % 2-direction (201 points)
[Xout,Yout,Zout] = BezierSurface(cp,U,V);
% plot (40401 points)
Z=Zout(:);
scatter3(Xout(:),Yout(:),Zout(:),5,Z)
hold on
colormap(pink);
plot3(P(1,:),P(2,:),P(3,:),'g:','LineWidth',2)
plot3(Q(1,:),Q(2,:),Q(3,:),'g:','LineWidth',2)
plot3(P(1,:),P(2,:),P(3,:),'ro','LineWidth',2) % plot control points
hold off
end
