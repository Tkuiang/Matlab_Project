function handles = X_plot(handles)
% handles = X_plot(handles)   �翹Բ��ͼ
% handles   GUI���ݱ������ñ�������ʹ��ݣ������ϸ���ͼ�ζ���ġ���������Լ���Ӧ�ò�����
global Im_zl
xl = Im_zl;
if xl ~= 0  
    r = 1/xl;
    xc = 1; yc = r; %�翹ԲԲ��
    handles.X_r = r;
    handles.X_xc = xc;
    handles.X_yc = yc;
    % ���Ƶ翹Բ
    theta = linspace(0, 2*pi);
    x = r*cos(theta) + xc;
    y = r*sin(theta) + yc;
else
    handles.X_r = NaN;
    handles.X_xc = NaN;
    handles.X_yc = NaN;
    x = linspace(-1,1);
    y = zeros(1,100);
end
handles.X_circle = plot(x, y, 'color', 'blue');
hold on;

handles.flag_X = 1;
end

