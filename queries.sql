-- Obtener todas las bicicletas con su respectiva marca, año y precio, junto con el nombre de la tienda donde se encuentra disponible:
SELECT b.name_bike, b.brand, b.year_bike, b.price, s.name_shop FROM bikes b
JOIN shops s ON b.bike_id = s.bike_id;

-- Obtener todas las ventas con su respectivo estado de pedido, fecha de salida, nombre del cliente y del tienda:
SELECT s.status_order, s.departure_date, c.name_customer, sh.name_shop FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN shops sh ON s.shop_id = sh.shop_id;

-- Obtener el número total de bicicletas vendidas por tienda:
SELECT sh.name_shop, COUNT(*) FROM sales s
JOIN shops sh ON s.shop_id = sh.shop_id
GROUP BY sh.shop_id;

-- Obtener los detalles de las ventas realizadas de la tienda Cycle World
SELECT * FROM sales
JOIN shops ON sales.shop_id = shops.shop_id
WHERE shops.name_shop = 'Cycle World';

-- Cuales son las bicicletas disponibles en The Bike Shop
SELECT name_bike FROM bikes
JOIN shops ON bikes.bike_id = shops.bike_id
WHERE shops.name_shop = 'The Bike Shop';


