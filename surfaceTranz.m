function surfaceTranz(p1,p2,p3)
k_u = 3; k_v = 3;
b_x = p1;
b_y = p2;
b_z = p3;
plot_control_pol(b_x , b_y , b_z); grid on; axis tight ; axis equal ;
knots_u = [ zeros(1, k_u), ones(1, k_u)];
knots_v = [ zeros(1, k_v), ones(1,k_v)];
tab = 0:0.05:1;
B_u = spcol ( knots_u , k_u , tab);
B_v = spcol ( knots_v , k_v , tab);
X_x = B_u*b_x*B_v .';
X_y = B_u*b_y*B_v .';
X_z = B_u*b_z*B_v .';
surf (X_x , X_y , X_z , 'FaceAlpha', 0.8) ; shading flat ; s.EdgeColor = 'none';
hold on;
plot3 (X_x (1, 1) , X_y (1 ,1) , X_z (1 ,1) , 'k.', 'MarkerSize', 20) ;
plot3 (X_x(end , end), X_y(end , end), X_z(end , end), 'k.', 'MarkerSize', 20);
plot3 (X_x(end , 1) , X_y(end ,1) , X_z(end ,1) , 'k.', 'MarkerSize',20);
plot3 (X_x (1, end), X_y (1, end), X_z (1, end), 'k.', 'MarkerSize',20);
% transformazione sui punti
theta = pi /2;
A = [cos( theta ) -sin( theta ) 0 ; sin( theta ) cos( theta ) 0; 0 0 1];
new_points = [b_x(:)'; b_y(:)'; b_z(:)'];
for i = 1: size ( new_points ,2)
    new_points (:, i) = A* new_points (:,i);
end
X_x2 = B_u *( reshape ( new_points (1, :) , k_u , k_v))*B_v .';
X_y2 = B_u *( reshape ( new_points (2, :) , k_u , k_v))*B_v .';
X_z2 = B_u *( reshape ( new_points (3, :) , k_u , k_v))*B_v .';
surf (X_x2 , X_y2 , X_z2 , 'FaceAlpha', 0.8) ;
plot_control_pol ( reshape ( new_points (1, :) , k_u , k_v), ...
    reshape ( new_points (2, :) , k_u , k_v), ...
    reshape ( new_points (3, :) , k_u , k_v));
%trasformazione sulla superficie
new_sup = [X_x(:)'; X_y(:)'; X_z(:)'];
for i = 1: size ( new_sup ,2)
    new_sup (:, i) = A* new_sup (:,i);
end
X_x3 = B_u *( reshape ( new_points (1, :) , k_u , k_v))*B_v .';
X_y3 = B_u *( reshape ( new_points (2, :) , k_u , k_v))*B_v .';
X_z3 = B_u *( reshape ( new_points (3, :) , k_u , k_v))*B_v .';
surf(X_x3 , X_y3 , X_z3 , 'FaceAlpha', 0.8) ; shading flat ;
isequal (X_x2 , X_x3 )
isequal (X_y2 , X_y3 )
isequal (X_z2 , X_z3 )

function [] = plot_control_pol(x, y, z)
    plot3(x, y, z, 'bo--', 'linewidth', 2); hold on;
    plot3(x', y', z', 'b--', 'linewidth', 2); 
end
end