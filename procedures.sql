-- Procedure to update order status
CREATE OR REPLACE PROCEDURE UpdateStatus (
    p_OrderID IN NUMBER,
    p_Status IN VARCHAR2
) AS
BEGIN
    UPDATE Orders
    SET Status_ = p_Status 
    WHERE OrderID = p_OrderID;
    
    COMMIT;
END;