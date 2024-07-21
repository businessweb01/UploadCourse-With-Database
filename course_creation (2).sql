-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2024 at 04:54 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_creation`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive`
--

CREATE TABLE `archive` (
  `archive_id` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  `instructor_email` varchar(128) NOT NULL,
  `course_Id` int(11) NOT NULL,
  `lessonNumber` varchar(50) NOT NULL,
  `videoPath` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archive`
--

INSERT INTO `archive` (`archive_id`, `videoId`, `instructor_email`, `course_Id`, `lessonNumber`, `videoPath`) VALUES
(24, 75, 'John@example.com', 13, 'Lesson 1', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 1/Talong kong Malaki Vol. 1.mp4'),
(25, 76, 'John@example.com', 13, 'Lesson 2', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 2/Talong kong Malaki Vol. 1.mp4'),
(26, 77, 'John@example.com', 13, 'Lesson 1', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 1/Talong kong Malaki Vol. 1(2024).mp4'),
(27, 78, 'John@example.com', 13, 'Lesson 1', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 1/Talong kong Malaki Vol. 1.mp4'),
(28, 84, 'John@example.com', 13, 'Lesson 1', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 1/Matabang Pechay Vol 3(2024).mp4'),
(29, 79, 'John@example.com', 13, 'Lesson 1', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 1/Talong kong Malaki Vol. 1.mp4'),
(30, 83, 'John@example.com', 13, 'Lesson 1', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 1/Talong kong Malaki.mp4'),
(31, 82, 'John@example.com', 13, 'Lesson 2', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 2/Talong kong Malaki Vol. 2(2024).mp4'),
(32, 85, 'John@example.com', 13, 'Lesson 1', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 1/Talong kong Malaki Vol. 1.mp4'),
(33, 86, 'John@example.com', 13, 'Lesson 1', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 1/Talong kong Malaki Vol. 2 2024.mp4'),
(34, 80, 'John@example.com', 13, 'Lesson 1', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 1/Talong kong Malaki Vol. 2.mp4'),
(35, 87, 'John@example.com', 13, 'Lesson 1', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 1/Talong kong Malaki Vol. 1(2024).mp4'),
(36, 81, 'John@example.com', 13, 'Lesson 2', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 2/Talong kong Malaki Vol. 1(2024).mp4'),
(37, 88, 'John@example.com', 13, 'Lesson 1', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 1/Talong kong Malaki Vol. 1.mp4'),
(38, 89, 'John@example.com', 13, 'Lesson 1', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 1/Talong kong Malaki Vol. 1.mp4'),
(39, 90, 'John@example.com', 13, 'Lesson 2', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 2/Talong kong Malaki Vol. 1(2024).mp4'),
(40, 91, 'John@example.com', 13, 'Lesson 2', '../courses/John@example.com/Paano mag Palaki ng Talong/Lesson 2/Talong kong Malaki Vol. 2 2024.mp4'),
(41, 98, 'john@gmail.com', 53, 'Lesson 1', '../courses/john@gmail.com/Map/Lesson 1/Talong kong Malaki Vol. 2(2024).mp4');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseId` int(11) NOT NULL,
  `courseName` varchar(128) NOT NULL,
  `instructor_email` varchar(128) NOT NULL,
  `difficulty` varchar(20) NOT NULL,
  `lessons` int(6) NOT NULL,
  `description` text NOT NULL,
  `course_ratings` float NOT NULL,
  `thumbnail` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseId`, `courseName`, `instructor_email`, `difficulty`, `lessons`, `description`, `course_ratings`, `thumbnail`) VALUES
(53, 'Map', 'john@gmail.com', 'Begginner', 2, 'asdasd', 0, 'Map.png'),
(54, 'AgriLearn', 'john@gmail.com', 'Begginner', 1, 'Introduction To AgriLearn', 0, 'AgriLearn.png');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `instructor_name` varchar(80) NOT NULL,
  `email` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `ratings` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructor_name`, `email`, `address`, `contact_no`, `ratings`) VALUES
('John', 'john@gmail.com', 'USA', '09765407546', 4);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `correct_answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question_text`, `correct_answer`) VALUES
(33, 37, 'asd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `question_choices`
--

CREATE TABLE `question_choices` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `choice_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_choices`
--

INSERT INTO `question_choices` (`id`, `question_id`, `choice_text`) VALUES
(125, 33, 'asda'),
(126, 33, 'dasdas'),
(127, 33, 'dasda'),
(128, 33, 'dasd');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `timer` int(11) NOT NULL,
  `passing_grade` int(11) NOT NULL,
  `course_Id` int(11) NOT NULL,
  `lessonNumber` varchar(20) NOT NULL,
  `instructor_email` varchar(128) NOT NULL,
  `num_questions` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `timer`, `passing_grade`, `course_Id`, `lessonNumber`, `instructor_email`, `num_questions`) VALUES
(37, 'Multiple Choice Quiz for Map Lesson 1', 1, 1, 53, 'Lesson 1', 'john@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviewId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profile_picture` varchar(50) NOT NULL,
  `rating` float NOT NULL,
  `review` text NOT NULL,
  `reviewed_instructor` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviewId`, `name`, `profile_picture`, `rating`, `review`, `reviewed_instructor`) VALUES
(6, 'Eugene Van', 'Eugene Van.png', 5, 'Eyyyy', 'john@gmail.com'),
(7, 'agrilearn', 'agrilearn.png', 3, 'Okay lang need some improvements pa', 'john@gmail.com'),
(8, 'agrilearn', 'agrilearn.png', 5, 'ayos ah nag improve na', 'john@gmail.com'),
(9, 'agrilearn', 'agrilearn.png', 1, 'yun lang.', 'john@gmail.com'),
(10, 'agrilearn', 'agrilearn.png', 5, 'Sheeshhh', 'john@gmail.com'),
(11, 'Test1', 'Test1.png', 5, 'Galing!', 'john@gmail.com'),
(12, 'agrilearn', 'agrilearn.png', 2, 'Keep it consistent', 'john@gmail.com'),
(13, 'agrilearn', 'agrilearn.png', 4, 'Nice!', 'john@gmail.com'),
(14, 'agrilearn', 'agrilearn.png', 5, 'Nice improvements! Keep it up!', 'john@gmail.com'),
(15, 'TrashToCash', 'TrashToCash.png', 5, 'Very Good Explanation', 'john@gmail.com'),
(16, 'agrilearn', 'agrilearn.png', 2, 'Inconsistent', 'john@gmail.com'),
(17, 'agrilearn', 'agrilearn.png', 1, 'Bobo', 'john@gmail.com'),
(18, 'agrilearn', 'agrilearn.png', 5, 'Nice!', 'john@gmail.com'),
(19, 'agrilearn2', 'agrilearn2.png', 5, 'Your Contents are getting better', 'john@gmail.com'),
(20, 'agrilearn2', 'agrilearn2.png', 5, 'Keep up the Good Work', 'john@gmail.com'),
(21, 'agrilearn2', 'agrilearn2.png', 3, 'Sakto lang', 'john@gmail.com'),
(22, 'agrilearn2', 'agrilearn2.png', 5, 'Good Job!', 'john@gmail.com'),
(23, 'agrilearn2', 'agrilearn2.png', 5, 'Nice! Goodjob!', 'john@gmail.com'),
(24, 'agrilearn2', 'agrilearn2.png', 5, 'That\'s Awesome!', 'john@gmail.com'),
(25, 'TrashToCash', 'TrashToCash.png', 1, 'Not Good', 'john@gmail.com'),
(26, 'agrilearn', 'agrilearn.png', 5, 'Great Job !', 'john@gmail.com'),
(27, 'agrilearn2', 'agrilearn2.png', 5, 'Consistent na! Galinggg!!!', 'john@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `videolessons`
--

CREATE TABLE `videolessons` (
  `videoId` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `lessonNumber` varchar(10) NOT NULL,
  `videoPath` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videolessons`
--

INSERT INTO `videolessons` (`videoId`, `course_id`, `lessonNumber`, `videoPath`) VALUES
(97, 53, 'Lesson 1', '../courses/john@gmail.com/Map/Lesson 1/Talong kong Malaki Vol. 1(2024).mp4'),
(99, 54, 'Lesson 1', '../courses/john@gmail.com/AgriLearn/Lesson 1/Welcome Instructor.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`archive_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`courseId`),
  ADD KEY `instructor_email` (`instructor_email`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `question_choices`
--
ALTER TABLE `question_choices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseId` (`course_Id`),
  ADD KEY `instructor_email` (`instructor_email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviewId`);

--
-- Indexes for table `videolessons`
--
ALTER TABLE `videolessons`
  ADD PRIMARY KEY (`videoId`),
  ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive`
--
ALTER TABLE `archive`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `courseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `question_choices`
--
ALTER TABLE `question_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `videolessons`
--
ALTER TABLE `videolessons`
  MODIFY `videoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`instructor_email`) REFERENCES `instructor` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_choices`
--
ALTER TABLE `question_choices`
  ADD CONSTRAINT `question_choices_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`instructor_email`) REFERENCES `instructor` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizzes_ibfk_2` FOREIGN KEY (`course_Id`) REFERENCES `courses` (`courseId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videolessons`
--
ALTER TABLE `videolessons`
  ADD CONSTRAINT `videolessons_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`courseId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
