function handles = Gamma_plot(handles)
% handles = Gamma_plot(handles)   反射系数圆绘图
% handles   GUI数据变量。该变量保存和传递：界面上各种图形对象的“句柄”，以及“应用参数”
global acc
if handles.flag_R ==1 && handles.flag_X==1
    handles.flag_Gamma = 0;
    X_r = handles.X_r;
    X_xc = handles.X_xc;
    X_yc = handles.X_yc;
    R_r = handles.R_r;
    R_xc = handles.R_xc;
    R_yc = handles.R_yc;
    if ~isnan(X_r)
        d = sqrt((X_xc-R_xc)^2 + (X_yc-R_yc)^2);    %电阻圆与电抗圆圆心距
        h = (1-R_xc)*X_yc/d;                        %h>0,电抗圆在x轴上方；否则在下方
        L = sqrt(4*(1-R_xc)^2 - 4*h^2);             %电阻圆最左点与阻抗交点连线长度
        alpha = atan(X_yc/(1-R_xc));                %上述连线倾角
%       disp(alpha)
        Z_x = 1 - 2*R_r + L*cos(alpha);     %电阻圆与电抗圆交点（阻抗交点）
        Z_y = L*sin(alpha);
        r = sqrt(Z_x^2 + Z_y^2);            %反射系数圆半径
%       disp(r)
    else
        Z_x = -1;
        Z_y = 0;
        r =1;
    end
    handles.Gamma_Re = round(Z_x, acc);             %gamma实部
    handles.Gamma_Im = round(Z_y, acc);             %gamma虚部
    % 绘制反射系数圆
    theta = linspace(0, 2*pi);
    x = r*cos(theta);
    y = r*sin(theta);
    handles.Gamma_circle = plot(x, y, 'color', 'green');
    hold on;
    
    handles.flag_Gamma = 1;
    handles.Point = plot(Z_x, Z_y, 'color', 'r', 'marker', '*');
    handles.PLine = line ([Z_x, 0], [Z_y, 0], 'color', 'r');
end
    
end

