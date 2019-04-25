function handles = R_plot(handles)
% handles = R_plot(handles)   电阻圆绘图
% handles   GUI数据变量。该变量保存和传递：界面上各种图形对象的“句柄”，以及“应用参数”
global Re_zl
rl = Re_zl;
r = 1/(1+rl);
xc = rl/(1+rl); yc = 0; %电阻圆圆心
handles.R_r = r;
handles.R_xc = xc;
handles.R_yc = yc;
% 绘制电阻圆
theta = linspace(0, 2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;
handles.R_circle = plot(x, y, 'color', 'red');
hold on;
handles.flag_R = 1;

end

