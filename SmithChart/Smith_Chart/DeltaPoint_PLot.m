function handles = DeltaPoint_PLot(handles)
% handles = DeltaPonit_plot(handles)   找到移动ΔL后的阻抗点，并绘图
% handles   GUI数据变量。该变量保存和传递：界面上各种图形对象的“句柄”，以及“应用参数”
global acc
if handles.TG == 1 || handles.TL == 1
    delta_l = handles.Delta_L;
    theta = 4*pi*delta_l;
    Z_x = handles.Gamma_Re;            
    Z_y = handles.Gamma_Im;
    r = sqrt(Z_x^2 + Z_y^2);
    if Z_x<0 && Z_y>0
        alpha = atan(Z_y/Z_x) + pi;
    elseif Z_x<0 && Z_y<0
        alpha = atan(Z_y/Z_x) - pi;
    elseif Z_y == 0
        if Z_x == 1
            alpha = 0;
        else
            alpha = pi;
        end
    else
        alpha = atan(Z_y/Z_x);
    end

    if handles.TG == 1
        alpha = alpha - theta;       
    elseif handles.TL == 1
        alpha = alpha + theta;
    end
    Z_x1 = r * cos(alpha);
    Z_y1 = r * sin(alpha);
%     handles.Z_x1 = Z_x1;
%     handles.Z_y1 = Z_y1;
    if Z_y1<0
        f = '';
    else
        f = '+';
    end
    if handles.TG == 1
        handles.DeltaPoint_G = plot(Z_x1, Z_y1, 'color', 'b', 'marker', 'o');
        handles.DPLine_G = line ([Z_x1, 0], [Z_y1, 0], 'color', 'b');
        set(handles.GammaToG, 'String', [num2str(round(Z_x1,acc)),f,num2str(round(Z_y1,acc)),'j'])
    elseif handles.TL == 1
        handles.DeltaPoint_L = plot(Z_x1, Z_y1, 'color', 'c', 'marker', 'o');
        handles.DPLine_L = line ([Z_x1, 0], [Z_y1, 0], 'color', 'c');
        set(handles.GammaToL, 'String', [num2str(round(Z_x1,acc)),f,num2str(round(Z_y1,acc)),'j'])
    end
    hold on;
end
end

