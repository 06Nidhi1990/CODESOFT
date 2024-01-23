-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 01:29 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `disabled` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `slug`, `disabled`) VALUES
(1, 'Fashion', 'admin', 0),
(2, 'Shopping', 'shopping', 0),
(3, 'Travel', 'travel', 0),
(4, 'Fitness', 'fitness', 0),
(5, 'Lifestyle ', 'lifestyle', 0),
(6, 'Marketing', 'marketing', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `content` text,
  `image` varchar(1024) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `content`, `image`, `date`, `slug`) VALUES
(1, 1, 1, 'The Fashion Guitar blog on style', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">The Fashion Guitar is the online blog of Dutch-born Charlotte Groenveld-Van Haren. Now based in New York, she is a mother of two and runs her blog full-time.&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\">Charlotte</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\">&nbsp;has worked with fashion blogs in one of her former jobs until she decided to create one for herself. As a personal style blog, The Fashion Guitar showcases&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\">Charlotte\'s own Fashion sense</span><br></p>', 'uploads/17053955817e4a8b0bcec2670cb484be6a55ca936d.jpg', '2024-01-16 14:29:41', 'the-fashion-guitar-blog-on-style'),
(2, 1, 1, 'Glamazon Diaries perfect blend of Fashion', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">The Fashion Guitar is the online blog of Dutch-born Charlotte Groenveld-Van Haren. Now based in New York, she is a mother of two and runs her blog full-time.&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\">Charlotte</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\">&nbsp;has worked with fashion blogs in one of her former jobs until she decided to create one for herself. As a personal style blog, The Fashion Guitar shoewcases&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\">Charlotte\'s own Fashion sense</span><br></p>', 'uploads/1705395731glamazon-diaries.jpg', '2024-01-16 14:32:11', 'glamazon-diaries-perfect-blend-of-fashion'),
(3, 1, 2, 'Queen Victoria Market', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">Australia is a notable place for traveling purposes. People from all over the world visit the country to see its different attractions. Melbourne is a key city present in Australia that is known for its modernity and warm hospitable people. When in the city you can definitely look around the different historic places along the restaurants and other notable tourists spots. But to more about the culture and practices of a place it is important&nbsp; &nbsp;to tour the markets of the city. One such place in Melbourne is&nbsp;</span><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">Queen Victoria Market</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">&nbsp;which is operating for more than 140 years.</span><br></p>', 'uploads/1705395979cover1.jpeg', '2024-01-16 14:36:20', 'queen-victoria-market'),
(4, 1, 3, 'Samothrace, Sanctuary of the Great Gods', '<p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">Just wrapped up a mad, 9 day dash through 3 Greek Islands after 9 days in Bulgaria. Arrived in Pulau Langkawi, Malayasia last Friday after an absolutely interminable trip from Athens via the mega transport hub of Abu Dhabi and Kuala Lumper. I\'m not entirely sure that Samothraki\'s Mt.Fengari is my 10th Greek Island high point but it\'s close.</p><p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">While the island of Samothraki is fairly small, Fengari Peak is actually the third highest of the Aegean Islands. The elevation is 1611m ASL meaning the mountain has to rise fairly steeply to attain that height on a small island. The train departing Therma is straightforward but above treeline, while mostly well marked, it is hard to follow in places due to the unwanted presence of rock cairns off the main trail.&nbsp;</p>', 'uploads/170539604628411415400_9efec03a56_b.jpg', '2024-01-16 14:37:27', 'samothrace-sanctuary-of-the-great-gods'),
(5, 1, 4, 'Blogilates well designed blog in health and fitness', '<p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", \"Noto Sans\", \"Liberation Sans\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\">BlogilatesÂ  aims to help readers have a good time while getting fit. Its founder, Steve Kamb started the site in 2009 to \"provide a fun place for nerds to learn about health and fitness, chat about gaming and comics and live better lives\"</p><p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", \"Noto Sans\", \"Liberation Sans\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\">Â  Â  Â  Â <span style=\"font-size: 1rem;\">BlogilatesÂ </span><span style=\"font-size: 1rem;\">Â provides beginner guides to various health and fitness, including nutrition and specific workouts. It focuses on building a strong community based on shared interests, to help readers encourage each other and work towards their sharedÂ  goals. This has helpedÂ </span><span style=\"font-size: 1rem;\">BlogilatesÂ </span><span style=\"font-size: 1rem;\">Â become an invaluable resource for people looking to improve their performance who may not feel they fit with the stereotypical \"fitness\" crowd</span></p>', 'uploads/1705396221images (5).jpeg', '2024-01-16 14:40:21', 'blogilates-well-designed-blog-in-health-and-fitness-niche'),
(6, 1, 5, 'Glass Reusable Water Bottles: What a Love!', '<p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">In a world increasingly focused on sustainability and personal well-being, reusable water bottles have emerged as an essential accessory. Among the numerous materials available for these eco-conscious containers, glass stands out as a top choice. There are a lots of benefits of reusable water bottles made from&nbsp;<span style=\"font-weight: bolder;\"><font color=\"#000000\">glass</font>,&nbsp;</span>from environmental friendliness to health advantages</p><p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><span style=\"font-size: 1rem;\">One of the primary benefits of glass reusable water bottles is their eco-friendliness:</span></p><p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">1.&nbsp;<span style=\"font-weight: bolder;\">Recyclability</span>:<span style=\"font-weight: bolder;\">&nbsp;</span>Glass is 100% recyclable and can be recycled endlessly without losing quality. This significantly reduces it\'s environmental footprint!.</p><p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">2.&nbsp;<span style=\"font-weight: bolder;\">Reducing Single-Use Plastic:&nbsp;</span>By choosing over single-use plastic bottles, you \'re contributing to the reduction of plastic waste that litters our environment and harms wildlife.</p><p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">3.&nbsp;<span style=\"font-weight: bolder;\">Durability:&nbsp;</span>Glass bottles are built to last, reducing the need for frequent replacements, further conserving resources.&nbsp;</p>', 'uploads/170539630124B55781-Lifestyle_640x640.jpg', '2024-01-16 14:41:41', 'glass-reusable-water-bottles-what-a-love'),
(7, 1, 5, 'Quintessence Lifestyle Blog By Stacey Bewkes', '<p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">Expanding on global inspiration culled from our continued travels, Susanna are excited to share our new Stylish Traveller II Collection, our second collaboration with D\'Ascoli, the exceptional New Delhi based fashion, home and textile atelier.</p><p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">We have created 14 unique pieces, personal yet practical clothing to bring with you everywhere. A reversible jacket and marked bag a colorful caftan cotton dresses that float and flatter in the right places and tops that are versatile as they are comfortable, these are one and done easy chic pieces.</p>', 'uploads/1705396377a239c19ecf216a2f243ab407e632a3d6.jpg', '2024-01-16 14:42:57', 'quintessence-lifestyle-blog-by-stacey-bewkes'),
(8, 1, 6, 'eMarketer A Digital Markecting', '<p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">Simply put, if you\'re not following&nbsp;<span style=\"font-weight: bolder;\">eMarketer</span>&nbsp;on a daily basis, you\'re missing out on one of the best marketing blogs available online. Chock-full of insights, data, predictions and all other sorts of helpful content, eMarketer deserves a place in your browser bookmarks.</p><p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">&nbsp; &nbsp; &nbsp; If you need to find out what trends are happening in ecommerce, mobile purchasing, social engagement or B2B marketing - just head over to&nbsp; &nbsp; &nbsp;<span style=\"font-size: 1rem;\">eMarketer. Each blog post is just about guaranteed to come with some visual representation on the data, which helps improve comprehension. And it\'s not blogs,&nbsp;</span><span style=\"font-size: 1rem;\">eMarketer&nbsp;</span><span style=\"font-size: 1rem;\">also has podcasts, roundups, videos and webinars you can leverage to keep pace with the rapidly changing online and content marketing worlds.</span></p>', 'uploads/1705396462images (9).jpeg', '2024-01-16 14:44:23', 'emarketer-a-digital-markecting');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `image`, `date`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$mKBsiRYZuADkNOgsasKl9uUYRbudM6VR1tc6MEwaClljEOFH3UTri', 'uploads/17053965911431012214915.jpg', '2024-01-16 14:21:09', 'admin'),
(2, 'nidhishetty', 'herganidhi06@gmail.com', '$2y$10$Qb3cr7X.dHe7SAxMMoUD1.2nS3dTudaNWBeilVU0clmLE8KMASGf2', 'uploads/1706012805images.jpeg', '2024-01-23 17:55:52', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `title` (`title`),
  ADD KEY `slug` (`slug`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
