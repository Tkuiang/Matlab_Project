function handles = R_plot(handles)
% handles = R_plot(handles)   ����Բ��ͼ
% handles   GUI���ݱ������ñ�������ʹ��ݣ������ϸ���ͼ�ζ���ġ���������Լ���Ӧ�ò�����
global Re_zl
rl = Re_zl;
r = 1/(1+rl);
xc = rl/(1+rl); yc = 0; %����ԲԲ��
handles.R_r = r;
handles.R_xc = xc;
handles.R_yc = yc;
% ���Ƶ���Բ
theta = linspace(0, 2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;
handles.R_circle = plot(x, y, 'color', 'red');
hold on;
handles.flag_R = 1;

end

