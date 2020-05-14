function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

fprintf(['Plotting data with + indicating (y = 1) examples and o ' ...
         'indicating (y = 0) examples.\n']);

admitted = find(y==1);
not_admitted = find(y==0);

plot(X(admitted,1),X(admitted,2), "kx", 'LineWidth', 2, 'MarkerSize', 7);
%plot(X(admitted,1),X(admitted,2), "kx");
hold on;
plot(X(not_admitted,1),X(not_admitted,2), "ko", 'MarkerFaceColor', 'y', 'MarkerSize', 7);
%plot(X(not_admitted,1),X(not_admitted,2), "ko");
% Put some labels
hold on;
% Labels and Legend
xlabel('Exam 1 score')
ylabel('Exam 2 score')

% Specified in plot order
legend('Admitted', 'Not admitted')
hold off;

fprintf('\nProgram paused. Press enter to continue.\n');
pause;







% =========================================================================



hold off;

end
