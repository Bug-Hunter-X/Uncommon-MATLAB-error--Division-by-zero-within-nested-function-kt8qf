function result = myFunction(input)
  % Some code here that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  result = someCalculation(input);
end

function output = someCalculation(x)
  % This function might have its own errors
  if x == 0
    output = 1; 
  else
    output = x + 1/x; % Potential division by zero
  end
end