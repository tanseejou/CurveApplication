function A=defaultBezier3dCurve(P)

t=linspace(0,1,100);
Q3D=Bezier(P,t);


plot3(Q3D(1,:),Q3D(2,:),Q3D(3,:),'b','LineWidth',2),
hold on
plot3(P(1,:),P(2,:),P(3,:),'g:','LineWidth',2) % plot control polygon
plot3(P(1,:),P(2,:),P(3,:),'ro','LineWidth',2) % plot control points
view(3);
box;
hold off


end