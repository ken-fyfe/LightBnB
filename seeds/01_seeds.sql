INSERT INTO users (id, name, email, password) VALUES
  (1, 'Eva Stanley', 'eva.st@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  (2, 'Paul Smith', 'pawl.smith@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  (3, 'Joe Smo', 'asdf@info.org', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (id,
                        owner_id,
                        title,
                        description,
                        thumbnail_photo_url,
                        cover_photo_url,
                        cost_per_night,
                        parking_spaces,
                        number_of_bathrooms,
                        number_of_bedrooms,
                        country,
                        street,
                        city,
                        province,
                        post_code,
                        active) VALUES
  (1, 1, 'Speed Lamp', 'description', 'https://images.pexels.com/photos/123.jpg', 'https://images.pexels.com/photos/1123.jpg',
   8522, 3, 2, 3, 'Canada', '11 Maple Street', 'Calgary', 'Canada', 'T5H2Y6', TRUE),
  (2, 1, 'Lakeside View', 'description', 'https://images.pexels.com/photos/5123.jpg', 'https://images.pexels.com/photos/8123.jpg',
   8522, 3, 2, 3, 'Canada', '811 32 Ave', 'Calgary', 'Canada', 'M5H6Y6', TRUE),
  (3, 2, 'Sleepy Cove', 'description', 'https://images.pexels.com/photos/3123.jpg', 'https://images.pexels.com/photos/2123.jpg',
   8522, 3, 2, 3, 'Canada', '83 Center Street', 'Calgary', 'Canada', 'Y5H2Y6', TRUE);

INSERT INTO reservations (id, start_date, end_date, property_id, guest_id) VALUES
  (1, '2018-09-11', '2018-09-20', 2, 1),
  (2, '2018-08-13', '2018-08-15', 3, 1),
  (3, '2019-04-08', '2019-04-29', 1, 3);

INSERT INTO property_views (id, guest_id, property_id, reservation_id, rating, message) VALUES
  (2, 1, 3, 3, 'messages'),
  (1, 2, 2, 4, 'messages'),
  (1, 3, 2, 5, 'messages');