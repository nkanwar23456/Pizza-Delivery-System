-- Trigger to set default order status
CREATE OR REPLACE TRIGGER OrderGiven 
BEFORE INSERT ON Orders
FOR EACH ROW
BEGIN
    :NEW.Status_ := 'Order Placed';
END;

-- Trigger to auto-generate OrderID using sequence
CREATE OR REPLACE TRIGGER Autoval
BEFORE INSERT ON Orders
FOR EACH ROW
BEGIN
    IF :NEW.OrderID IS NULL THEN
        :NEW.OrderID := SEQ.NEXTVAL;
    END IF;
END;

-- Sequence for OrderID
CREATE SEQUENCE SEQ
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;