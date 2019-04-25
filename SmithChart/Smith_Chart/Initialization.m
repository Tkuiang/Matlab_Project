function handles = Initialization(handles)
% handles = Initialization(handles)   ��ʼ��Smith Chart

cla;    %������л�ͼ
% --------------------------����Բ_Initialization--------------------------
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

% --------------------------�翹Բ_Initialization--------------------------
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

% -----------------------------�ڱζ��ಿ��---------------------------------
for r = 1.005:0.004:1.5
    theta = linspace(0, 2*pi);
    x = r*cos(theta);
    y = r*sin(theta);
    line(x, y, 'color', 'w', 'LineWidth', 1);
    hold on;
end
% -------------------------------------------------------------------------
plot(0, 0, 'marker', '.', 'color', 'r');  %ԭ��
axis([-1 1 -1 1]);      %��ʾ�̶�����

% ----------------------�ֹ�Ϊhandles�ṹ������µ��ֶ�---------------------
handles.flag_R = 0;         %Ϊ��1��ʱ��ʾ����Բ��ȷ��
handles.flag_X = 0;         %Ϊ��1��ʱ��ʾ�翹Բ��ȷ��
handles.flag_Gamma = 0;     %Ϊ��1��ʱ��ʾ����ϵ��gammaԲ��ȷ��
handles.R_circle = plot(0,0);
handles.X_circle = plot(0,0);
handles.Gamma_circle = plot(0,0);
handles.Point = plot(0,0);
handles.PLine = plot(0,0);
handles.DeltaPoint_G = plot(0,0);
handles.DPLine_G = plot(0,0);
handles.DeltaPoint_L = plot(0,0);
handles.DPLine_L = plot(0,0);
handles.Delta_L = NaN;      %��ʼ��L
handles.TG = 0;             %��L��Դ�ƶ�,Ϊ��1��ʱ��ʾ����������̣����̽���������Ϊ'0'
handles.TL = 0;             %��L�����ƶ�,ͬ��
global acc  %���㾫�ȣ�С��λ����
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

