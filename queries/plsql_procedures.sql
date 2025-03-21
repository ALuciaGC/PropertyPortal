-- PL/SQL: Procedure to update selling price
CREATE OR REPLACE PROCEDURE update_selling_price (
  p_property_id IN SOLD.SOLD_PROPERTY%TYPE,
  p_new_price IN SOLD.SELLING_PRICE%TYPE
) IS
BEGIN
  UPDATE SOLD
  SET SELLING_PRICE = p_new_price
  WHERE SOLD_PROPERTY = p_property_id;
END;
/

-- PL/SQL: Show customers with more than 1 viewing
BEGIN
  FOR cust IN (
    SELECT CUSTOMER, COUNT(*) AS views
    FROM VIEWING
    GROUP BY CUSTOMER
    HAVING COUNT(*) > 1
  )
  LOOP
    DBMS_OUTPUT.PUT_LINE('Customer: ' || cust.CUSTOMER || ' has ' || cust.views || ' viewings.');
  END LOOP;
END;
/
