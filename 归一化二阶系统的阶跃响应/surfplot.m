function [handles] = surfplot(handles)
% handles = surfplot(handles)   供启动子函数和各控件回调子函数调用的绘图函数
% handles   GUI数据变量。该变量保存和传递：界面上各种图形对象的“句柄”，以及“应用参数”
zeta = handles.zeta;
t = handles.t;
listindex = get(handles.listbox1, 'Value');
Nt = length(t);
if handles.flag == 0
    cla
    zmin = get(handles.slider1, 'Min');
    zmax = get(handles.slider1, 'Max');
    zt = zmin:0.05:zmax;
    Nz = length(zt);
    [ZT,T] = meshgrid(zt, t);
    Y = zeros(Nt, Nz);
    for k = 1:Nz
        Y(:,k) = step(tf(1, [1,2*zt(k),1]), t);
    end
    surface(ZT,T,Y);
    shading flat;
else
    delete(handles.g1);
    delete(handles.rline);
end
xz = ones(1,Nt)*zeta;
y1 = ones(1,Nt)*1;
y = step(tf(1, [1, 2*zeta,1]), t);
gz = [zeta, zeta, xz, zeta, zeta, xz];
gt = [t(1), t(1), t, t(end), t(end), fliplr(t)];
gy = [0, 1, y1, 1, 0, 0*y1];
handles.g1 = line(gz, gt, gy, 'color', 'g', 'LineWidth', 1);
handles.rline = line(xz, t, y, 'color', handles.Color, 'LineWidth', 2);
K = length(get(handles.listbox1, 'Value'));
for jj = 1:K
    switch listindex
        case 1
        case 2
            k95 = min(find(y>0.95));
            k952 = [(k95-1), k95];
            t95 = interp1(y(k952), t(k952), 0.95);
            line(zeta, t95, 0.95, 'marker', '+', 'markeredgecolor', 'k', 'markersize', 5);
        case 3
            [ym, km] = max(y);
            if km<Nt && (ym-1)>0
                line(zeta, t(km), ym, 'marker', '.', 'markeredgecolor', 'k', 'markersize', 5);
            end
        case 4
            ii = max(find(abs(y-1)>0.05));
            if ii<Nt
                line(zeta, t(ii+1), y(ii+1), 'color', 'r', 'marker', 'o', 'markersize', 7);
            end
    end
end
xlabel('{\zeta}');
ylabel('t');
zlabel('y');
alpha(0.7);     %控制曲面透明度
view(75, 44);

end

