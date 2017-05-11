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

%initially, theta is 1x2 matrix
% xi = 1x2 matrix
h = [];
for(i = 1:m)
  xi = X(i,:); %1 dataset at a time
  xi = xi'; %column vector (2x1)
  temp = theta' * xi;
  h = [h; temp]; %Hypothesis column matrix buildup
end

%Compute cost function and return
result = (h - y).^2;
J = sum(result) / (2*m); 




% =========================================================================

end
