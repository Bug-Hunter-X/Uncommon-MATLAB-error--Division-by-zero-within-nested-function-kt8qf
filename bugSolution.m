function result = myFunction(input)
  % Improved error handling
  if input < 0
    error('Input must be non-negative');
  elseif input ==0
    error('Input must be greater than zero');
  end
  result = someCalculation(input);
end

function output = someCalculation(x)
  % Robust handling of division by zero
  if x == 0
    output = 1; % Or handle it appropriately based on requirements 
  else
    output = x + 1/x; 
  end
end