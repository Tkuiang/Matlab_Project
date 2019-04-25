function handles = Gamma_plot(handles)
% handles = Gamma_plot(handles)   ����ϵ��Բ��ͼ
% handles   GUI���ݱ������ñ�������ʹ��ݣ������ϸ���ͼ�ζ���ġ���������Լ���Ӧ�ò�����
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
        d = sqrt((X_xc-R_xc)^2 + (X_yc-R_yc)^2);    %����Բ��翹ԲԲ�ľ�
        h = (1-R_xc)*X_yc/d;                        %h>0,�翹Բ��x���Ϸ����������·�
        L = sqrt(4*(1-R_xc)^2 - 4*h^2);             %����Բ��������迹�������߳���
        alpha = atan(X_yc/(1-R_xc));                %�����������
%       disp(alpha)
        Z_x = 1 - 2*R_r + L*cos(alpha);     %����Բ��翹Բ���㣨�迹���㣩
        Z_y = L*sin(alpha);
        r = sqrt(Z_x^2 + Z_y^2);            %����ϵ��Բ�뾶
%       disp(r)
    else
        Z_x = -1;
        Z_y = 0;
        r =1;
    end
    handles.Gamma_Re = round(Z_x, acc);             %gammaʵ��
    handles.Gamma_Im = round(Z_y, acc);             %gamma�鲿
    % ���Ʒ���ϵ��Բ
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

