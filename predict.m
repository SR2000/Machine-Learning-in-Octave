function p = predict(theta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

data = load('ex2data1.txt');
X = data(:, [1, 2]); y = data(:, 3);
m = length(y); % number of training examples
X = [ones(m,1),X];

% You need to return the following variables correctly
p = zeros(m, 1);
initial_theta = zeros(3,1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters.
%               You should set p to a vector of 0's and 1's
%

options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, cost] = fminunc(t@costFunction(t,X,y), initial_theta, options);
%if sigmoid(theta'*X) >= 0.5, p = 1
if sigmoid(X*theta) >= 0.5
  p = 1
else
  p = 0

% =========================================================================


end
