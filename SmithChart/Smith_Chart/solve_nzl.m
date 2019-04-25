function handles = solve_nzl(handles)
% 计算并显示归一化阻抗
global Im_Z0 Im_ZL Im_zl Re_Z0 Re_ZL Re_zl
global acc
if  ~isnan(Re_ZL) && ~isnan(Re_Z0) && ~isnan(Im_ZL) && ~isnan(Im_Z0)
    Z0 = Re_Z0 + Im_Z0*1i;
    ZL = Re_ZL + Im_ZL*1i;
    zl = ZL/Z0;
    Re_zl = round(real(zl), acc);
    Im_zl = round(imag(zl), acc);
    set(handles.Rezl, 'String', num2str(Re_zl));
    set(handles.Imzl, 'String', num2str(Im_zl));
end
end

