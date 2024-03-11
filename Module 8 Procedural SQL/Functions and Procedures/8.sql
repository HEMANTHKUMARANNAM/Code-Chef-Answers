-- Positional and notational parameters
-- In PL/SQL, parameters can be passed to procedures and functions in two main ways: positional parameters and notational parameters.

-- Positional Parameters:
-- Notational parameters are passed to a procedure or function by explicitly specifying the parameter names along with their values.
-- The caller can provide values for parameters in any order, as long as they are explicitly identified by their parameter names.
-- Notational parameters provide more flexibility and readability compared to positional parameters, especially when dealing with procedures or functions with a large number of parameters or when only a subset of parameters needs to be provided.
-- You can also mix positional and notational parameters in the same call:

-- procedure_name(value1, parameter_name2 => value2, parameter_name3 => value3, ...);
-- Check out the code in the IDE as an example.
-- Run the code to check the output. Notice the following

-- print_full_name() provide output with the existing parameters with default values
-- print_full_name(last_name => 'Smith', first_name => 'Alice') provides output with the actual parameters - even though their positions are interchanged, these are correctly ordered in the output