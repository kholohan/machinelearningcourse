function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

    % Hypothesis function,  result is predictions
    hypothesis = X * theta;
	
    % Errors - Distance between hypothesis(h(x) and actual(y)
    errors = hypothesis .- y;
   
    % Squared error / Mean squared error
    squaredErrors = (errors).^2;

    % Sum of squared errors
    sumOfSquaredErrors = sum(squaredErrors);

    %J - or accuracy of prediction (closer to 0 the better)
    J = 1 / (2 * m) * (sumOfSquaredErrors);

% =========================================================================

end
