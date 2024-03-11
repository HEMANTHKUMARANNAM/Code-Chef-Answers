-- Lets begin - How is PLSQL structured
-- Here's a sample PL/SQL block that demonstrates all four components: DECLARE, BEGIN, EXCEPTION, and END.

-- This example will attempt to insert a record into a table, handle any exceptions that may occur, and print relevant messages.

-- Explanation:

-- DECLARE: This is the declaration section where variables and constants are declared. In this example, we declare two variables: v_employee_id and v_employee_name.
-- BEGIN: This is the beginning of the executable section where the actual PL/SQL code is written. Here, we attempt to insert a record into the employees table using the declared variables.
-- EXCEPTION: This section handles exceptions that may occur during the execution of the code within the BEGIN block. In this example, we catch any exceptions using the WHEN OTHERS exception handler, which catches all exceptions not explicitly handled elsewhere.
-- END;: This marks the end of the PL/SQL block.
-- Click on 'Submit' to view the result.







DECLARE
  v_employee_id NUMBER := 103;  -- Declare a variable for employee ID
  v_employee_name VARCHAR2(100) := 'John Doe'; -- Declare a variable for employee name
BEGIN
  -- Attempt to insert a record into the employees table
  INSERT INTO employees (employee_id, employee_name) 
  VALUES (v_employee_id, v_employee_name);
  
  -- If the insert operation is successful, print a success message
  DBMS_OUTPUT.PUT_LINE('Record inserted successfully.');
  
EXCEPTION
  -- Catch any exceptions that may occur during the insert operation
  WHEN OTHERS THEN
    -- Print an error message with the exception details
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

