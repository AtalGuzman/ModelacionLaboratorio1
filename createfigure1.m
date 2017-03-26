function figure1 = createfigure1(X1, Y1)
%CREATEFIGURE1(X1,Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

%  Auto-generated by MATLAB on 26-Mar-2017 11:32:51

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'all');

% Create plot
plot(X1,Y1,'Marker','+','LineStyle','none','Color',[0 1 0]);

% Create title
title('$$a(x) = 4log_5(9x-2)$$','Interpreter','latex','FontSize',20,...
    'FontName','Lucida Bright');

% Create xlabel
xlabel('$$x$$','Interpreter','latex','FontSize',15);

% Create ylabel
ylabel('$$a(x)$$','Interpreter','latex','FontSize',15);

end