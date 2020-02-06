SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
HAVING reservations.end_date < now()::date
ORDER BY reservations.start_date
LIMIT 10;

-- SELECT reservations.*, properties.*, avg(property_reviews.rating) as average_rating
-- FROM reservations
-- JOIN users ON users.id = guest_id
-- JOIN properties ON properties.id = property_id
-- JOIN property_reviews ON property_reviews.property_id = properties.id
-- WHERE users.id = 1
-- GROUP BY properties.id
-- --HAVING end_date < now()
-- ORDER BY reservations.start_date
-- LIMIT 10;