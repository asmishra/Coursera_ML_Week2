function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

h = [];
for(i = 1:m)
  xi = X(i,:); %1 dataset at a time
  xi = xi'; %column vector
  temp = theta' * xi;
  h = [h; temp]; %Hypothesis column matrix buildup
end

%Compute cost function and return
result = (h - y).^2;
J = sum(result) / (2*m); 


% =========================================================================

end
