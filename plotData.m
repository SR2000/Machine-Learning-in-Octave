data = load('ex2data1.txt');
X = data(:, [1, 2]); y = data(:, 3);

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
