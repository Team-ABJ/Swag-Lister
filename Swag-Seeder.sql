use adlister_db;

INSERT INTO users (username, email, password)
VALUES ('JoseHustle', 'josehustle2@yahoo.com', 'josehustlehard'),
       ('BurningBernie', 'feelthebern@yahoo.com', 'berningman'),
       ('BigAl', 'bigal12@yahoo.com', 'biggestofals'),
       ('RailsOfRuby', 'railingruby@yahoo.com', 'rockingruby');

INSERT INTO swag (user_id, title, description, category, price)
VALUES ('1', 'Gucci flip flops', 'Brand new Gucci flip flops that have only been worn outside once', 'shoes', '120'),
       ('1', 'Jordan 11s', 'Like new Jordans with not a mark on them, size 11', 'shoes', '150'),
       ('1', 'Balenciaga hoodie', 'Never before worn grey Balenciaga hoodie', 'shirts', '350'),
       ('2', 'Nike Dri-FIT long sleeve', 'Blue Nike long sleeve shirt size Large', 'shirts', '20'),
       ('2', 'Nike T-shirt', 'Teal Nike Sportswear shirt size Medium', 'shirts', '15'),
       ('2', 'Texas A&M belt', 'Maroon Mission Belt with Texas A&M logo on buckle', 'accessories', '40'),
       ('3', 'Bulliant brown belt', 'Brown leather belt poor condition', 'accessories', '40'),
       ('3', 'Vans belt', 'black and grey checkered Vans belt, good condition', 'accessories', '25'),
       ('3', 'Red Nike T-Shirt', 'Red Nike Dri-FIT t-shirt,never before worn', 'shirts', '20'),
       ('4', 'Adidas Superstars', 'Womens size 6 white Superstars with black stripes, brand new condition', 'shoes',
        '55'),
       ('4', 'Hyperglam Crop Zip Tee', 'Cheetah print crop top, good condition', 'shirts', '40'),
       ('4', 'Adidas Fleece Sweatshirt', 'Pink fleece adidas sweatshirt in new condition', 'shirts', '45');

