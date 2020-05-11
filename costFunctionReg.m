function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
% m = length(y); % number of training examples

data = load('ex2data1.txt');
X = data(:, [1, 2]); y = data(:, 3);
m = length(y); % number of training examples
X = [ones(m,1),X];
theta = zeros(3,1);


% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));
lambda = 1;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%[cost, grad] = costFunction(theta, X, y);
%[cost, grad] = costFunction(theta, X, y) + (lambda/2*m)*sum(theta.^2)
%g = 1./(1+exp(-X*theta));
%grad = (1/m)*sum((g - y)'*X)';
theta_reg = theta(2:3,:);
X_reg = X(:,(2:3));
sig = sigmoid(X*theta);
J = (1/m)*sum(-y.*log(sig) - (1-y).*log(1-sig)) + (lambda/2*m)*(theta_reg.^2)
grad = (1/m)*((sig - y)'*X_reg)' + (lambda/m)*(theta_reg)

% =============================================================

end
