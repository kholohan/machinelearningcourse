function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    % Hypothesis function,  result is predictions
    hypothesis = X * theta;
	
    % Errors - Distance between hypothesis(h(x) and actual(y)
    errors = hypothesis .- y;

    % X_column1 = mx1 column vector
    X_column1 = X(:, 1);

    % X_column2 = mx1 column vector
    X_column2 = X(:, 2);

    theta(1, 1) = theta(1, 1) - (alpha * (1/m) * errors' * X_column1);
    theta(2, 1) = theta(2, 1) - (alpha * (1/m) * errors' * X_column2);

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
