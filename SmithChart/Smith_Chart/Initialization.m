function handles = Initialization(handles)
% handles = Initialization(handles)   初始化Smith Chart

cla;    %清除所有绘图
% --------------------------电阻圆_Initialization--------------------------
x = [-1:0.01:1];
x_len = length(x);
plot(x, zeros(1, x_len), 'color', 'black');
hold on;
for r = 0:0.1:1
    xc = 1-r;
    yc = 0;
    theta = linspace(0, 2*pi);
    x = r*cos(theta) + xc;
    y = r*sin(theta) + yc;
    plot(x, y, 'color', 'black');
    hold on;
end
% -------------------------------------------------------------------------

% --------------------------电抗圆_Initialization--------------------------
for i = linspace(-pi/2, pi/2, 50)
    r = tan(i);
    xc = 1;
    yc = r;
    theta = linspace(0, 2*pi);
    x = abs(r)*cos(theta) + xc;
    y = abs(r)*sin(theta) + yc;
    plot(x, y, 'color', 'black');
    hold on;
end
% -------------------------------------------------------------------------

% -----------------------------遮蔽多余部分---------------------------------
for r = 1.005:0.004:1.5
    theta = linspace(0, 2*pi);
    x = r*cos(theta);
    y = r*sin(theta);
    line(x, y, 'color', 'w', 'LineWidth', 1);
    hold on;
end
% -------------------------------------------------------------------------
plot(0, 0, 'marker', '.', 'color', 'r');  %原点
axis([-1 1 -1 1]);      %显示固定区域

% ----------------------手工为handles结构体添加新的字段---------------------
handles.flag_R = 0;         %为“1”时表示电阻圆已确定
handles.flag_X = 0;         %为“1”时表示电抗圆已确定
handles.flag_Gamma = 0;     %为“1”时表示反射系数gamma圆已确定
handles.R_circle = plot(0,0);
handles.X_circle = plot(0,0);
handles.Gamma_circle = plot(0,0);
handles.Point = plot(0,0);
handles.PLine = plot(0,0);
handles.DeltaPoint_G = plot(0,0);
handles.DPLine_G = plot(0,0);
handles.DeltaPoint_L = plot(0,0);
handles.DPLine_L = plot(0,0);
handles.Delta_L = NaN;      %初始ΔL
handles.TG = 0;             %ΔL向源移动,为‘1’时表示开启画点进程，进程结束后仍置为'0'
handles.TL = 0;             %ΔL向负载移动,同上
global acc  %计算精度（小数位数）
acc = int8(2);
global Re_ZL Im_ZL Re_Z0 Im_Z0 Re_zl Im_zl;
Re_ZL = NaN;
Re_Z0 = NaN;
Re_zl = NaN;
Im_ZL = NaN;
Im_Z0 = NaN;
Im_zl = NaN;

handles.Gamma_Re = NaN;
handles.Gamma_Im = NaN;

% -------------------------------------------------------------------------
end

