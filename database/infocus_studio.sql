

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Phone` int(30) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `orders` (`order_id`, `Firstname`, `Lastname`, `Phone`, `service_name`, `price`, `date`) VALUES
(9, 'NIRINGIYIMANA', 'BERNARD', 782403317, 'photography', 1000, '2024-05-16'),
(10, 'NIRINGIYIMANA', 'BERNARD', 782403317, 'photography', 1000, '2024-05-16');


CREATE TABLE `services` (
  `service_id` int(100) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `price` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `services` (`service_id`, `service_name`, `price`) VALUES
(1, 'photography', 1000),
(2, 'Videography', 7888);



CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(200) NOT NULL,
  `phone` int(30) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `users` (`user_id`, `Firstname`, `Lastname`, `phone`, `Username`, `Password`) VALUES
(3, 'NIRINGIYIMANA', 'BERNARD', 782403317, 'bernard', '1234'),
(4, 'NIRINGIYIMANA', 'BERNARD', 782403317, 'admin', '555555');


ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);


ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `services`
  MODIFY `service_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

