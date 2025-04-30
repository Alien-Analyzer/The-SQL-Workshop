USE packt_online_shop;

SELECT ProductName, NetRetailPrice, UnitKGWeight,
    CASE
        WHEN (NetRetailPrice * UnitKGWeight) <= 1.0 THEN 'Cheap'
        WHEN (NetRetailPrice * UnitKGWeight) > 1.0 AND(NetRetailPrice * 
              UnitKGWeight) <= 35.00 THEN 'Mid-price'
        WHEN (NetRetailPrice * UnitKGWeight) > 35.00 AND 
             (NetRetailPrice * UnitKGWeight) <= 100.00 THEN 'Expensive'
        ELSE 'Very Expensive'
    END AS 'Shipping Cost'
FROM products;

USE packt_online_shop;
SELECT OrderID as 'Order Number', ShipmentDate as 'Shipment Date',
    CASE
        WHEN ShipmentDate < '2010-12-15' THEN 'Past Shipment Date'
        WHEN ShipmentDate >= '2010-12-15' AND ShipmentDate < '2019-12-15' THEN 'Recent Shipment Date'
        ELSE 'Future Shipment Date'
    END AS 'Shipment Date Category'
FROM orders
ORDER BY ShipmentDate;
