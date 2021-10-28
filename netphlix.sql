-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2021 at 06:15 PM
-- Server version: 10.3.29-MariaDB-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1343574_netphlix`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `email`, `password`) VALUES
(1, 'stephanusaditya17@gmail.com', 'QU5vczBuU2ROVkNFOUZYaGZodGpQUT09'),
(2, 'jo@gmail.com', 'RHd4WlQ4eTVGUlRZSXgzTDkxc28zUT09');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `movieGenreId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  `releaseDate` date NOT NULL,
  `isSeries` tinyint(1) NOT NULL,
  `isMature` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movieGenreId`, `title`, `image`, `trailer`, `synopsis`, `releaseDate`, `isSeries`, `isMature`) VALUES
(1, 1, 'Daredevil', 'https://drive.google.com/uc?id=1Z4MJ-1Q3MfMB6DxJB7dOmLtZ3gvkrAGq', 'https://drive.google.com/uc?id=1yzCG8jNpPkmP9k689k6pnNFidG-ZyHev', 'Blinded as a young boy, Matt Murdock fights injustice by day as a lawyer and by night as the Super Hero Daredevil in Hell\'s Kitchen, New York City.', '2015-04-10', 1, 1),
(2, 1, 'Iron Fist', 'https://drive.google.com/uc?id=1l84KPoEcU3r3Rumru7cBPjSajmOnhMim', 'https://drive.google.com/uc?id=1oyGNy7WpFX-yaUpqIFie4nNkMMOfUAKZ', 'Danny Rand resurfaces 15 years after being presumed dead. Now, with the power of the Iron Fist, he seeks to reclaim his past and fulfill his destiny.', '2017-03-17', 1, 0),
(3, 1, 'Vagabond', 'https://drive.google.com/uc?id=19SR5AFMHpfQp9nSOqoVe74iUlScPi2kx', 'https://drive.google.com/uc?id=1jAz47lVvwtXN0Exl6TKP1XZ4b4Vi050b', 'When his nephew dies in a plane crash, stunt man Cha Dal-geon resolves to find out what happened, with the help of covert operative Go Hae-ri.', '2019-11-20', 1, 0),
(4, 1, 'The Witcher', 'https://drive.google.com/uc?id=1DGDuY1es_lSd6yGrZGD6OMVw4HQ7C9SS', 'https://drive.google.com/uc?id=1ebD15l584nluOTdpGXe0c3bmxNzLCJ5Q', 'Geralt of Rivia, a mutated monster-hunter for hire, journeys toward his destiny in a turbulent world where people often prove more wicked than beasts.', '2019-12-20', 1, 1),
(5, 1, 'The K2', 'https://drive.google.com/uc?id=1ecyRAoFgREBXwVJaYCCG6tfblKx9A7gf', 'https://drive.google.com/uc?id=17lIdmhg7V_HL6U9pwUO8DWeSKfyFr4eQ', 'A fugitive soldier gets swept up in personal and political intrigue when he\'s hired as a bodyguard for the family of a presidential candidate.', '2016-11-23', 1, 0),
(6, 1, 'Arrow', 'https://drive.google.com/uc?id=1cNoM3nD0cNFkq9II9NXzfAD88Ou2pT3h', 'https://drive.google.com/uc?id=13U_fo7Q2ULaJoHUbqyubiCrRUvE-ReSU', 'Based on DC Comics\' Green Arrow, an affluent playboy becomes a vengeful superhero, saving the city from villains armed with just a bow and arrows.', '2012-10-10', 1, 1),
(7, 1, 'The Flash', 'https://drive.google.com/uc?id=17_zfkrGukjwZ-pKwLWJP6lwpStb31EiN', 'https://drive.google.com/uc?id=1uDNwknQvHSSKCM5OotRymbuBC1gsomZE', 'A forensics expert who wakes from a coma with amazing new powers squares off against forces threatening the city in this live-action superhero romp.', '2014-10-07', 1, 0),
(8, 1, 'Supergirl', 'https://drive.google.com/uc?id=160YFaK-iIx33fbehrb5oudL464eElEbo', 'https://drive.google.com/uc?id=1g3ApRxfvAZnZ2aSf_gImvcQxPx02Mvws', 'To avert a disaster, Kara Danvers reveals her powers and true identity: She is Superman\'s cousin, now known as Supergirl, protector of National City.', '2015-10-26', 1, 0),
(9, 1, 'The Uncanny Counter', 'https://drive.google.com/uc?id=1Nmjy5lSEHHY-9qhNUefQ2c7piBiWAjWP', 'https://drive.google.com/uc?id=1U-craQgj08jMJqy-trGCTl5pQnlmAgIr', 'While the Counters attempt to keep the truth behind his painful past from Mun, he discovers a mysterious memory card among his parents\' belongings.', '2020-11-28', 1, 0),
(10, 1, 'Titans', 'https://drive.google.com/uc?id=1QYchTd1xuV4wgRmXQOGWtSK0XbjXADQk', 'https://drive.google.com/uc?id=1x6nXo2VaC2WLSVGyRc_vPrYQCk3ORfP4', 'After striking out on his own, Batman\'s former partner Dick Grayson encounters a number of troubled young heroes in desperate need of a mentor.', '2018-10-12', 1, 1),
(11, 1, 'Spiderman Homecoming', 'https://drive.google.com/uc?id=1SOT097gNS_tuqG1fbvaI7O5X_b4vuaNe', 'https://drive.google.com/uc?id=14ms483zoobzr1ujy10nC0nf9b5_sUJ50', 'Peter Parker returns to routine life as a high schooler until the Vulture\'s arrival gives him the chance to prove himself as a web-slinging superhero.', '2017-06-28', 0, 0),
(12, 1, 'Aquaman', 'https://drive.google.com/uc?id=1zSMlyJRiJ5zbHGHar925-ay1CdC5XqO8', 'https://drive.google.com/uc?id=1S0akJNUuS1Amt1u78AewME0pz4mTHrWe', 'Amphibious superhero Arthur Curry learns what it means to be Aquaman when he must stop the king of Atlantis from waging war against the surface world.', '2018-12-21', 0, 0),
(13, 1, 'Shazam!', 'https://drive.google.com/uc?id=1XnRDxywd4yUsnEbGHsnkFOpGtZuyR8fo', 'https://drive.google.com/uc?id=1X2tcC1V8KmktJjIU13iWYIR7Bkrb9F91', 'When a foster teen shows his true heart, he gains the ability to transform into an adult superhero that must defend his city from sinful villains.', '2019-04-05', 0, 0),
(14, 1, 'IP Man', 'https://drive.google.com/uc?id=15L7JNbDvaMLS-vfC9K2OXMogFhFFDoM2', 'https://drive.google.com/uc?id=1aP3aXs5Dn81zNlQLfyFUpJDDeCQbqq8F', 'An occupying Japanese general challenges Chinese men to duels to prove the superiority of the Japanese, but Ip Man refuses to fight -- at first.', '2019-04-29', 0, 0),
(15, 1, 'The Meg', 'https://drive.google.com/uc?id=1u60l37eKDQCZqAu6w2bcZ5RypmIMLf2U', 'https://drive.google.com/uc?id=1jHpK9dXqhG39xMZsy3yh93nOjHjp9RoT', 'A washed-out rescue diver is pulled back in for one more job -- to save his friends from a monstrous megalodon, long thought extinct.', '2018-08-10', 0, 1),
(16, 1, 'John Wick', 'https://drive.google.com/uc?id=1mQIlS5-rMkL34bD9_wB0jOois9kTWpbp', 'https://drive.google.com/uc?id=1A0oZ9hj1DXvoG50eh9i6iBGayKgMeuA6', 'When a gangster\'s son steals his car and kills his dog, fearless ex-hit man John Wick takes on the entire mob to get his revenge.', '2014-10-13', 0, 1),
(17, 1, 'Maze Runner: Scorch Trial', 'https://drive.google.com/uc?id=1NOfDLSt9u88EAi9Zi187CYPShLKm7Mc_', 'https://drive.google.com/uc?id=1DolmGViQcc-fDL02I63sltrqoieGa9dn', 'Teens immune to the zombie virus that has overtaken the planet make their way through desert terrain pursued by undead and a sinister organization.', '2015-11-11', 0, 0),
(18, 1, 'Mission Impossible: Rogue Nation', 'https://drive.google.com/uc?id=1sr2X_RVnnlvArTLzL_bBt0s3v1QBycke', 'https://drive.google.com/uc?id=1GEJXtmI-dIZJoPyag_ad31FliKeVbFSZ', 'When the IMF is dissolved, Ethan Hunt and his allies launch their own war against the Syndicate, a group of renegade spies bent on world destruction.', '2015-08-01', 0, 0),
(19, 1, 'Man of Steel', 'https://drive.google.com/uc?id=1kqw-C3BEsuxRKF8l1nS2dCYeIqHdkrzY', 'https://drive.google.com/uc?id=1HidwMc_XbgquYArkz2fBnEcn978B0oeM', 'Drifter Clark Kent must keep his powers hidden from the world, but when an evil general plans to destroy Earth, the Man of Steel springs into action.', '2013-06-13', 0, 0),
(20, 1, 'The Amazing Spider-man', 'https://drive.google.com/uc?id=1FVEdvUyLd320-foDVszT6vOLLyYIvcqP', 'https://drive.google.com/uc?id=14gtkU6RJgccKbYMfQP3zDHO6fj2-DRuc', 'In this reboot of the superhero franchise, high school lad Peter Parker learns to wield his newfound powers while facing down arch-villain The Lizard.', '2012-07-04', 0, 0),
(21, 2, 'Hello, Me!', 'https://drive.google.com/uc?id=1eUpGjeKcqJOmLT6IkI0tt-8tVYkY-wjj', 'https://drive.google.com/uc?id=1Cf5nXdTiM0b70a8QkNIzj9X78RSQdeMw', 'Miserable and unsuccessful, a woman thinks she\'s lost all her spark - until one day, her spunky younger self appears in front of her demanding change.', '2021-02-17', 1, 0),
(22, 2, 'Welcome to Waikiki 2', 'https://drive.google.com/uc?id=1itk_w3-xgd_f3s6y1JRf5i9JEo2WHpPY', 'https://drive.google.com/uc?id=1H3USOv-_EKjvP5jHtbbOiwqUVU9THqm1', 'Actor Lee Jun-ki ropes two longtime friends into investing in the Seoul guesthouse he runs on the side, where their old crush from school comes to stay.', '2019-03-25', 1, 0),
(23, 2, 'Emily in Paris', 'https://drive.google.com/uc?id=1djRISWm4SDN7RMQ4mqepGdkqhr1swp10', 'https://drive.google.com/uc?id=11unsS6851CEhDhpxZxkoPq9K47nS-7Rz', 'After landing her dream job in Paris, Chicago marketing exec Emily Cooper embraces her adventurous new life while juggling work, friends and romance.', '2020-10-02', 1, 0),
(24, 2, 'Do Do Sol Sol La La Sol', 'https://drive.google.com/uc?id=1Kbaee2REXHYoYetpIlHiHmj2u_Qs5zDE', 'https://drive.google.com/uc?id=1zL5_M0SI4CW_KhMCFgvfHTHZhPlsCzhV', 'A riches-to-rags pianist who loses everything but her smile is guided by twinkling little stars to a small town where she finds hope, home and love.', '2020-10-07', 1, 0),
(25, 2, 'Strong Girl Bong Soon', 'https://drive.google.com/uc?id=1vfrCI5sBuQTaHWLrZgyaPy8Dijk0GOh3', 'https://drive.google.com/uc?id=1ZTF5Tzm2FnTEaLL6uW11_o9pvLCZGEh0', 'Born with supernatural strength, Bong-soon fights evil and procures justice while getting tangled in a love triangle with her CEO boss and cop crush.', '2017-02-24', 1, 0),
(26, 2, 'Weightlifting Fairy Kim Bok-Joo', 'https://drive.google.com/uc?id=1AWu9AMClQ0lFieTlYY81lvC9OlBADUth', 'https://drive.google.com/uc?id=1hJjXaTB6CW4UcuWdayvE1YdQQvYPRTEh', 'A competitive swimmer crosses paths with his childhood friend, a rising weight lifting star, and realizes that she has a secret crush on his cousin.\r\n', '2016-11-16', 1, 0),
(27, 2, 'Oh My Baby', 'https://drive.google.com/uc?id=1BETGGA9-ZMhf5AAzJXeDh_9uiBIC6-Ki', 'https://drive.google.com/uc?id=1yOm7OeK38A79sQ_fXugV_tsoUYk2Mcsu', 'On the brink of 40 and single, a magazine editor aims to bypass marriage and skip ahead to the baby and happiness part of her story.', '2020-05-13', 1, 0),
(28, 2, 'The Sound of Your Heart', 'https://drive.google.com/uc?id=10qgg3G3V7DPNR77Tux0yFC8_0BSQA1t2', 'https://drive.google.com/uc?id=1bA5-bFzZ9IDHKhQ87rnDmlDO-oglxOqq', 'Based on Korea\'s longest-running webtoon series, this comedy follows the ridiculous daily lives of a cartoonist, his girlfriend and his subpar family.', '2016-07-11', 1, 0),
(29, 2, 'Welcome to Waikiki', 'https://drive.google.com/uc?id=1WxVMmzH6yq7dg6mzVUfhCqz9P7cIxBx7', 'https://drive.google.com/uc?id=1OqPrkCLQSbk_jRdKom3jSVUJ8fijO3Y-', 'To finance their own film project, an aspiring director, actor and screenwriter run a Seoul guesthouse that brings antics and romance into their lives.\r\n', '2018-02-05', 1, 0),
(30, 2, 'Prison Playbook', 'https://drive.google.com/uc?id=1IEBUBmrtY-qF3tueUfG01ge1GjKZ_61B', 'https://drive.google.com/uc?id=1BkMkJ3I4rge9n2xyaKDhtOmpFOniK8Xf', 'With his major league baseball debut right around the corner, a star pitcher lands in prison and must learn to navigate his new world.', '2017-11-22', 1, 0),
(31, 2, 'Sweet & Sour', 'https://drive.google.com/uc?id=1T-Q49Er8H1_Pl2nYIVqmCg-ovB97xKJD', 'https://drive.google.com/uc?id=1GbnI12KL9-19j0y5ML4rO0b_LESYi4mH', 'Faced with real-world opportunities and challenges, a couple endures the highs and lows of trying to make a long-distance relationship survive.', '2021-06-01', 0, 0),
(32, 2, 'Bad Boys for Life', 'https://drive.google.com/uc?id=1Plp8820lLvIyh9c_EC76GhoZr5zuTydc', 'https://drive.google.com/uc?id=1zAS_uC0QVtSNlp0U38w4XqGcwthAyxUp', 'Even bad boys grow up, and Miami cop Marcus is ready for his well-deserved retirement - until partner Mike is targeted by a cutthroat drug cartel.', '2020-01-17', 0, 1),
(33, 2, 'The Guys', 'https://drive.google.com/uc?id=1AN2zBvBHNShm9DReK7Si32m57cIwmMEF', 'https://drive.google.com/uc?id=1elOoDSmSF2-2QEmHYMagQQlnxzs9HgmR', 'Hapless office worker Alfi needs help from his pals when he unexpectedly falls for the daughter of his boss - a stern man with eyes for Alfi\'s mom.', '2017-04-13', 0, 0),
(34, 2, 'Single', 'https://drive.google.com/uc?id=1aQ39keNaajmY-VaXxVGcwmujSIVOyy80', 'https://drive.google.com/uc?id=1iuRSzVWZR79uWI2g1POYb8kZ1GSddsBw', 'Hapless office worker Alfi needs help from his pals when he unexpectedly falls for the daughter of his boss - a stern man with eyes for Alfi\'s mom.', '2015-12-12', 0, 0),
(35, 2, 'Whipped', 'https://drive.google.com/uc?id=1WqKaEHwmF0hvonz7ngzCH0y37RVAACzb', 'https://drive.google.com/uc?id=1g02xsYHK84QxBsoFskWeLY0_gXhtEEbq', 'Four buddies attend a class taught by a love guru who leads them to question their romantic attachments - until her hidden agenda comes to light.', '2020-03-26', 0, 0),
(36, 2, 'Check the Store Next Door', 'https://drive.google.com/uc?id=1A2cXwDxR25kUHFP2p5xeKagGLqH5Rhk6', 'https://drive.google.com/uc?id=1lc5hWQnI05FUi0kAT8uxWY9h8oCsoenD', 'A family\'s harmony is disrupted when the patriarch falls ills and the youngest son inherits ownership of their humble mom-and-pop shop.', '2016-12-20', 0, 0),
(37, 2, 'Despicable Me', 'https://drive.google.com/uc?id=1HuJBQBCDel7QUrDxysTzsF3tkyi7IU0Y', 'https://drive.google.com/uc?id=1Sje6BS1pDjMMI6eDxJvmiA0DdYqQWhyY', 'Villainous Gru hatches a plan to steal the moon from the sky. But he has a tough time staying on task after three orphans land in his care.', '2010-07-09', 0, 0),
(38, 2, 'My Stupid Boss', 'https://drive.google.com/uc?id=1B211KXgcLuI-UZs4u8RENE7epD7Q-M2t', 'https://drive.google.com/uc?id=1rsa1qfF552BiPBawapSSTslTBPYM_i27', 'After moving to Kuala Lumpur, Diana lands a secretary job at an ironworks owned by her husband\'s old college friend, possibly the world\'s worst boss.', '2016-05-19', 0, 0),
(39, 2, 'Madagascar 2', 'https://drive.google.com/uc?id=1z9XYJfHJ75B8U7EYnhKFP00XCr_Csbzc', 'https://drive.google.com/uc?id=1uXGhRXzg_bDHcnffLD7N7Vo5BqmXoiim', 'A botched rescue strands Alex the lion and his companions in Africa. Sadly, Alex discovers he has little in common with the locals.', '2008-12-24', 0, 0),
(40, 2, 'Hotel Transylvania 2', 'https://drive.google.com/uc?id=1HBFIwgUI44KsVR5-ajiemZaeCeDa3sxr', 'https://drive.google.com/uc?id=180gonE5BbDWhVNlA_eLSqNWJBx1XPvVK', 'After Mavis weds Jonathan and baby Dennis arrives, Dracula looks for proof that his grandson is a vampire and needs to remain in Transylvania.', '2015-09-23', 0, 0),
(41, 3, 'The Queen\'s Gambit', 'https://drive.google.com/uc?id=1XwMQfWzdOnAHTnO6CUZIxjTRyPGHKWnB', 'https://drive.google.com/uc?id=1amztthyvd6XZ4T1WCwiU-opeIZe_swcu', 'In a 1950s orphanage, a young girl reveals an astonishing talent for chess and begins an unlikely journey to stardom while grappling with addiction.', '2020-10-23', 1, 1),
(42, 3, 'Grey\'s Anatomy', 'https://drive.google.com/uc?id=1ETGqSM_HF8zFM4KOT9lZt9_1Lyluouny', 'https://drive.google.com/uc?id=1kIM-7oGPHVBTyUTkx3RsfnQc5K9PZwK9', 'Intern (and eventual resident) Meredith Grey finds herself caught up in personal and professional passions with fellow doctors at a Seattle hospital.', '2005-03-27', 1, 1),
(43, 3, 'Navillera', 'https://drive.google.com/uc?id=1lc9p3K_6Ydy8FlIT0jpx6B0aIDHEi_RG', 'https://drive.google.com/uc?id=1Wvz6wq5M9GnGsvumuKWOayqasqaUhINl', 'A 70-year-old with a dream and a 23-year-old with a gift lift each other out of harsh realities and rise to the challenge of becoming ballerinos.', '2021-03-22', 1, 0),
(44, 3, 'Move to Heaven', 'https://drive.google.com/uc?id=13zN7UvXxpirgd7sKgMPg4GHBBI3MyMom', 'https://drive.google.com/uc?id=1X9uNViCrVVIoYbqhs4B7nvouhba-V-d6', 'Finding life in all that\'s left behind, a detail-oriented trauma cleaner and his estranged uncle deliver untold stories of the departed to loved ones.', '2021-05-14', 1, 1),
(45, 3, 'Itaewon Class', 'https://drive.google.com/uc?id=1JSiTcr_Mj2uzwralUrXxj6KPv-IjroIP', 'https://drive.google.com/uc?id=1U46Xq1pLoWmPB4zU3tLiga1Put3bSeHj', 'In a colorful Seoul neighborhood, an ex-con and his friends fight a mighty foe to make their ambitious dreams for their street bar a reality.', '2020-01-31', 1, 0),
(46, 3, 'Start Up', 'https://drive.google.com/uc?id=1bTF5xhAHoH2_t_NzDWJ5RxXK4rVUdugr', 'https://drive.google.com/uc?id=1N_PXH5qbQeU0YBYX_7UGU8Nz59XOnHI6', 'Young entrepreneurs aspiring to launch virtual dreams into reality compete for success and love in the cutthroat world of Korea\'s high-tech industry.', '2020-10-17', 1, 0),
(47, 3, 'Reply 1988', 'https://drive.google.com/uc?id=1fctsPwut2vrrf3yNpRaK7cAFZ4vTMChw', 'https://drive.google.com/uc?id=1M5P0-IQ3ciPSQWfG5oTFizuNg9tL4Lb2', 'Take a nostalgic trip back to the late 1980s through the lives of five families and their five teenage kids living in a small neighborhood in Seoul.', '2015-11-06', 1, 0),
(48, 3, 'Sky Castle', 'https://drive.google.com/uc?id=1cHqH_QVDNndfyApnBXvnBTYOD3U2tzRn', 'https://drive.google.com/uc?id=1vgf_1Kh8Y4QjNminZ6z6uoWJ49astFIT', 'For the families living at Sky Castle, an exclusive residential community that\'s home to Korea\'s elite, their children\'s success means everything.', '2018-11-23', 1, 0),
(49, 3, 'Hospital Playlist', 'https://drive.google.com/uc?id=1fsv-N9Us8UD80olwXzl2ucEmDUEnUnBm', 'https://drive.google.com/uc?id=1PNNdHGl9-_u0x0ms1uesJDFLsjZoBs2T', 'Every day is extraordinary for five doctors and their patients inside a hospital, where birth, death and everything in between coexist.\r\n', '2020-03-12', 1, 0),
(50, 3, 'Dr Romantic', 'https://drive.google.com/uc?id=1dUOI4TQgLsmAYL_NOX4qS0yPNykCR9-V', 'https://drive.google.com/uc?id=1QK89GNMg1ed2Lom_iy35p592wSD2E7NB', 'An eccentric, triple board-certified virtuoso surgeon leaves a top job in Seoul and ends up at a provincial hospital, where he mentors young doctors.', '2016-11-07', 1, 1),
(51, 3, 'High Society', 'https://drive.google.com/uc?id=1xbjG_eq9Qc_yT9pA584NY0enRVRgyi9Y', 'https://drive.google.com/uc?id=1d_OXIJGhVFp21ef-A3a85iKvCqPiZe6c', 'A deputy curator of a chaebol-funded art gallery and her husband, a politically ambitious economics professor, will do anything to join the uber-elite.', '2018-08-29', 0, 1),
(52, 3, 'Gifted', 'https://drive.google.com/uc?id=1ok3CnGXfbOmiC4zYGR33P0-ci7jwxoGN', 'https://drive.google.com/uc?id=120Qcf6YxM0l815ZshtE3EeIHoImLgEoH', 'A child prodigy gets caught in a custody battle between the kindhearted uncle who raised her and the grandmother who wants to cultivate her genius.', '2017-04-07', 0, 0),
(53, 3, 'Filosofi Kopi', 'https://drive.google.com/uc?id=1IZLgs7G98M_I9BWnNuIkdOD7z_4tJfcg', 'https://drive.google.com/uc?id=1H7HR9l-rW_gqq5ZtQxmf0I_78ZoYe4Od', 'The level-headed owner of a struggling coffee shop finds his future at risk when his partner -- a talented but cocky barista -- makes a major bet.', '2015-04-09', 0, 0),
(54, 3, 'Filosofi Kopi 2', 'https://drive.google.com/uc?id=1u7AbPOH502kpkO2E3MdXiHs4UL39zCS-', 'https://drive.google.com/uc?id=1XqF2xnc2OXty9SP3VBvbm84b6mZkmtRf', 'After starting their traveling coffee business, friends Ben and Jody reopen their shop in Jakarta, where new opportunities and challenges begin to brew.', '2017-07-13', 0, 0),
(55, 3, '5 cm', 'https://drive.google.com/uc?id=1yJo9wfmNfeHhvbiZ_S7nYI2cblNXMJCY', 'https://drive.google.com/uc?id=1EizYGyV1CWxz6t-QfYbs8PSnU3bzQvy7', 'Five friends embark on a mission to climb the highest peak in Java, overcoming obstacles on the way and discovering the true meaning of friendship.', '2012-12-12', 0, 0),
(56, 3, 'One Day We\'ll Talk About Today', 'https://drive.google.com/uc?id=1aolgVlzw-Sioi-I8Vcm0m3DfnoJjJvqJ', 'https://drive.google.com/uc?id=15DTNCa5ba21RiZeND69AWD08hbkM4RgT', 'Harboring a deep secret, a seemingly happy family confronts the trauma of years past as a clash between generations threatens to separate them.', '2020-01-02', 0, 0),
(57, 3, 'June & Kopi', 'https://drive.google.com/uc?id=1W1fN9G1icvJ9Y9jKcPErnQOI0gphnbrr', 'https://drive.google.com/uc?id=1Qcp00lJDbPi4Y1ON_LoJ_9th2HyG9Bc9', 'A street dog is taken in by a young couple, and the family pit becomes an instant accomplice as she adjusts to her new, loving home.', '2021-01-28', 0, 0),
(58, 3, 'Geez & Ann', 'https://drive.google.com/uc?id=1T6ypsTfD1tEJxm3Qqd6O0lBM-QDeG5gS', 'https://drive.google.com/uc?id=1RPT3FdghR9GgfeZnatx-qOmskmcHimf7', 'After falling for Geez, a heartthrob at school, Ann must confront family opposition, heartache and deception as their romance struggles.', '2021-02-25', 0, 0),
(59, 3, 'Imperfect', 'https://drive.google.com/uc?id=1UP0BNaX9owqb0xJzsXTeyEQTSqY_X54c', 'https://drive.google.com/uc?id=1GdF2LoSgMRJ7hDNPErJagT9dipOpCpdd', 'As a cosmetics company employee deals with insecurities about her body image, she considers a transformation for a chance at a promotion.', '2019-12-19', 0, 0),
(60, 3, '200 Pounds Beauty', 'https://drive.google.com/uc?id=1fjH7FJVNXF2q75iupdSVt_yYY7i0XKrR', 'https://drive.google.com/uc?id=1O8pJs5ZLTEoNH9fLOCMZre1lCMsNXuG5', 'Han-na, an overweight woman with a beautiful voice, undergoes drastic plastic surgery and emerges a year later as svelte singer Jenny.', '2006-12-14', 0, 0),
(61, 4, 'Guardian', 'https://drive.google.com/uc?id=1_UWcqJnwCQoU5WarmYDK3BH4sW0G3fd-', 'https://drive.google.com/uc?id=1f70-38YdF-9q9mWxYYBHcPI15BhsR-rC', 'In his quest for a bride to break his immortal curse, a 939-year-old guardian of souls meets a grim reaper and a sprightly student with a tragic past.', '2016-12-02', 1, 0),
(62, 4, 'The School Nurse Files', 'https://drive.google.com/uc?id=1Ds5mEP1DQI-x_rH7aEhudO9244yNGeR3', 'https://drive.google.com/uc?id=1h-iSxYtZAmuR-TIsbkiJLe0hYGkbrtyI', 'Wielding a light-up sword through the dark corners of a high school, a nurse with an unusual gift protects students from monsters only she can see.', '2020-11-25', 1, 0),
(63, 4, 'Tale of the Nine Tailed', 'https://drive.google.com/uc?id=1QEc38uSHqls-8JCbevyUPX_gL6o5t0cq', 'https://drive.google.com/uc?id=1DgPKh4k_fvO_n9GUdCLghDJm-m0D9SEj', 'A TV producer discovers a secret supernatural world as she becomes entangled with a former deity who\'s spent centuries searching for his lost lover.', '2020-10-07', 1, 0),
(64, 4, 'Bring It On Ghost', 'https://drive.google.com/uc?id=1kyz0lfnl6ONk1gbioOMoSaKw_63_3ISV', 'https://drive.google.com/uc?id=1pO_7Ff9089EeWY-6BAqsIQwG1pHNqtbG', 'A college student with psychic abilities takes in an amnesiac ghost as his roommate -- who ends up helping him hunt down spooky spirits.', '2016-12-11', 1, 0),
(65, 4, 'Abyss', 'https://drive.google.com/uc?id=1NDVMnK_OkNbwsx9cPc-BMEsksQyYqgfT', 'https://drive.google.com/uc?id=1S5XP2iYpBcDW3-IVyis1W-Vsmgflaj2J', 'After meeting an untimely demise in separate incidents, Cha Min and Go Se-yeon discover they\'ve come back to life in new bodies they don\'t recognize.', '2019-05-06', 1, 0),
(66, 4, 'W Two Worlds Apart', 'https://drive.google.com/uc?id=1sfauKN82amdM2Yzry4WIHhGMs4BvHo0I', 'https://drive.google.com/uc?id=1VUX225uKa4fiBqwDfoW5XTJl2TBH2EPR', 'After being pulled into the webtoon world created by her father, a surgical resident gets entangled in a murder mystery involving the story\'s hero.', '2016-11-14', 1, 0),
(67, 4, 'Hotel De Luna', 'https://drive.google.com/uc?id=1Cs3_amzfJ21PcykvH1D-e0M4sBq6jWvS', 'https://drive.google.com/uc?id=18ZaJlClUT2MJzSLvbkFrbAnImvgk4B88', 'When he\'s invited to manage a hotel for dead souls, an elite hotelier gets to know the establishment\'s ancient owner and her strange world.', '2019-07-13', 1, 0),
(68, 4, 'Arthdal Chronicles', 'https://drive.google.com/uc?id=1jGRxDu9m-xixQWSBGxano9S6hhfSHoG9', 'https://drive.google.com/uc?id=1DYpm0cKTSjR6a-qTZl6ypGM-GCyQVioF', 'In a mythical land called Arth, the inhabitants of the ancient city of Arthdal and its surrounding regions vie for power as they build a new society.', '2019-06-01', 1, 1),
(69, 4, 'The King Eternal Monarch', 'https://drive.google.com/uc?id=1fUD98nFSjj1dLdVWUnKpLSbegPnAsec0', 'https://drive.google.com/uc?id=1vPVLq_qBdv96rnJdgBF9HO1mu-Q5pG5l', 'A modern-day Korean emperor passes through a mysterious portal and into a parallel world, where he encounters a feisty police detective.', '2020-04-17', 1, 0),
(70, 4, 'Legend of the Blue Sea', 'https://drive.google.com/uc?id=1ATkSSa_h4Ro309DPDzqaZqi2tiM_dAN2', 'https://drive.google.com/uc?id=1m9xNibyQfu4jeJsPVohL_O3P66iut73m', 'A mermaid from the Joseon period ends up in present-day Seoul, where she crosses paths with a swindler who may have ties to someone from her past.', '2016-11-16', 1, 0),
(71, 4, 'Mowgli', 'https://drive.google.com/uc?id=1IpLLIIWWOOekp5KhKxdd5SlqmsXkzoEB', 'https://drive.google.com/uc?id=1_6AxOjFY7dQkW3Hcqdry97bk2zYrGIR5', 'An orphaned boy raised by animals in the jungle seizes his destiny while confronting a dangerous enemy -- and his own human origins.', '2018-11-25', 0, 0),
(72, 4, 'Jumanji The Next Level', 'https://drive.google.com/uc?id=1JdvI0laDzx2vONBvcrFsZ_KzMFilB0Vk', 'https://drive.google.com/uc?id=1aQYxcC_lnBrIEeEAIjpIToldZGK0Rwwt', 'When Spencer goes missing, Martha, Bethany and Fridge realize they must go back into Jumanji to find him - but something goes wrong.', '2019-12-04', 0, 0),
(73, 4, 'Jumanji Welcome to the Jungle', 'https://drive.google.com/uc?id=1wvbaZUzRU9RcGTkcg4Swf1a0FoEV1B54', 'https://drive.google.com/uc?id=1rcKBdn5GVQfRomyWZrgiV-3g7etZ6h3L', 'Four high school students get sucked into the jungle setting of a video game, where they embark on a quest as their comically mismatched adult avatars.', '2017-12-20', 0, 0),
(74, 4, 'Fantastic Beast', 'https://drive.google.com/uc?id=1aMaxtcjmLeCy0rupWAbw0BI9356HH6DV', 'https://drive.google.com/uc?id=1CFQzPx8L8VG2_HhxKfI3S0FQHD9s0Bzh', 'As the dark wizard Grindelwald gains ground, Dumbledore enlists Newt Scamander to locate a teenager whose mysterious affliction might turn the tide.', '2018-11-14', 0, 0),
(75, 4, 'The Mummy', 'https://drive.google.com/uc?id=16T0MnycXSyCst9LwHA2zNWaBeNmjzQv8', 'https://drive.google.com/uc?id=1NbbEJRII9pa2LKmfDwYcU-0aN0B9sHkx', 'The third installment of the Mummy franchise takes Rick and his family to China to face a 2,000-year-old emperor who\'s returned from the dead.', '2008-06-24', 0, 0),
(76, 4, 'Goosebumps', 'https://drive.google.com/uc?id=1LgL6dngQWynFKXSZlQx_VB5448mqKs4a', 'https://drive.google.com/uc?id=1Hb56H_UBq8o7Q39_qE6_oSB39mhQmjob', 'A teen is glum about moving to a small town until he falls for his new neighbor. But her dad is a horror writer whose scary world soon turns real.', '2015-10-14', 0, 0),
(77, 4, 'Hellboy II', 'https://drive.google.com/uc?id=1v68FkjGIN8LRXuMudu2bbBa6kaNShwhF', 'https://drive.google.com/uc?id=1fLWy2RfIliBhQ-Q_DhckkhMS1-AxA9j1', 'The identities of Hellboy, Liz Sherman and Abe Sapien are exposed as they face a new threat: The Golden Army is preparing to attack.', '2008-07-11', 0, 0),
(78, 4, 'Turbo', 'https://drive.google.com/uc?id=170WcEEBTNMGVHF9IMmFAE4q_Be90pvQx', 'https://drive.google.com/uc?id=18VbB07rx-QPY9G_HFMT8q8vc_KPWl5kw', 'A speed-obsessed snail who dreams of being the world\'s greatest race car driver gets his chance when an accident imbues him with high-octane speed.', '2013-07-19', 0, 0),
(79, 4, 'Monsters vs Aliens', 'https://drive.google.com/uc?id=1mBbVNsmI6XWlucN1l_vNutBUCGGrOjf6', 'https://drive.google.com/uc?id=1mHhV7wjKNUvSYVaAfMPJcQaopLEzIVKZ', 'After Susan Murphy is struck by a meteor and grows to be 50 feet tall, she\'s captured by the government and shuttled to a secret compound.', '2009-04-08', 0, 0),
(80, 4, 'Megamind', 'https://drive.google.com/uc?id=1q_rEe4jdbG2VVw7JSzTEt1djs_hdzNhU', 'https://drive.google.com/uc?id=1ZCtl0pxga1yC4ftdGWaktWg4ZOonoBhF', 'When cunning supervillain Megamind accidently kills his crime-fighting nemesis, he creates a new enemy who seeks to destroy the world.', '2010-11-05', 0, 0),
(81, 5, 'Sweet Home', 'https://drive.google.com/uc?id=11D0SnSd4xYVC3KGwvxK7KKArIZsbbN-I', 'https://drive.google.com/uc?id=1wj4UUdry-RMLO6a3ACxrfWBpI5GBmI7H', 'As humans turn into savage monsters and wreak terror, one troubled teen and his apartment neighbors fight to survive - and to hold on to their humanity.\r\n', '2020-12-18', 1, 1),
(82, 5, 'Extracurricular', 'https://drive.google.com/uc?id=1Q8sJ00vEkclaKat85en81aZLGMjAccKt', 'https://drive.google.com/uc?id=1HT_DpsEaaA499VTT5mqtw7MI0GpmTWVu', 'A model high school student who\'s steeped in a world of serious crime finds his double life upended when a classmate takes an interest in his secret.', '2020-04-29', 1, 0),
(83, 5, 'Flower of Evil', 'https://drive.google.com/uc?id=1XMiFJYNcLOY431bCVx1H8o9kIbSIVbah', 'https://drive.google.com/uc?id=1rUNLwI7QJe3qi5QFNXljG461QDRDMUQz', 'Hiding a twisted past, a man maintains his facade as the perfect husband to his detective wife - until she begins investigating a series of murders.', '2020-09-23', 1, 0),
(84, 4, 'Girl from Nowhere', 'https://drive.google.com/uc?id=1DhNd1gqLvQ6yqSBk0HZ-v8Cce4er_G65', 'https://drive.google.com/uc?id=1kHZauI_UfPD8LMOfglXUvEwSmJm9j5XL', 'A mysterious, clever girl named Nanno transfers to different schools, exposing the lies and misdeeds of the students and faculty at every turn.', '2021-05-07', 1, 1),
(85, 5, 'Kingdom', 'https://drive.google.com/uc?id=15CmNGRC2SNL-XNts3Dh4un_Ito4K0kLo', 'https://drive.google.com/uc?id=1FLmyX15DFxO0cPjzzV5NhupNu8lS3t-o', 'While strange rumors about their ill king grip a kingdom, the crown prince becomes their only hope against a mysterious plague overtaking the land.', '2019-01-25', 1, 1),
(86, 5, 'Doctor Prisoner', 'https://drive.google.com/uc?id=1DIBB8RBbQ8YUAuJ0CTyOnXwlh5yahUA1', 'https://drive.google.com/uc?id=1wvkJ14OQfboBp9hakOmnfpZ15TMPYROb', 'After his career is sabotaged by the wealthy, a doctor gets a job at a prison seeking vengeance on those who are too powerful to be governed by the law.', '2019-03-20', 1, 1),
(87, 5, 'Save Me', 'https://drive.google.com/uc?id=1kF3AhsGKVSlSwr5tqnybrClgZSN81Wth', 'https://drive.google.com/uc?id=1wBu60EA5RdIhpkLq777Hz7KWtzToKzQh', 'Four young men come to the rescue of a former classmate whose family has been sucked into the clutches of a religious cult and its charismatic leader.', '2017-09-05', 1, 0),
(88, 5, 'Alice in Borderland', 'https://drive.google.com/uc?id=1trEk5rwiDCharK426-I25U5_XRi4v0H_', 'https://drive.google.com/uc?id=10f6G3JXnXyedmQrNu01npEdv9cjntJE6', 'An aimless gamer and his two friends find themselves in a parallel Tokyo, where they\'re forced to compete in a series of sadistic games to survive.', '2020-12-10', 1, 1),
(89, 5, 'Tunnel', 'https://drive.google.com/uc?id=1YlAUmOpSyNyukvFl7Ivu7WIOl2BMMNpU', 'https://drive.google.com/uc?id=1-3VYvrIujVs73KU2m5i2MoPABRKc0wc_', 'While chasing a serial murderer, a detective ends up 30 years in the future, where he tries to solve the case alongside new partners.', '2017-03-25', 1, 1),
(90, 5, 'Strangers from Hell', 'https://drive.google.com/uc?id=1uvFPjHUOhgZnsBVfXa4XYz0BIKvjzU6A', 'https://drive.google.com/uc?id=1kAvW4vX07zPt1CDQPD8N3a5ZT_3pE4Vr', 'Unpleasant events disturb the life of an aspiring crime fiction writer when he becomes a resident of an apartment building teeming with shady neighbors.', '2019-10-06', 1, 1),
(91, 5, 'Night in Paradise', 'https://drive.google.com/uc?id=1-mOCSgvLNe3xFk-jj7qiOH84DHaDT4gd', 'https://drive.google.com/uc?id=1pm-SIlZu8oZToV6XgHYrWy7fGMMviEN5', 'Hiding out in Jeju Island following a brutal tragedy, a wronged mobster with a target on his back connects with a woman who has her own demons.', '2020-11-03', 0, 1),
(92, 5, 'The Call', 'https://drive.google.com/uc?id=1Zz6qBWrXb2qarwt0-dr20TQZ_4LGfgqY', 'https://drive.google.com/uc?id=1MAm569634O759MYVFQWkXpQZc5wVTwfP', 'Shrill of the phone. Scream of the slashed. A killer from the past takes her stab at fate - and all who stand in her way.', '2020-11-27', 0, 0),
(93, 5, 'Bird Box', 'https://drive.google.com/uc?id=1lLr5eeipmx4lfirX_eKzz5HNLkwyae0s', 'https://drive.google.com/uc?id=1Vbm6T9yp7p0T4Lnt0exvLVp33xODAhh5', 'Five years after an ominous unseen presence drives most of society to suicide, a survivor and her two children make a desperate bid to reach safety.', '2018-12-14', 0, 1),
(94, 5, 'Pandora', 'https://drive.google.com/uc?id=185FfoLNUr1fbTHiqYS6Bj8ASI9KYTFk1', 'https://drive.google.com/uc?id=16IgCFrzCheBmONO_K3Ch7m3DoTGJR3ld', 'When an earthquake hits a Korean village housing a run-down nuclear power plant, a man risks his life to save the country from imminent disaster.', '2016-12-07', 0, 0),
(95, 5, 'Memoir of a Murderer', 'https://drive.google.com/uc?id=1_QRhS_j-n-QDpepszQ2q00GLmMOfwXBy', 'https://drive.google.com/uc?id=1ZLtryBC93y90hlyZ8YKKKpzRouje0H-5', 'Hiding his own murderous past, a man suffering from Alzheimer\'s must protect his daughter from her boyfriend, who he suspects is also a serial killer.', '2017-11-06', 0, 0),
(96, 5, 'No Mercy', 'https://drive.google.com/uc?id=1GJjmvhuJ08QjprEodR5yfoDkKfWyi6UU', 'https://drive.google.com/uc?id=1ta5ruFAvzCorro9cBKMRe6SDvwfGYkq4', 'When her younger sister disappears, a former martial-arts champion sets out to find her -- and will do whatever she must to punish those that took her.', '2019-01-10', 0, 1),
(97, 5, 'Bad Genius', 'https://drive.google.com/uc?id=1qHnDhRf6HUartajI7hX_RHSccURgicbN', 'https://drive.google.com/uc?id=13B0E7ZZoeq90izIGpuk2pmCyKlF3ImZt', 'A top student gets pulled into a cheating racket with increasingly higher risks and even higher rewards. But she may lose much more than she gains.', '2017-08-23', 0, 0),
(98, 5, '#Alive', 'https://drive.google.com/uc?id=1xlLe41WH67V89dPMgFykWkDMQEF6kaWy', 'https://drive.google.com/uc?id=1wTygraDCl6zjJUwiREivunoMp1uqLhyj', 'Outside his door, masses of the infected await their next victim. Inside, he\'s all alone and running out of options.', '2020-06-24', 0, 0),
(99, 5, 'Fantasy Island', 'https://drive.google.com/uc?id=1RI9SGr3UzLgquvXmp67bke029vOzx3jc', 'https://drive.google.com/uc?id=1GIdp0Ympy3PHNY59cczG8DqSx1WDVsWc', 'When the host of a mysterious island resort promises to fulfill the fantasies of several guests, their visit turns into a nightmarish ordeal to survive.', '2020-02-12', 0, 0),
(100, 5, 'Hangout', 'https://drive.google.com/uc?id=1MxalH5GQZsqnOBuX8_msHp292_HazxjD', 'https://drive.google.com/uc?id=1zFAws2kvUX0r9Hn4sad7itqBCyP9VNXp', 'After nine celebrities accept an invitation to visit a remote island, they find themselves trapped with a mysterious killer hunting them down.', '2016-12-22', 0, 0),
(101, 6, 'It\'s Okay to Not Be Okay', 'https://drive.google.com/uc?id=1LgVKcqQcKH8HTylen0jAe5YXBMK7msNW', 'https://drive.google.com/uc?id=1ponXqJXjpsiGj7ZwinDVrrlM2737TnNc', 'An extraordinary road to emotional healing opens up for an antisocial children\'s book writer and a selfless psych ward caretaker when they cross paths.', '2020-06-20', 1, 0),
(102, 6, 'Record of Youth', 'https://drive.google.com/uc?id=1oGtjblupb1cNR0cLX25g8N9fEixECIBC', 'https://drive.google.com/uc?id=1x6WybZgE5EvprHOkAbl9jtkfMl6Afygx', 'Two actors and a makeup artist fight to make their own way in a world that weighs the backgrounds they were born into more than their dreams.', '2020-09-07', 1, 0),
(103, 6, 'Find Me in Your Memory', 'https://drive.google.com/uc?id=1FC5dprQNZQkBuYH1wH-5JKDz5ZTucAJN', 'https://drive.google.com/uc?id=1IcYZ0e2_Hh2XPKChV0YpUlFAMalZBU9U', 'A deep connection forms between a news anchor who remembers every moment he\'s ever lived and an actress who\'s lost the memories of her past.', '2020-03-18', 1, 0),
(104, 6, 'Doctors', 'https://drive.google.com/uc?id=17-Tl72GPSBOesYdTy68nfTQwhOKfOaSZ', 'https://drive.google.com/uc?id=1m07CK3kaJ_1Z5pmxfgOsCc_7oo7YnXkM', 'A recalcitrant, delinquent teen girl meets a compassionate teacher, who inspires her to alter her path and become a street-savvy neurosurgeon.', '2016-06-20', 1, 1),
(105, 6, '18 Again', 'https://drive.google.com/uc?id=147LJOELbXi_HKCOCOMg10hK09C36pNW_', 'https://drive.google.com/uc?id=1OqMQqHyC4M5naXG74Q9JkSJunPbnq69X', 'At a difficult place in his marriage and career, a middle-aged man gets a shot at a do-over when he\'s transformed back into his 18-year-old body.', '2020-09-21', 1, 0),
(106, 6, 'Run On', 'https://drive.google.com/uc?id=19Bxc7al3BpxHM6XzoXmd9ETPE1YaGAhR', 'https://drive.google.com/uc?id=1EdsSEm-glESnazDLgYlTFYJuOuPyK8DU', 'Veering off course from his preset path, a track star follows his own pace and heart for the first time after a film translator steps into his life.', '2020-12-16', 1, 0),
(107, 6, 'Lovestruck in the City', 'https://drive.google.com/uc?id=1HQCyWIcAp-T0ziQzi3WV0vxNqMSpmRiT', 'https://drive.google.com/uc?id=1PNORhoyB4cGjHqBQKy5SFhCT73LowiRr', 'Heart stolen by a free-spirited woman after a beachside romance, a passionate architect sets out to reunite with her on the streets of Seoul.', '2020-12-22', 1, 0),
(108, 6, 'Love Alarm', 'https://drive.google.com/uc?id=1J42hvrmEtDPLL6pKSu7_0C0NWtfJQ-sE', 'https://drive.google.com/uc?id=1jjog0i7dVAYd-o1ZOKwonN8bhcppPJP0', 'In a world where an app alerts people if someone in the vicinity likes them, Kim Jojo experiences young love while coping with personal adversities.\r\n', '2019-08-22', 1, 1),
(109, 6, 'Extraordinary You', 'https://drive.google.com/uc?id=1FoWO6VQ99048IdAJpYkQULymYsYaHBLs', 'https://drive.google.com/uc?id=1o1Onm6v4OqxAL1xedFfSlJShHnJUBlAt', 'A teen seeks to change the fate that\'s been set for her after gaining awareness that she\'s just a side character in a made-up world.', '2019-10-02', 1, 0),
(110, 6, 'Crash Landing on You', 'https://drive.google.com/uc?id=1P6lwAI5BcwIcKCt_i4ZFSjrS38mk4HiI', 'https://drive.google.com/uc?id=1IOteUNYULEclTNdYD6C7igfXnURCaLQ7', 'A paragliding mishap drops a South Korean heiress in North Korea -- and into the life of an army officer, who decides he will help her hide.', '2019-12-14', 1, 0),
(111, 6, 'On Your Wedding Day', 'https://drive.google.com/uc?id=1aNa35CbVvRa4zuC4d5hfD3IbbrkScl-5', 'https://drive.google.com/uc?id=1VPfz41Y4nmtq1OxVYhI-7KV-QvzJikEO', 'A high school student develops a crush on a new transfer student but is soon separated from her -- until their paths cross again years later.', '2018-10-03', 0, 0),
(112, 6, 'Tune in for Love', 'https://drive.google.com/uc?id=1lcULsNQaikDkvpkArongSL_8dI-lW8IF', 'https://drive.google.com/uc?id=1fIKSqKKCZXsirmIV1TWhJZ8g5tIH3J-D', 'A student and a reticent teen first meet at a bakery in the 1990s and try to find each other through the years, as fate keeps pulling them apart.', '2019-08-28', 0, 0),
(113, 6, 'Two Blue Stripes', 'https://drive.google.com/uc?id=1GGknkjelO0zzjFXbc41cgEMpDWYDMbnx', 'https://drive.google.com/uc?id=1msoiEu-B1o944PsE22S_re5PFiFxyNpJ', 'Young love leads to heartbreak for two star-crossed high school students when an unplanned pregnancy has agonizing consequences for their families.', '2019-07-11', 0, 0),
(114, 6, 'Dilan 1990', 'https://drive.google.com/uc?id=1kVCX_47JlyvGIBWejXKmWe1UUdeGkuf7', 'https://drive.google.com/uc?id=1MI1LFlk-X6uRpmhyT8qaiiwVQkibo1o6', 'At a Bandung high school, charming and rebellious Dilan vies for the affections of shy new student Milea.', '2018-01-25', 0, 0),
(115, 6, 'The Kissing Booth', 'https://drive.google.com/uc?id=1jfLV_ugSr_WbhQEnlTzoMsJJ-ENMr_no', 'https://drive.google.com/uc?id=1GftpWR2nU-W9GtcbhGzTs4z9UqqqlcWD', 'When teenager Elle\'s first kiss leads to a forbidden romance with the hottest boy in high school, she risks her relationship with her best friend.', '2020-07-24', 0, 0),
(116, 6, 'Story of Kale', 'https://drive.google.com/uc?id=1IDrB0NJuuzv2xDc4SOgGRZjg8fTf683U', 'https://drive.google.com/uc?id=1XqinFksbTGryWoTvdmaHDFCkLpZmXKGn', 'After leaving a toxic relationship, Dinda embarks on a romance with Kale, whose view on love soon shatters as he wrestles with his own insecurities.', '2020-10-23', 0, 0),
(117, 6, 'Milea', 'https://drive.google.com/uc?id=16fKJC-ywd0zY-eH7d6ylQ0E2pNTTOgE6', 'https://drive.google.com/uc?id=1-g5q93kajaGNG3_YXWBC_YKBNKTSWN_3', 'Years after his teen romance with Milea, a now-adult Dilan tells his version of their love story when a high school reunion brings them back together.', '2020-02-13', 0, 0),
(118, 6, 'All the Bright Places', 'https://drive.google.com/uc?id=1yy-wqQvIn5UmDLvDLw_CDkQA0HGW-8iu', 'https://drive.google.com/uc?id=1B8voKrApdPXzVlf-CrDEVLr9lP5gbI4r', 'Two teens facing personal struggles form a powerful bond as they embark on a cathartic journey chronicling the wonders of Indiana.', '2020-02-28', 0, 1),
(119, 6, 'The Heartbreak Club', 'https://drive.google.com/uc?id=1TS_RJrIxtfaim3puA5Kw0NWCwco6K-1_', 'https://drive.google.com/uc?id=1bLNvqch4ajqeODRGxQnFMyAiMq-W3zNN', 'Coping with heartbreak, the shy owner of a floundering cafe finds solace in the Javanese love songs of Didi Kempot.', '2021-01-14', 0, 0),
(120, 6, 'The Half of It', 'https://drive.google.com/uc?id=1gQPIAFgL20-cVAEIUV9dkW-O6X6TIBmz', 'https://drive.google.com/uc?id=1L-cF54JBeMScf3mwKN-kbYzUNY5LxrdB', 'When smart but cash-strapped teen Ellie Chu agrees to write a love letter for a jock, she doesn\'t expect to become his friend - or fall for his crush.', '2020-05-01', 0, 0),
(121, 7, 'Vincenzo', 'https://drive.google.com/uc?id=1RW1OAIc0Zrm3JvnSyDf0a5qjSUHAIrCr', 'https://drive.google.com/uc?id=1GvI2UhViDxXH0YpB8DFH9cjXSZjx-Ggo', 'During a visit to his motherland, a Korean-Italian mafia lawyer gives an unrivaled conglomerate a taste of its own medicine with a side of justice.', '2021-02-20', 1, 0),
(122, 7, 'Signal', 'https://drive.google.com/uc?id=1q6_t8bpVvc11-JSYNwlkCnqCPGzTbFyh', 'https://drive.google.com/uc?id=1LobAHun2e4SJRX7fNflIak8PEW5nGDdT', 'Communicating via a walkie-talkie that transcends time, a profiler from 2015 and a detective from 1989 join forces to tackle crimes and injustice.', '2016-01-22', 1, 0),
(123, 7, 'Private Lives', 'https://drive.google.com/uc?id=1Xbu8FmmBmhzMB67zFyBGUWRf6wVz2BC7', 'https://drive.google.com/uc?id=1qNm66aCa9oTNM99f12BedVMg7QbKewUu', 'In a world where data is no longer private, con artists uncover a sinister surveillance scheme headed by the government and a greedy corporation.', '2020-10-07', 1, 0),
(124, 7, 'Law School', 'https://drive.google.com/uc?id=1xvL8o-7qjS_lsWl4k6Od-pGq5bdxVMCp', 'https://drive.google.com/uc?id=1_MTahUUyM2vvkCoq_xsK6Ac9vLaHKKlJ', 'When a grim incident occurs at their prestigious school, justice through law is put to a test by a tough law professor and his ambitious students.', '2021-04-14', 1, 0),
(125, 7, 'Partner for Justice', 'https://drive.google.com/uc?id=1TCFQNIAHAFNqO7NbbAofgUNbRNDjxVU-', 'https://drive.google.com/uc?id=1omW_g3pBhmfKi9daIX0GUGtWp7dY3VdX', 'To pin down criminals and solve cases, a grouchy but brilliant forensic doctor opens up his world to a bright-eyed rookie prosecutor.\r\n', '2018-05-14', 1, 1),
(126, 7, 'Ms. Hammurabi', 'https://drive.google.com/uc?id=1MtNaUKbIgYiwYQgHuoMqmbVG0woQIssH', 'https://drive.google.com/uc?id=1nquS1h6HDcNS85XhEuMmP1C9hY6-zooN', 'An ardent, empathetic rookie judge partners with an upright, principled justice, as they negotiate the legal system and the people they serve.', '2018-05-21', 1, 0),
(127, 7, 'Voice 2', 'https://drive.google.com/uc?id=1YyPd-eJI_B8UoFytdc8iNFkVYnJ-7AyI', 'https://drive.google.com/uc?id=1vfEY-6Y1x_Y627nHBLmeDNkGyUqurTvx', 'A deft detective whose wife is killed by a serial murderer teams up with a rookie cop, a gifted voice profiler dealing with her own father\'s murder.', '2018-08-11', 1, 0),
(128, 7, 'Stranger', 'https://drive.google.com/uc?id=14uYr6zvpZpQ_nJzszINWcL5IfcSXUvy8', 'https://drive.google.com/uc?id=1kZ1WjTCcSWWD6t2a2kBfu2g_i7addRv6', 'With the help of a gutsy female detective, a prosecutor who has lost the ability to feel empathy tackles a murder case amid political corruption.', '2020-08-16', 1, 0),
(129, 7, 'Sherlock', 'https://drive.google.com/uc?id=14nngJC0KaTtRfuVT0qiKpytMWebzzKlt', 'https://drive.google.com/uc?id=1FM6Gu-jGofj4ql0bPCB_QzMCBf84J0W2', 'In this updated take on Sir Arthur Conan Doyle\'s beloved mystery tales, the eccentric sleuth prowls the streets of modern London in search of clues.', '2016-01-01', 1, 1),
(130, 7, 'Money Heist', 'https://drive.google.com/uc?id=1wD_O8YEGV_ROppZeaaUBi-ayeohlwHzC', 'https://drive.google.com/uc?id=1zXdKtGlYhQvBbFxnNoPudmnX_gAD_gnr', 'Eight thieves take hostages and lock themselves in the Royal Mint of Spain as a criminal mastermind manipulates the police to carry out his plan.', '2017-05-02', 1, 1),
(131, 7, 'Enola Holmes', 'https://drive.google.com/uc?id=1PsnrYg0b-Ygi9V6uJ-SDD_cLm2sz676m', 'https://drive.google.com/uc?id=16u6wc8b_T9CXbsRbgzuKF86OEN5fGxiN', 'While searching for her missing mother, intrepid teen Enola Holmes uses her sleuthing skills to outsmart big brother Sherlock and help a runaway lord.\r\n', '2020-09-23', 0, 0),
(132, 7, 'The Thieves', 'https://drive.google.com/uc?id=1ObjHHl77aMbOsvp5hTxglpakk1VE80MA', 'https://drive.google.com/uc?id=1IhL_22fRs2DxYoRSbtuuMRFKX1XemN0m', 'This slick caper flick finds Korean and Chinese professional thieves joining forces to pinch a $20 million diamond from an impenetrable casino vault.', '2012-06-25', 0, 0),
(133, 7, 'Sherlock Holmes', 'https://drive.google.com/uc?id=19UfWDP1GG-RrNdTSdXU3gn_gpOSY4-2Z', 'https://drive.google.com/uc?id=1T6Wqh9mCo06FEzyr-lqpdnuEZulP0ALJ', 'The game is afoot for an eccentric detective who must use his brains and brawn to track down a nefarious nemesis with the help of his partner.', '2009-12-27', 0, 0),
(134, 7, 'The Raid 2', 'https://drive.google.com/uc?id=1i4p2oWTw2cZYX01nSUuPIl1K7InN3WO8', 'https://drive.google.com/uc?id=1PmeOYKCRFRusoi8i6x78tQBGs3EqVBrZ', 'This action-packed sequel finds Rama working undercover as a prisoner to befriend Uco, the son of a powerful new crime lord, Bangun.', '2014-03-28', 0, 1),
(135, 7, 'The Devil All the Time', 'https://drive.google.com/uc?id=11PsdU0hqJwNr29cu6ieI2TfAPWiZ3ajr', 'https://drive.google.com/uc?id=1woiGCfjjBT-ONDehKVXOjwF7fax112dI', 'Sinister characters converge around a young man devoted to protecting those he loves in a postwar backwoods town teeming with corruption and brutality.', '2020-09-11', 0, 1),
(136, 7, 'Forgotten', 'https://drive.google.com/uc?id=1o0ZclZy9Z1TMBrVvBeeE9uyjqDNBhbKf', 'https://drive.google.com/uc?id=1efsceOOz7tRXc3FlKPw7HNJtVKvs73h4', 'When his abducted brother returns seemingly a different man with no memory of the past 19 days, Jin-seok chases after the truth behind the kidnapping.', '2017-11-29', 0, 0),
(137, 7, 'Army of the Dead', 'https://drive.google.com/uc?id=1sdQ3H3hr71kZJyEogDx1VyYm1tJGpS4V', 'https://drive.google.com/uc?id=10ORkcZsQhU2CokoJ-tysf2Lt4poXe9Il', 'After a zombie outbreak in Las Vegas, a group of mercenaries takes the ultimate gamble by venturing into the quarantine zone for the greatest heist ever.', '2021-05-14', 0, 1),
(138, 7, 'Time to Hunt', 'https://drive.google.com/uc?id=1OoS7RGRKw_O_DK4m1bX501DxahGgulLP', 'https://drive.google.com/uc?id=1aiRzUEh9Y-PF1uzESGJknLeQimB4jyEB', 'Wanting to leave their dystopian world behind for a faraway paradise, three outlaws plot a money heist - and draw the attention of a vicious killer.', '2020-02-22', 0, 1),
(139, 7, 'Spenser Confidential', 'https://drive.google.com/uc?id=1jbkTzoeVtvpoqCVthPE6TbQPN4CsDw_0', 'https://drive.google.com/uc?id=1_dZEW7py7iAECIM97tkn6QFzCM9-itfJ', 'Spenser, an ex-cop and ex-con, teams up with aspiring fighter Hawk to uncover a sinister conspiracy tied to the deaths of two Boston police officers.', '2020-03-06', 0, 1),
(140, 7, 'The Drug King', 'https://drive.google.com/uc?id=18i8bSh4DNCC7ot7LMoSjxU7XxHgkKjG7', 'https://drive.google.com/uc?id=1C7pqBDTgKuKnsovMpBrOPSNTWXhzbrJC', 'A petty smuggler from Busan dives headfirst into illicit drug trafficking in the 1970s and rises to become king of narcotics exports to Japan.', '2018-12-19', 0, 1),
(141, 8, 'Sisyphus', 'https://drive.google.com/uc?id=12zUMKkNqB_7Or0E0f1TNbSxDZdDjXxvw', 'https://drive.google.com/uc?id=1WRp3RHiy0bWUqlhdznVeg2wGr28DDyqt', 'An unfathomable incident introduces a genius engineer to dangerous secrets of the world - and to a woman from the future who\'s come looking for him.', '2021-02-17', 1, 0),
(142, 8, 'Awaken', 'https://drive.google.com/uc?id=1lC2oP6SS1Aio9htmh5DLgDFAAsoe2gO3', 'https://drive.google.com/uc?id=1Y-RRDFUQPSIztdN2J7Sof5Y85ZEnt7Kp', 'Police officers investigate dark secrets that link a series of present-day murders with puzzling incidents that took place in a town 28 years ago.', '2020-11-30', 1, 0),
(143, 8, 'I\'m Not a Robot', 'https://drive.google.com/uc?id=1R6k5g_vUoCjYSN_TA6LLLttF3nf_TNe3', 'https://drive.google.com/uc?id=1-gOb-6LkQOwr9EkboIXGVBu1pfWl21rB', 'The prime shareholder of a financial firm is allergic to human contact, but his reclusive life is disrupted by a robot -- an entrepreneur in disguise.', '2017-12-06', 1, 0),
(144, 8, 'Are You Human?', 'https://drive.google.com/uc?id=1SPVmCE1mZK5ZU6FfYd90NaC3uppDso-1', 'https://drive.google.com/uc?id=1ZEP0YPs5iQKrUEw9gBsRaDcRnQl2o70I', 'When a prominent brain scientist and artificial intelligence expert is forced to part with her son, she creates an android robot in his exact likeness.', '2018-06-04', 1, 0),
(145, 8, 'Alice', 'https://drive.google.com/uc?id=1PiWVfLR6QbIG502NcPR39ZI_-78ld6hv', 'https://drive.google.com/uc?id=1qt4Hyd1LmtgD3xn3X7N61AanYXZbwipK', 'While investigating a string of murders, a detective is stunned to encounter time travelers - especially a professor who\'s a dead ringer for his mother.', '2020-08-28', 1, 0),
(146, 8, 'My Holo love', 'https://drive.google.com/uc?id=1h3RAv-_x1qBzY8k7CXrX6eh2kdm-DPdL', 'https://drive.google.com/uc?id=1g5iX9tTy1v3eHJWBTiGwhwfroEq7oWaZ', 'Unexpected love finds a lonely woman when she forms a connection with a humanlike hologram who looks exactly like his prickly creator.\r\n', '2020-02-07', 1, 0),
(147, 8, 'My Absolute Boyfriend', 'https://drive.google.com/uc?id=1gXvQZ9JzxSJsdi4xAnUGUm3pDd66dFTu', 'https://drive.google.com/uc?id=1CCCSSuayZsAC9NQhwf3sHk0slNVyleBC', 'Awakened by the kiss of a love cynic, a humanoid robot created to be the perfect boyfriend does everything in his power to win and protect her heart.', '2019-05-15', 1, 0),
(148, 8, 'The Umbrella Academy', 'https://drive.google.com/uc?id=1Vvo4X9ZekKCc-h_dGt-z3VgibgZidGvL', 'https://drive.google.com/uc?id=1aopWtPP5g--LLhfYqo5Zb7UApO26GAOD', 'Reunited by their father\'s death, estranged siblings with extraordinary powers uncover shocking family secrets -- and a looming threat to humanity.', '2019-02-15', 1, 0),
(149, 8, 'Memories of the Alhambra', 'https://drive.google.com/uc?id=1umkPACPUCUaC4lubJubQPQavul-Dkztq', 'https://drive.google.com/uc?id=1lpqMGiH9jRTslCk5pxzjLmwIaTmTN7vk', 'While looking for the cryptic creator of an innovative augmented-reality game, an investment firm executive meets a woman who runs a hostel in Spain.', '2018-12-01', 1, 0),
(150, 8, 'Rugal', 'https://drive.google.com/uc?id=1wB-1vOqcjbC9-rOKt9bH1CmcWctUd94V', 'https://drive.google.com/uc?id=1scNoNglFyz2h7FB51AvUQptIjnSn0-3d', 'A police detective who loses everything to a criminal organization seeks payback when he gains special abilities through biotechnology.', '2020-03-28', 1, 0),
(151, 8, 'Space Sweepers', 'https://drive.google.com/uc?id=1murR9IM0lmvavdKkP69A0nIeRZtW6tQn', 'https://drive.google.com/uc?id=11iZ0iD06Gazz6reDRl-crLCf-GCifxTL', 'Chasing after space debris and faraway dreams in year 2092, four misfits unearth explosive secrets during the attempted trade of a wide-eyed humanoid.', '2021-02-05', 0, 0);
INSERT INTO `movies` (`id`, `movieGenreId`, `title`, `image`, `trailer`, `synopsis`, `releaseDate`, `isSeries`, `isMature`) VALUES
(152, 8, 'The Martian', 'https://drive.google.com/uc?id=1WWhHrKKZgP7FCktPHDz9W_gXDwX3_fue', 'https://drive.google.com/uc?id=1AlkDyV2u7-Zq4rlxGFckEtLr7yS6mg2x', 'Abandoned on the surface of Mars, an astronaut presumed dead after a dust storm struggles to survive on the hostile planet and send a message home.', '2015-11-30', 0, 0),
(153, 8, 'How It Ends', 'https://drive.google.com/uc?id=1dh13rlAP3PWaz0QAaYaEIGRzLlBoRtDp', 'https://drive.google.com/uc?id=1062qMyZzJ0ME6AI6YBV4IYrQiWmPwJw2', 'Worried about his pregnant fiancee amid a sudden cataclysm, a young lawyer embarks on a dangerous road trip west with his future father-in-law.', '2018-07-13', 0, 0),
(154, 8, 'Psychokinesis', 'https://drive.google.com/uc?id=1-hzRk6PF7ChR8dzynrVmPfPrbvF31I6C', 'https://drive.google.com/uc?id=12MT9jUx82xXDpenlK98x9gctG8Pz5bGI', 'Suddenly possessed with supernatural powers, a father sets out to help his estranged daughter, who\'s at risk of losing everything she\'s lived for.', '2018-01-31', 0, 0),
(155, 8, 'Love and Monster', 'https://drive.google.com/uc?id=1FnSj02KJXxVneBWAvEifGhIB38JbUmSW', 'https://drive.google.com/uc?id=1yAcSPQWECb8uVj0q1K3O9YFrL-8JXvbt', 'Seven years after he survived the monster apocalypse, lovably hapless Joel leaves his cozy underground bunker behind on a quest to reunite with his ex.', '2020-10-16', 0, 0),
(156, 8, 'Oxygen', 'https://drive.google.com/uc?id=1hynChVU3LlRX12Qkfag2dUaJV1s3nwXJ', 'https://drive.google.com/uc?id=1XC9bd54J6AUUkaTqAC5eg4Y_-65uEHXk', 'After waking up in a cryogenic unit, Liz fights to survive and remember who she is before her oxygen runs out.', '2021-05-12', 0, 0),
(157, 8, 'Outside the Wire', 'https://drive.google.com/uc?id=1VUQb13RJHouiAD9ykGaUe06VQvDmMssn', 'https://drive.google.com/uc?id=1jVIKpGrbm54r-hcd0mWS3pGWZk9XrRGZ', 'In the near future, a drone pilot sent into a war zone finds himself paired with a top-secret android officer on a mission to stop a nuclear attack.', '2021-01-15', 0, 1),
(158, 8, 'Project Power', 'https://drive.google.com/uc?id=1cXAVVgcNaN8RJNZEoU_ztIb_h5AOEPgu', 'https://drive.google.com/uc?id=157XjWywgv3QahxQzHYw6Zz3wEtcXBX92', 'An ex-soldier, a teen and a cop collide in New Orleans as they hunt for the source behind a dangerous new pill that grants users temporary superpowers.', '2020-08-14', 0, 0),
(159, 8, 'Extinction', 'https://drive.google.com/uc?id=13ErOew2MPJNrUiP48cah4955NXKOWPlB', 'https://drive.google.com/uc?id=1-YsqNFUN6xYpYuERRybHZLIV109ej_yZ', 'Plagued by dreams of an alien invasion, a family man faces his worst nightmare when an extraterrestrial force begins exterminating Earth\'s inhabitants.', '2020-01-18', 0, 0),
(160, 8, 'Annihilation', 'https://drive.google.com/uc?id=16rmD0ppQMuObHzQ-hfn7y9RPjLjzROV0', 'https://drive.google.com/uc?id=1RUEcb8rgc1iIf4z-DEy_Xaq6Nv82hxr1', 'When her husband vanishes during a secret mission, biologist Lena joins an expedition into a mysterious region sealed off by the U.S. government.', '2018-02-13', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `movie_episodes`
--

CREATE TABLE `movie_episodes` (
  `id` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_episodes`
--

INSERT INTO `movie_episodes` (`id`, `movieId`, `name`, `count`, `duration`, `synopsis`, `thumbnail`, `video`) VALUES
(1, 1, 'Into the Ring', 1, 3240, 'Murdock\'s vigilante crime fighting and his new law practice find equally dangerous challenges in a murder case tied to a corporate crime syndicate.', 'https://drive.google.com/uc?id=1Z4MJ-1Q3MfMB6DxJB7dOmLtZ3gvkrAGq', 'https://drive.google.com/uc?id=1yzCG8jNpPkmP9k689k6pnNFidG-ZyHev'),
(2, 1, 'Cut Man', 2, 3180, 'Murdock makes a near fatal error while trying to save a kidnapped boy, and finds an unlikely ally when he needs saving himself.', 'https://drive.google.com/uc?id=1Z4MJ-1Q3MfMB6DxJB7dOmLtZ3gvkrAGq', 'https://drive.google.com/uc?id=1yzCG8jNpPkmP9k689k6pnNFidG-ZyHev'),
(3, 2, 'Snow Gives Way', 1, 3420, 'After being declared dead 15 years earlier, Danny Rand returns to New York. But his welcome is a far cry from what he\'d hoped.', 'https://drive.google.com/uc?id=1l84KPoEcU3r3Rumru7cBPjSajmOnhMim', 'https://drive.google.com/uc?id=1oyGNy7WpFX-yaUpqIFie4nNkMMOfUAKZ'),
(4, 2, 'Shadow Hawk Takes Flight', 2, 3660, 'Danny struggles with his new surroundings, Colleen dishes out a harsh lesson, and Joy sends an unconventional message.', 'https://drive.google.com/uc?id=1l84KPoEcU3r3Rumru7cBPjSajmOnhMim', 'https://drive.google.com/uc?id=1oyGNy7WpFX-yaUpqIFie4nNkMMOfUAKZ'),
(5, 3, 'Episode 1', 1, 3660, 'Cha Dal-geon encourages his nephew to go to Morocco with the taekwondo demonstration group. Go Hae-ri walks in late to a meeting at the Korean embassy.', 'https://drive.google.com/uc?id=19SR5AFMHpfQp9nSOqoVe74iUlScPi2kx', 'https://drive.google.com/uc?id=1jAz47lVvwtXN0Exl6TKP1XZ4b4Vi050b'),
(6, 3, 'Episode 2', 2, 3660, 'Cha Dal-geon makes a disquieting announcement to the other bereaving families and implores Go Hae-ri for help, but she seems to be hiding something.', 'https://drive.google.com/uc?id=19SR5AFMHpfQp9nSOqoVe74iUlScPi2kx', 'https://drive.google.com/uc?id=1jAz47lVvwtXN0Exl6TKP1XZ4b4Vi050b'),
(9, 4, 'The End\'s Beginning', 1, 3660, 'Hostile townsfolk and a cunning mage greet Geralt in the town of Blaviken. Ciri finds her royal world upended when Nilfgaard sets its sights on Cintra.', 'https://drive.google.com/uc?id=1DGDuY1es_lSd6yGrZGD6OMVw4HQ7C9SS', 'https://drive.google.com/uc?id=1ebD15l584nluOTdpGXe0c3bmxNzLCJ5Q'),
(10, 4, 'Four Marks', 2, 3600, 'Bullied and neglected, Yennefer accidentally finds a means of escape. Geralt\'s hunt for a so-called devil goes to hell. Ciri seeks safety in numbers.', 'https://drive.google.com/uc?id=1DGDuY1es_lSd6yGrZGD6OMVw4HQ7C9SS', 'https://drive.google.com/uc?id=1ebD15l584nluOTdpGXe0c3bmxNzLCJ5Q'),
(11, 5, 'Episode 1', 1, 3840, '', 'https://drive.google.com/uc?id=1ecyRAoFgREBXwVJaYCCG6tfblKx9A7gf', 'https://drive.google.com/uc?id=17lIdmhg7V_HL6U9pwUO8DWeSKfyFr4eQ'),
(12, 5, 'Episode 2', 2, 3660, '', 'https://drive.google.com/uc?id=1ecyRAoFgREBXwVJaYCCG6tfblKx9A7gf', 'https://drive.google.com/uc?id=17lIdmhg7V_HL6U9pwUO8DWeSKfyFr4eQ'),
(13, 6, 'Pilot', 1, 2520, 'Presumed dead for five years before being discovered on a remote Pacific island, billionaire playboy Oliver Queen returns home a changed man.', 'https://drive.google.com/uc?id=1cNoM3nD0cNFkq9II9NXzfAD88Ou2pT3h', 'https://drive.google.com/uc?id=13U_fo7Q2ULaJoHUbqyubiCrRUvE-ReSU'),
(14, 6, 'Honor Thy Father', 2, 2520, 'Oliver sets his sights on taking down a criminal with ties to the Chinese triad: Martin Somers, who\'s being prosecuted by Laurel.', 'https://drive.google.com/uc?id=1cNoM3nD0cNFkq9II9NXzfAD88Ou2pT3h', 'https://drive.google.com/uc?id=13U_fo7Q2ULaJoHUbqyubiCrRUvE-ReSU'),
(15, 7, 'Pilot', 1, 2640, 'Waking from a coma, Barry harnesses his newfound extraordinary speed to combat another metahuman who uses his power over the weather to loot banks.', 'https://drive.google.com/uc?id=17_zfkrGukjwZ-pKwLWJP6lwpStb31EiN', 'https://drive.google.com/uc?id=1uDNwknQvHSSKCM5OotRymbuBC1gsomZE'),
(16, 7, 'Fastest Man Alive', 2, 2460, 'Barry takes on multiple gunmen who storm an awards ceremony he\'s attending with Iris, but side effects from his new superpower catch up to him.', 'https://drive.google.com/uc?id=17_zfkrGukjwZ-pKwLWJP6lwpStb31EiN', 'https://drive.google.com/uc?id=1uDNwknQvHSSKCM5OotRymbuBC1gsomZE'),
(17, 8, 'Pilot', 1, 2700, 'While Kara Zor-El adapts to living in National City and working for media mogul Cat Grant, she can\'t turn away from her secret Kryptonian superpowers.', 'https://drive.google.com/uc?id=160YFaK-iIx33fbehrb5oudL464eElEbo', 'https://drive.google.com/uc?id=1g3ApRxfvAZnZ2aSf_gImvcQxPx02Mvws'),
(18, 8, 'Stronger Together', 2, 2460, 'Kara\'s early forays into using her superpowers don\'t always go well. Cat\'s suspicions about Supergirl lead her to pressure James to get an exclusive.', 'https://drive.google.com/uc?id=160YFaK-iIx33fbehrb5oudL464eElEbo', 'https://drive.google.com/uc?id=1g3ApRxfvAZnZ2aSf_gImvcQxPx02Mvws'),
(19, 9, 'Episode 1', 1, 4080, 'On his birthday, So Mun\'s struck by a strange burst of light that leaves puzzling changes to his body. He finds answers inside the local noodle shop.', 'https://drive.google.com/uc?id=1Nmjy5lSEHHY-9qhNUefQ2c7piBiWAjWP', 'https://drive.google.com/uc?id=1U-craQgj08jMJqy-trGCTl5pQnlmAgIr'),
(20, 9, 'Episode 2', 2, 3660, 'The Counters give Mun an extraordinary surprise. While contemplating whether he wants to join them, he\'s given a taste of the action.', 'https://drive.google.com/uc?id=1Nmjy5lSEHHY-9qhNUefQ2c7piBiWAjWP', 'https://drive.google.com/uc?id=1U-craQgj08jMJqy-trGCTl5pQnlmAgIr'),
(21, 10, 'Titans', 1, 3060, 'As Detective Dick Grayson fights crime both as a cop and vigilante, a mysterious girl harboring a dark secret arrives in Detroit.', 'https://drive.google.com/uc?id=1QYchTd1xuV4wgRmXQOGWtSK0XbjXADQk', 'https://drive.google.com/uc?id=1x6nXo2VaC2WLSVGyRc_vPrYQCk3ORfP4'),
(22, 10, 'Hawk and Dove', 2, 2640, 'With Rachel in tow, Dick pays a visit to two old acquaintances, one of whom isn\'t thrilled to see him. Also, a nuclear family takes a road trip.', 'https://drive.google.com/uc?id=1QYchTd1xuV4wgRmXQOGWtSK0XbjXADQk', 'https://drive.google.com/uc?id=1x6nXo2VaC2WLSVGyRc_vPrYQCk3ORfP4'),
(23, 11, '', 1, 6780, '', '', 'https://drive.google.com/uc?id=14ms483zoobzr1ujy10nC0nf9b5_sUJ50'),
(24, 12, '', 1, 8580, '', '', 'https://drive.google.com/uc?id=1S0akJNUuS1Amt1u78AewME0pz4mTHrWe'),
(25, 13, '', 1, 7860, '', '', 'https://drive.google.com/uc?id=1X2tcC1V8KmktJjIU13iWYIR7Bkrb9F91'),
(26, 14, '', 1, 6360, '', '', 'https://drive.google.com/uc?id=1aP3aXs5Dn81zNlQLfyFUpJDDeCQbqq8F'),
(27, 15, '', 1, 6780, '', '', 'https://drive.google.com/uc?id=1jHpK9dXqhG39xMZsy3yh93nOjHjp9RoT'),
(28, 16, '', 1, 6060, '', '', 'https://drive.google.com/uc?id=1A0oZ9hj1DXvoG50eh9i6iBGayKgMeuA6'),
(29, 17, '', 1, 7980, '', '', 'https://drive.google.com/uc?id=1DolmGViQcc-fDL02I63sltrqoieGa9dn'),
(30, 18, '', 1, 7860, '', '', 'https://drive.google.com/uc?id=1GEJXtmI-dIZJoPyag_ad31FliKeVbFSZ'),
(31, 19, '', 1, 8520, '', '', 'https://drive.google.com/uc?id=1HidwMc_XbgquYArkz2fBnEcn978B0oeM'),
(32, 20, '', 1, 8160, '', '', 'https://drive.google.com/uc?id=14gtkU6RJgccKbYMfQP3zDHO6fj2-DRuc'),
(33, 21, 'Episode 1', 1, 3840, 'Bahn Ha-ni\'s awful day brings her major trouble at work, a sticky situation at the police station and several encounters with Han Yu-hyeon.', 'https://drive.google.com/uc?id=1eUpGjeKcqJOmLT6IkI0tt-8tVYkY-wjj', 'https://drive.google.com/uc?id=14gtkU6RJgccKbYMfQP3zDHO6fj2-DRuc'),
(34, 21, 'Episode 2', 2, 3780, 'For the younger Ha-ni, witnessing the pathetic state of her life in 20 years is hard to swallow. Cut off financially, Yu-hyeon goes to Ha-ni.', 'https://drive.google.com/uc?id=1eUpGjeKcqJOmLT6IkI0tt-8tVYkY-wjj', 'https://drive.google.com/uc?id=14gtkU6RJgccKbYMfQP3zDHO6fj2-DRuc'),
(35, 22, 'Episode 1', 1, 4080, 'A struggling actor, an aspiring singer and a baseball hopeful scramble to keep their guesthouse afloat after an unlucky blow from Mother Nature.', 'https://drive.google.com/uc?id=1itk_w3-xgd_f3s6y1JRf5i9JEo2WHpPY', 'https://drive.google.com/uc?id=1H3USOv-_EKjvP5jHtbbOiwqUVU9THqm1'),
(36, 22, 'Episode 2', 2, 4080, 'Caught between two women, Cha U-sik comes up with a rather sloppy plan to impress one and avoid the other. Lee Jun-ki faces a major acting challenge.', 'https://drive.google.com/uc?id=1itk_w3-xgd_f3s6y1JRf5i9JEo2WHpPY', 'https://drive.google.com/uc?id=1H3USOv-_EKjvP5jHtbbOiwqUVU9THqm1'),
(37, 23, 'Emily in Paris', 1, 1740, 'Emily brings her can-do American attitude and fresh ideas to her new office in Paris, but her inability to speak French turns out to be a major faux pas.', 'https://drive.google.com/uc?id=1djRISWm4SDN7RMQ4mqepGdkqhr1swp10', 'https://drive.google.com/uc?id=11unsS6851CEhDhpxZxkoPq9K47nS-7Rz'),
(38, 23, 'Masculin Feminin', 2, 1560, 'Emily navigates the intricacies of French amour when her enthusiasm at a work soiree impresses a flirtatious - and married - client.', 'https://drive.google.com/uc?id=1djRISWm4SDN7RMQ4mqepGdkqhr1swp10', 'https://drive.google.com/uc?id=11unsS6851CEhDhpxZxkoPq9K47nS-7Rz'),
(39, 24, 'Do Do Sol Sol La La Sol', 1, 3660, 'It\'s Gu Ra-ra\'s big day. Sunwoo Jun catches her off-guard with a memorable first encounter, moments before her world comes crashing down.', 'https://drive.google.com/uc?id=1Kbaee2REXHYoYetpIlHiHmj2u_Qs5zDE', 'https://drive.google.com/uc?id=1zL5_M0SI4CW_KhMCFgvfHTHZhPlsCzhV'),
(40, 24, 'Pianist Patient', 2, 3600, 'Jun finds himself unable to leave Ra-ra\'s side after she leans on him for support. Cha Eun-seok becomes curious about Jun and protective of Ra-ra.', 'https://drive.google.com/uc?id=1Kbaee2REXHYoYetpIlHiHmj2u_Qs5zDE', 'https://drive.google.com/uc?id=1zL5_M0SI4CW_KhMCFgvfHTHZhPlsCzhV'),
(41, 25, 'Episode 1', 1, 4140, 'For generations, a superpower has been passed down the maternal line in Bong-soon\'s family. But for 27 years, she has always tried to keep it hidden.', 'https://drive.google.com/uc?id=1vfrCI5sBuQTaHWLrZgyaPy8Dijk0GOh3', 'https://drive.google.com/uc?id=1ZTF5Tzm2FnTEaLL6uW11_o9pvLCZGEh0'),
(42, 25, 'Episode 2', 2, 4020, 'As Min-hyuk spends the day shopping and playing, Bong-soon is forced to follow him around. While at a park, they spot a suspicious man spying on them.', 'https://drive.google.com/uc?id=1vfrCI5sBuQTaHWLrZgyaPy8Dijk0GOh3', 'https://drive.google.com/uc?id=1ZTF5Tzm2FnTEaLL6uW11_o9pvLCZGEh0'),
(43, 26, 'Episode 1', 1, 3660, 'One day Bok-joo, the star of the weightlifting club at her sports university, runs into Joon-hyung, a swimmer who is weak under pressure.', 'https://drive.google.com/uc?id=1AWu9AMClQ0lFieTlYY81lvC9OlBADUth', 'https://drive.google.com/uc?id=1hJjXaTB6CW4UcuWdayvE1YdQQvYPRTEh'),
(44, 26, 'Episode 2', 2, 3600, 'After Joon-hyung saves Bok-joo when she falls into the pool, they realize they were friends in childhood. Joon-hyung comments on Bok-joo\'s weight.', 'https://drive.google.com/uc?id=1AWu9AMClQ0lFieTlYY81lvC9OlBADUth', 'https://drive.google.com/uc?id=1hJjXaTB6CW4UcuWdayvE1YdQQvYPRTEh'),
(45, 27, 'Episode 1', 1, 3780, 'Jang Ha-ri reunites with Han I-sang at the worst possible moment. An unexpected health diagnosis shatters her hopes and dreams.', 'https://drive.google.com/uc?id=1BETGGA9-ZMhf5AAzJXeDh_9uiBIC6-Ki', 'https://drive.google.com/uc?id=1yOm7OeK38A79sQ_fXugV_tsoUYk2Mcsu'),
(46, 27, 'Episode 2 ', 2, 4020, 'Trying to catch the eyes of single prospects, Ha-ri performs at her cousin\'s wedding. A taste of motherhood steers her decision for the future.', 'https://drive.google.com/uc?id=1BETGGA9-ZMhf5AAzJXeDh_9uiBIC6-Ki', 'https://drive.google.com/uc?id=1yOm7OeK38A79sQ_fXugV_tsoUYk2Mcsu'),
(47, 28, 'The Sound of Your Heart/The Way Home', 1, 1620, 'Before Cho Seok became a big-name web cartoonist, he was a not-so-average guy with an offbeat family who became the source of his inspiration.', 'https://drive.google.com/uc?id=10qgg3G3V7DPNR77Tux0yFC8_0BSQA1t2', 'https://drive.google.com/uc?id=1bA5-bFzZ9IDHKhQ87rnDmlDO-oglxOqq'),
(48, 28, 'I\'ll Just Stay Here / Reply 2016', 2, 1420, 'Seok quarrels with his parents before realizing it\'s his mom\'s birthday; It\'s year 2066, and Seok flashes back to the moment he met his wife, Ae-bong.', 'https://drive.google.com/uc?id=10qgg3G3V7DPNR77Tux0yFC8_0BSQA1t2', 'https://drive.google.com/uc?id=1bA5-bFzZ9IDHKhQ87rnDmlDO-oglxOqq'),
(49, 29, 'Episode 1', 1, 3960, 'Three young men running a guesthouse make a shocking discovery in one of their rooms. Later, one of them, a newbie actor, begins filming with his idol.', 'https://drive.google.com/uc?id=1WxVMmzH6yq7dg6mzVUfhCqz9P7cIxBx7', 'https://drive.google.com/uc?id=1OqPrkCLQSbk_jRdKom3jSVUJ8fijO3Y-'),
(50, 29, 'Episode 2', 2, 3780, 'Han Yun-a\'s attempt to prove her worth to the household backfires. A filming delay forces Lee Jun-ki to live in scary costume makeup for 24 hours.', 'https://drive.google.com/uc?id=1WxVMmzH6yq7dg6mzVUfhCqz9P7cIxBx7', 'https://drive.google.com/uc?id=1OqPrkCLQSbk_jRdKom3jSVUJ8fijO3Y-'),
(51, 30, 'Episode 1', 1, 5580, 'Baseball pitcher Kim Je-hyeok gets slapped with a completely unexpected prison sentence only days before his flight to Boston to join the Red Sox.', 'https://drive.google.com/uc?id=1IEBUBmrtY-qF3tueUfG01ge1GjKZ_61B', 'https://drive.google.com/uc?id=1BkMkJ3I4rge9n2xyaKDhtOmpFOniK8Xf'),
(52, 30, 'Episode 2', 2, 5220, 'Je-hyeok\'s appeal is a week away, and everyone seems sure he\'ll win the case. Seagull demands that the Errand Boy sneak him a knife.', 'https://drive.google.com/uc?id=1IEBUBmrtY-qF3tueUfG01ge1GjKZ_61B', 'https://drive.google.com/uc?id=1BkMkJ3I4rge9n2xyaKDhtOmpFOniK8Xf'),
(53, 31, '', 1, 7200, '', '', 'https://drive.google.com/uc?id=1JWY7crzymcQaILr8aI1hGDl2ZlydHkka'),
(54, 32, '', 1, 7440, '', '', 'https://drive.google.com/uc?id=1zAS_uC0QVtSNlp0U38w4XqGcwthAyxUp'),
(55, 33, '', 1, 6840, '', '', 'https://drive.google.com/uc?id=1elOoDSmSF2-2QEmHYMagQQlnxzs9HgmR'),
(56, 34, '', 1, 7620, '', '', 'https://drive.google.com/uc?id=1iuRSzVWZR79uWI2g1POYb8kZ1GSddsBw'),
(57, 35, '', 1, 5820, '', '', 'https://drive.google.com/uc?id=1g02xsYHK84QxBsoFskWeLY0_gXhtEEbq'),
(58, 36, '', 1, 6240, '', '', 'https://drive.google.com/uc?id=1lc5hWQnI05FUi0kAT8uxWY9h8oCsoenD'),
(59, 37, '', 1, 5640, '', '', 'https://drive.google.com/uc?id=1Sje6BS1pDjMMI6eDxJvmiA0DdYqQWhyY'),
(60, 38, '', 1, 6360, '', '', 'https://drive.google.com/uc?id=1rsa1qfF552BiPBawapSSTslTBPYM_i27'),
(61, 39, '', 1, 5460, '', '', 'https://drive.google.com/uc?id=1uXGhRXzg_bDHcnffLD7N7Vo5BqmXoiim'),
(62, 40, '', 1, 5340, '', '', 'https://drive.google.com/uc?id=180gonE5BbDWhVNlA_eLSqNWJBx1XPvVK'),
(63, 41, 'Openings', 1, 3540, 'Sent to an orphanage at age 9, Beth develops an uncanny knack for chess - and a growing dependence on the green tranquilizers given to the children.', 'https://drive.google.com/uc?id=1XwMQfWzdOnAHTnO6CUZIxjTRyPGHKWnB', 'https://drive.google.com/uc?id=1amztthyvd6XZ4T1WCwiU-opeIZe_swcu'),
(64, 41, 'Exchanges', 2, 3900, 'Suddenly plunged into a confusing new life in suburbia, teenage Beth studies her high school classmates and hatches a plan to enter a chess tournament.', 'https://drive.google.com/uc?id=1XwMQfWzdOnAHTnO6CUZIxjTRyPGHKWnB', 'https://drive.google.com/uc?id=1amztthyvd6XZ4T1WCwiU-opeIZe_swcu'),
(65, 42, 'A Hard Day\'s Night', 1, 2580, 'First-year intern Meredith Grey, the daughter of a famous surgeon, meets her fellow interns on her first day at Seattle Grace Hospital.', 'https://drive.google.com/uc?id=1ETGqSM_HF8zFM4KOT9lZt9_1Lyluouny', 'https://drive.google.com/uc?id=1kIM-7oGPHVBTyUTkx3RsfnQc5K9PZwK9'),
(66, 42, 'The First Cut is the Deepest', 2, 2520, 'Meredith puts her career on the line to save a newborn in the hospital nursery.', 'https://drive.google.com/uc?id=1ETGqSM_HF8zFM4KOT9lZt9_1Lyluouny', 'https://drive.google.com/uc?id=1kIM-7oGPHVBTyUTkx3RsfnQc5K9PZwK9'),
(67, 43, 'Episode 1', 1, 3960, 'A devastating loss and an unfulfilled dream lead Sim Deok-chul to a ballet studio. Lee Chae-rok\'s real-life troubles disrupt his training.', 'https://drive.google.com/uc?id=1lc9p3K_6Ydy8FlIT0jpx6B0aIDHEi_RG', 'https://drive.google.com/uc?id=1Wvz6wq5M9GnGsvumuKWOayqasqaUhINl'),
(68, 43, 'Episode 2', 2, 4200, 'Deok-chul is eager to prove his capabilities as a student and manager. A dismayed Chae-rok agrees to teach him under one condition.', 'https://drive.google.com/uc?id=1lc9p3K_6Ydy8FlIT0jpx6B0aIDHEi_RG', 'https://drive.google.com/uc?id=1Wvz6wq5M9GnGsvumuKWOayqasqaUhINl'),
(69, 44, 'Episode 1', 1, 3180, 'A factory intern\'s fatal injury brings Han Jeong-u and Han Geu-ru to his room, where his goals for the future and love for his parents come into view.', 'https://drive.google.com/uc?id=13zN7UvXxpirgd7sKgMPg4GHBBI3MyMom', 'https://drive.google.com/uc?id=1X9uNViCrVVIoYbqhs4B7nvouhba-V-d6'),
(70, 44, 'Episode 2', 2, 3000, 'Cho Sang-gu moves in as Geu-ru\'s legal guardian and new colleague. Geu-ru searches for a mother\'s message in her stash of cash and bank receipts.', 'https://drive.google.com/uc?id=13zN7UvXxpirgd7sKgMPg4GHBBI3MyMom', 'https://drive.google.com/uc?id=1X9uNViCrVVIoYbqhs4B7nvouhba-V-d6'),
(71, 45, 'Episode 1', 1, 4380, 'On his first day at a new high school, Park Saeroyi stands by his principles in front of powerful bullies. Oh Soo-ah works on getting into college.', 'https://drive.google.com/uc?id=1JSiTcr_Mj2uzwralUrXxj6KPv-IjroIP', 'https://drive.google.com/uc?id=1U46Xq1pLoWmPB4zU3tLiga1Put3bSeHj'),
(72, 45, 'Episode 2', 2, 4020, 'While serving his time, Saeroyi develops a bold game plan for his future. Soo-ah can\'t ignore a generous offer from Jang Dae-hee.', 'https://drive.google.com/uc?id=1JSiTcr_Mj2uzwralUrXxj6KPv-IjroIP', 'https://drive.google.com/uc?id=1U46Xq1pLoWmPB4zU3tLiga1Put3bSeHj'),
(73, 46, 'START-UP', 1, 5040, 'The spring Seo Dal-mi lost everything, Nam Do-san\'s letters kept her company. Fifteen years later, she needs him by her side to prove Won In-jae wrong.', 'https://drive.google.com/uc?id=1bTF5xhAHoH2_t_NzDWJ5RxXK4rVUdugr', 'https://drive.google.com/uc?id=1N_PXH5qbQeU0YBYX_7UGU8Nz59XOnHI6'),
(74, 46, 'FAMILY, FRIENDS, FOOLS', 2, 4980, 'To preserve Dal-mi\'s past and to support her future, Choi Won-deok asks Han Ji-pyeong to pull off an impossible task.', 'https://drive.google.com/uc?id=1bTF5xhAHoH2_t_NzDWJ5RxXK4rVUdugr', 'https://drive.google.com/uc?id=1N_PXH5qbQeU0YBYX_7UGU8Nz59XOnHI6'),
(75, 47, 'Episode 1', 1, 5280, 'In 1988 Seoul, Deok-sun spends her days hanging out with childhood friends and practicing her role in the upcoming Olympics opening ceremony.', 'https://drive.google.com/uc?id=1fctsPwut2vrrf3yNpRaK7cAFZ4vTMChw', 'https://drive.google.com/uc?id=1M5P0-IQ3ciPSQWfG5oTFizuNg9tL4Lb2'),
(76, 47, 'Episode 2', 2, 5280, 'Choi Taek\'s latest win calls for a neighborhood celebration. Deok-sun and Dong-il grieve for their loved one\'s passing in different ways.', 'https://drive.google.com/uc?id=1fctsPwut2vrrf3yNpRaK7cAFZ4vTMChw', 'https://drive.google.com/uc?id=1M5P0-IQ3ciPSQWfG5oTFizuNg9tL4Lb2'),
(77, 48, 'Episode 1', 1, 4080, 'When Yeong-jae gets accepted into a top medical school, his mom becomes the envy of the other mothers, who all want to know just how she managed it.', 'https://drive.google.com/uc?id=1cHqH_QVDNndfyApnBXvnBTYOD3U2tzRn', 'https://drive.google.com/uc?id=1vgf_1Kh8Y4QjNminZ6z6uoWJ49astFIT'),
(78, 48, 'Episode 2', 2, 3780, 'While everyone\'s still reeling from the shock of what happened, a new family whose background and values seem very different moves into Sky Castle.', 'https://drive.google.com/uc?id=1cHqH_QVDNndfyApnBXvnBTYOD3U2tzRn', 'https://drive.google.com/uc?id=1vgf_1Kh8Y4QjNminZ6z6uoWJ49astFIT'),
(79, 49, 'Episode 1', 1, 4920, 'Five friends whose friendship goes back to their days in med school are brought back together when a phone call interrupts each of their busy lives.', 'https://drive.google.com/uc?id=1fsv-N9Us8UD80olwXzl2ucEmDUEnUnBm', 'https://drive.google.com/uc?id=1PNNdHGl9-_u0x0ms1uesJDFLsjZoBs2T'),
(80, 49, 'Episode 2', 2, 4920, 'For the first time in 20 years, everyone\'s finally working under the same roof. A patient with a familiar name finds Chae Song-hwa.', 'https://drive.google.com/uc?id=1fsv-N9Us8UD80olwXzl2ucEmDUEnUnBm', 'https://drive.google.com/uc?id=1PNNdHGl9-_u0x0ms1uesJDFLsjZoBs2T'),
(81, 50, 'Episode 1', 1, 3600, 'A heroic doctor steps in to help a distraught boy. Intern Gang Dong-ju helps Dr. Yun Seo-jeong with emergencies at Geosan University Medical Center.', 'https://drive.google.com/uc?id=1dUOI4TQgLsmAYL_NOX4qS0yPNykCR9-V', 'https://drive.google.com/uc?id=1QK89GNMg1ed2Lom_iy35p592wSD2E7NB'),
(82, 50, 'Episode 2', 2, 3480, 'Dong-ju wonders whether hard work is enough to get ahead. Doldam Hospital gets a new doctor in general surgery. Seo-jeong sees a face from the past.', 'https://drive.google.com/uc?id=1dUOI4TQgLsmAYL_NOX4qS0yPNykCR9-V', 'https://drive.google.com/uc?id=1QK89GNMg1ed2Lom_iy35p592wSD2E7NB'),
(93, 51, '', 1, 8220, '', '', 'https://drive.google.com/uc?id=1d_OXIJGhVFp21ef-A3a85iKvCqPiZe6c'),
(94, 52, '', 1, 6060, '', '', 'https://drive.google.com/uc?id=120Qcf6YxM0l815ZshtE3EeIHoImLgEoH'),
(95, 53, '', 1, 7020, '', '', 'https://drive.google.com/uc?id=1H7HR9l-rW_gqq5ZtQxmf0I_78ZoYe4Od'),
(96, 54, '', 1, 6480, '', '', 'https://drive.google.com/uc?id=1XqF2xnc2OXty9SP3VBvbm84b6mZkmtRf'),
(97, 55, '', 1, 7500, '', '', 'https://drive.google.com/uc?id=1EizYGyV1CWxz6t-QfYbs8PSnU3bzQvy7'),
(98, 56, '', 1, 7620, '', '', 'https://drive.google.com/uc?id=15DTNCa5ba21RiZeND69AWD08hbkM4RgT'),
(99, 57, '', 1, 5400, '', '', 'https://drive.google.com/uc?id=1Qcp00lJDbPi4Y1ON_LoJ_9th2HyG9Bc9'),
(100, 58, '', 1, 6300, '', '', 'https://drive.google.com/uc?id=1Qcp00lJDbPi4Y1ON_LoJ_9th2HyG9Bc9'),
(101, 59, '', 1, 6720, '', '', 'https://drive.google.com/uc?id=1GdF2LoSgMRJ7hDNPErJagT9dipOpCpdd'),
(102, 60, '', 1, 6960, '', '', 'https://drive.google.com/uc?id=1O8pJs5ZLTEoNH9fLOCMZre1lCMsNXuG5'),
(103, 61, 'Episode 1', 1, 5280, 'After Kim Shin is sentenced to death for treason, he is reborn and wanders the earth in search of the bride who can release him from his immortality.', 'https://drive.google.com/uc?id=1_UWcqJnwCQoU5WarmYDK3BH4sW0G3fd-', 'https://drive.google.com/uc?id=1f70-38YdF-9q9mWxYYBHcPI15BhsR-rC'),
(104, 61, 'Episode 2', 2, 4620, 'Eun-tak follows Shin and suddenly finds herself transported to Quebec. Realizing she is in a foreign country, she is convinced of Shin\'s true nature.', 'https://drive.google.com/uc?id=1_UWcqJnwCQoU5WarmYDK3BH4sW0G3fd-', 'https://drive.google.com/uc?id=1f70-38YdF-9q9mWxYYBHcPI15BhsR-rC'),
(105, 62, 'Episode 1', 1, 3000, 'Ahn Eun-young enters the forbidden basement as Hong In-pyo reluctantly trails along. They join hands when a dark secret shakes up the school.', 'https://drive.google.com/uc?id=1Ds5mEP1DQI-x_rH7aEhudO9244yNGeR3', 'https://drive.google.com/uc?id=1h-iSxYtZAmuR-TIsbkiJLe0hYGkbrtyI'),
(106, 62, 'Episode 2', 2, 3000, 'When the bond between two troublemaking students catches Eun-young\'s eye, In-pyo proposes unconventional ideas to split and keep them apart.', 'https://drive.google.com/uc?id=1Ds5mEP1DQI-x_rH7aEhudO9244yNGeR3', 'https://drive.google.com/uc?id=1h-iSxYtZAmuR-TIsbkiJLe0hYGkbrtyI'),
(107, 63, 'Episode 1', 1, 3900, 'As a child, Nam Ji-a loses her parents. Two decades later, a curious case involving a runaway bride and a man with a red umbrella catches her attention.', 'https://drive.google.com/uc?id=1QEc38uSHqls-8JCbevyUPX_gL6o5t0cq', 'https://drive.google.com/uc?id=1DgPKh4k_fvO_n9GUdCLghDJm-m0D9SEj'),
(108, 63, 'Episode 2', 2, 4200, 'Recognizing Lee Yeon as her childhood savior, Ji-a thinks he might have a lead in locating her parents. A skull is discovered on a fishing boat.', 'https://drive.google.com/uc?id=1QEc38uSHqls-8JCbevyUPX_gL6o5t0cq', 'https://drive.google.com/uc?id=1DgPKh4k_fvO_n9GUdCLghDJm-m0D9SEj'),
(109, 64, 'Episode 1', 1, 3480, '', 'https://drive.google.com/uc?id=1kyz0lfnl6ONk1gbioOMoSaKw_63_3ISV', 'https://drive.google.com/uc?id=1pO_7Ff9089EeWY-6BAqsIQwG1pHNqtbG'),
(110, 64, 'Episode 2', 2, 3480, '', 'https://drive.google.com/uc?id=1kyz0lfnl6ONk1gbioOMoSaKw_63_3ISV', 'https://drive.google.com/uc?id=1pO_7Ff9089EeWY-6BAqsIQwG1pHNqtbG'),
(111, 65, 'Episode 1', 1, 3960, 'After getting alarming news from his fiancee, Cha Min has a mishap and receives an object called Abyss. Go Se-yeon meets someone who says he\'s a friend.', 'https://drive.google.com/uc?id=1NDVMnK_OkNbwsx9cPc-BMEsksQyYqgfT', 'https://drive.google.com/uc?id=1S5XP2iYpBcDW3-IVyis1W-Vsmgflaj2J'),
(112, 65, 'Episode 2', 2, 3900, 'Min explains what he did to Se-yeon, who\'s in disbelief over her circumstances. Vowing to find her killer, she devises a way to help Min and herself.', 'https://drive.google.com/uc?id=1NDVMnK_OkNbwsx9cPc-BMEsksQyYqgfT', 'https://drive.google.com/uc?id=1S5XP2iYpBcDW3-IVyis1W-Vsmgflaj2J'),
(113, 66, 'Episode 1', 1, 3720, '', 'https://drive.google.com/uc?id=1sfauKN82amdM2Yzry4WIHhGMs4BvHo0I', 'https://drive.google.com/uc?id=1VUX225uKa4fiBqwDfoW5XTJl2TBH2EPR'),
(114, 66, 'Episode 2', 2, 3720, '', 'https://drive.google.com/uc?id=1sfauKN82amdM2Yzry4WIHhGMs4BvHo0I', 'https://drive.google.com/uc?id=1VUX225uKa4fiBqwDfoW5XTJl2TBH2EPR'),
(115, 67, 'Episode 1', 1, 4380, 'Jang Man-wol agrees to save a man\'s life -- if he promises to give her his son. Koo Chan-sung receives an unwelcome birthday gift.', 'https://drive.google.com/uc?id=1Cs3_amzfJ21PcykvH1D-e0M4sBq6jWvS', 'https://drive.google.com/uc?id=18ZaJlClUT2MJzSLvbkFrbAnImvgk4B88'),
(116, 67, 'Episode 2', 2, 4560, 'On his way to a new job, Chan-sung stops by Hotel Del Luna to pay back his father\'s debt and begs Man-wol to take back her gift.', 'https://drive.google.com/uc?id=1Cs3_amzfJ21PcykvH1D-e0M4sBq6jWvS', 'https://drive.google.com/uc?id=18ZaJlClUT2MJzSLvbkFrbAnImvgk4B88'),
(117, 68, 'Episode 1', 1, 4800, 'Sanung and the Saram propose an alliance with the blue-eyed Neanthal, but when things don\'t go as expected, Tagon takes command of the Great Hunt.', 'https://drive.google.com/uc?id=1jGRxDu9m-xixQWSBGxano9S6hhfSHoG9', 'https://drive.google.com/uc?id=1DYpm0cKTSjR6a-qTZl6ypGM-GCyQVioF'),
(118, 68, 'Episode 2', 2, 4800, 'The villagers cast suspicion on Eunseom upon learning that he has dreams. Tanya questions her destiny. Tagon greets his men in an unlikely place.', 'https://drive.google.com/uc?id=1jGRxDu9m-xixQWSBGxano9S6hhfSHoG9', 'https://drive.google.com/uc?id=1DYpm0cKTSjR6a-qTZl6ypGM-GCyQVioF'),
(119, 69, 'Episode 1', 1, 4320, 'Lee Gon mourns the tragic death of his father. Lee Lim goes on the run - and finds escape when he comes across a door to a parallel universe.', 'https://drive.google.com/uc?id=1fUD98nFSjj1dLdVWUnKpLSbegPnAsec0', 'https://drive.google.com/uc?id=1vPVLq_qBdv96rnJdgBF9HO1mu-Q5pG5l'),
(120, 69, 'Episode 2', 2, 4380, 'Gon insists he is an emperor from another world. An incredulous Jeong Tae-eul takes him to the police station, where he sees a familiar face.', 'https://drive.google.com/uc?id=1fUD98nFSjj1dLdVWUnKpLSbegPnAsec0', 'https://drive.google.com/uc?id=1vPVLq_qBdv96rnJdgBF9HO1mu-Q5pG5l'),
(121, 70, 'Episode 1', 1, 3540, 'In 1598, the nobleman Dam-Ryung releases a mermaid back into the ocean. In present-day Seoul, the figure of conman Joon-Jae stands on the same spot.', 'https://drive.google.com/uc?id=1ATkSSa_h4Ro309DPDzqaZqi2tiM_dAN2', 'https://drive.google.com/uc?id=1m9xNibyQfu4jeJsPVohL_O3P66iut73m'),
(122, 70, 'Episode 2', 2, 3540, 'Joon-Jae brings a beautiful woman back to his hotel, unaware that she\'s a mermaid. Jin-Ok realizes she\'s been scammed and sends men after Joon-Jae.', 'https://drive.google.com/uc?id=1ATkSSa_h4Ro309DPDzqaZqi2tiM_dAN2', 'https://drive.google.com/uc?id=1m9xNibyQfu4jeJsPVohL_O3P66iut73m'),
(123, 71, '', 1, 6240, '', '', 'https://drive.google.com/uc?id=1_6AxOjFY7dQkW3Hcqdry97bk2zYrGIR5'),
(124, 72, '', 1, 7380, '', '', 'https://drive.google.com/uc?id=1aQYxcC_lnBrIEeEAIjpIToldZGK0Rwwt'),
(125, 73, '', 1, 7140, '', '', 'https://drive.google.com/uc?id=1rcKBdn5GVQfRomyWZrgiV-3g7etZ6h3L'),
(126, 74, '', 1, 7980, '', '', 'https://drive.google.com/uc?id=1CFQzPx8L8VG2_HhxKfI3S0FQHD9s0Bzh'),
(127, 75, '', 1, 6660, '', '', 'https://drive.google.com/uc?id=1NbbEJRII9pa2LKmfDwYcU-0aN0B9sHkx'),
(128, 76, '', 1, 6180, '', '', 'https://drive.google.com/uc?id=1Hb56H_UBq8o7Q39_qE6_oSB39mhQmjob'),
(129, 77, '', 1, 7260, '', '', 'https://drive.google.com/uc?id=1fLWy2RfIliBhQ-Q_DhckkhMS1-AxA9j1'),
(130, 78, '', 1, 5760, '', '', 'https://drive.google.com/uc?id=18VbB07rx-QPY9G_HFMT8q8vc_KPWl5kw'),
(131, 79, '', 1, 5760, '', '', 'https://drive.google.com/uc?id=1mHhV7wjKNUvSYVaAfMPJcQaopLEzIVKZ'),
(132, 80, '', 1, 5820, '', '', 'https://drive.google.com/uc?id=1ZCtl0pxga1yC4ftdGWaktWg4ZOonoBhF'),
(133, 81, 'Episode 1', 1, 3000, 'Cha Hyun-su moves into the run-down Green Home by himself. Not long after, he witnesses a disturbing sight in his neighbor\'s apartment.', 'https://drive.google.com/uc?id=11D0SnSd4xYVC3KGwvxK7KKArIZsbbN-I', 'https://drive.google.com/uc?id=1wj4UUdry-RMLO6a3ACxrfWBpI5GBmI7H'),
(134, 81, 'Episode 2', 2, 3360, 'As a state of emergency is declared, the residents tie up Pyeon Sang-wook for being bitten. Hyun-su is unable to ignore a family in distress.', 'https://drive.google.com/uc?id=11D0SnSd4xYVC3KGwvxK7KKArIZsbbN-I', 'https://drive.google.com/uc?id=1wj4UUdry-RMLO6a3ACxrfWBpI5GBmI7H'),
(135, 82, 'Episode 1', 1, 3420, 'In school, Oh Jisoo maintains a low-key existence. Outside of it, he masterminds a risky side hustle that no one can ever know about.', 'https://drive.google.com/uc?id=1Q8sJ00vEkclaKat85en81aZLGMjAccKt', 'https://drive.google.com/uc?id=1HT_DpsEaaA499VTT5mqtw7MI0GpmTWVu'),
(136, 82, 'Episode 2', 2, 4140, 'Jisoo panics when the phone he uses to run the business falls into the hands of an unknown blackmailer. Seo Minhee tries to get back to work.', 'https://drive.google.com/uc?id=1Q8sJ00vEkclaKat85en81aZLGMjAccKt', 'https://drive.google.com/uc?id=1HT_DpsEaaA499VTT5mqtw7MI0GpmTWVu'),
(137, 83, 'Episode 1', 1, 3660, 'When a young boy accuses his father of trying to kill him, Cha Ji-won investigates. An unwelcome reminder of Do Hyeon-su\'s past walks into his shop.', 'https://drive.google.com/uc?id=1XMiFJYNcLOY431bCVx1H8o9kIbSIVbah', 'https://drive.google.com/uc?id=1rUNLwI7QJe3qi5QFNXljG461QDRDMUQz'),
(138, 83, 'Episode 2', 2, 4020, 'The police wonder whether they have a copycat killer on their hands when a dead woman is discovered with an unusual injury. Kim Moo-jin remains tied up.', 'https://drive.google.com/uc?id=1XMiFJYNcLOY431bCVx1H8o9kIbSIVbah', 'https://drive.google.com/uc?id=1rUNLwI7QJe3qi5QFNXljG461QDRDMUQz'),
(139, 84, 'The Ugly Truth', 1, 2580, 'Enigmatic student Nanno transfers to a school that has recently earned the title of \"Purest School of the Year,\" but she soon exposes the ugly truth.', 'https://drive.google.com/uc?id=1DhNd1gqLvQ6yqSBk0HZ-v8Cce4er_G65', 'https://drive.google.com/uc?id=1kHZauI_UfPD8LMOfglXUvEwSmJm9j5XL'),
(140, 84, 'Apologies', 2, 2460, 'The boys all want to take advantage of Nanno and the girls are jealous and cruel. They try to destroy her, but Nanno always has the upper hand.', 'https://drive.google.com/uc?id=1DhNd1gqLvQ6yqSBk0HZ-v8Cce4er_G65', 'https://drive.google.com/uc?id=1kHZauI_UfPD8LMOfglXUvEwSmJm9j5XL'),
(141, 85, 'Episode 1', 1, 3360, 'Officials find notices in Hanyang alleging the king is dead. Crown Prince Lee Chang tries to check on his father, but the young queen stands in his way.', 'https://drive.google.com/uc?id=15CmNGRC2SNL-XNts3Dh4un_Ito4K0kLo', 'https://drive.google.com/uc?id=1FLmyX15DFxO0cPjzzV5NhupNu8lS3t-o'),
(142, 85, 'Episode 2', 2, 3240, 'Prince Chang and Mu-yeong arrive at Jiyulheon, where they make a horrific discovery. Seo-bi\'s story of what she saw eerily resonates with Prince Chang.', 'https://drive.google.com/uc?id=15CmNGRC2SNL-XNts3Dh4un_Ito4K0kLo', 'https://drive.google.com/uc?id=1FLmyX15DFxO0cPjzzV5NhupNu8lS3t-o'),
(143, 86, 'Episode 1', 1, 3600, 'After an unfortunate incident, Na I-je goes from being a respectable doctor at Taekang Hospital to freeing criminals from jail.', 'https://drive.google.com/uc?id=1DIBB8RBbQ8YUAuJ0CTyOnXwlh5yahUA1', 'https://drive.google.com/uc?id=1wvkJ14OQfboBp9hakOmnfpZ15TMPYROb'),
(144, 86, 'Episode 2', 2, 3600, 'Lee Jae-hwan survives the bus crash with injuries that could reduce his prison sentence. I-je sides with a powerful ally to ensure that doesn\'t happen.', 'https://drive.google.com/uc?id=1DIBB8RBbQ8YUAuJ0CTyOnXwlh5yahUA1', 'https://drive.google.com/uc?id=1wvkJ14OQfboBp9hakOmnfpZ15TMPYROb'),
(145, 87, 'Episode 1', 1, 3600, '', 'https://drive.google.com/uc?id=1kF3AhsGKVSlSwr5tqnybrClgZSN81Wth', 'https://drive.google.com/uc?id=1wBu60EA5RdIhpkLq777Hz7KWtzToKzQh'),
(146, 87, 'Episode 2', 2, 3720, '', 'https://drive.google.com/uc?id=1kF3AhsGKVSlSwr5tqnybrClgZSN81Wth', 'https://drive.google.com/uc?id=1wBu60EA5RdIhpkLq777Hz7KWtzToKzQh'),
(147, 88, 'Episode 1', 1, 2880, 'Arisu and his friends run into a public bathroom to hide from the police, but when they reemerge, the streets of Tokyo are suddenly completely empty.', 'https://drive.google.com/uc?id=1trEk5rwiDCharK426-I25U5_XRi4v0H_', 'https://drive.google.com/uc?id=10f6G3JXnXyedmQrNu01npEdv9cjntJE6'),
(148, 88, 'Episode 2', 2, 3000, 'Leaving an injured Chota, Arisu and Karube head out to gain more experience. They come to a sprawling apartment, where a deadly game of tag awaits.', 'https://drive.google.com/uc?id=1trEk5rwiDCharK426-I25U5_XRi4v0H_', 'https://drive.google.com/uc?id=10f6G3JXnXyedmQrNu01npEdv9cjntJE6'),
(149, 89, 'Episode 1', 1, 3660, 'The year is 1985. While chasing after a petty thief, Park Gwang-ho comes across an abandoned body that\'s been bound and gagged in stockings.', 'https://drive.google.com/uc?id=1YlAUmOpSyNyukvFl7Ivu7WIOl2BMMNpU', 'https://drive.google.com/uc?id=1-3VYvrIujVs73KU2m5i2MoPABRKc0wc_'),
(150, 89, 'Episode 2', 2, 3600, 'Stranded in the future, Gwang-ho inadvertently assumes the identity of another officer with the same name. To be himself again, he needs to go back.', 'https://drive.google.com/uc?id=1YlAUmOpSyNyukvFl7Ivu7WIOl2BMMNpU', 'https://drive.google.com/uc?id=1-3VYvrIujVs73KU2m5i2MoPABRKc0wc_'),
(151, 90, 'Episode 1', 1, 3600, 'Plain bad luck awaits Yoon Jong-u on his first day in the big city. He finds a cheap place to live and vows he will stay there only for a short while.', 'https://drive.google.com/uc?id=1uvFPjHUOhgZnsBVfXa4XYz0BIKvjzU6A', 'https://drive.google.com/uc?id=1kAvW4vX07zPt1CDQPD8N3a5ZT_3pE4Vr'),
(152, 90, 'Episode 2', 2, 3600, 'Jong-u receives unwanted attention from his neighbors but none at all from his supervisor at work. Meanwhile, dead cats are found near Eden.', 'https://drive.google.com/uc?id=1uvFPjHUOhgZnsBVfXa4XYz0BIKvjzU6A', 'https://drive.google.com/uc?id=1kAvW4vX07zPt1CDQPD8N3a5ZT_3pE4Vr'),
(153, 91, '', 1, 7920, '', '', 'https://drive.google.com/uc?id=1pm-SIlZu8oZToV6XgHYrWy7fGMMviEN5'),
(154, 92, '', 1, 6720, '', '', 'https://drive.google.com/uc?id=1MAm569634O759MYVFQWkXpQZc5wVTwfP'),
(155, 93, '', 1, 7440, '', '', 'https://drive.google.com/uc?id=1Vbm6T9yp7p0T4Lnt0exvLVp33xODAhh5'),
(156, 94, '', 1, 8160, '', '', 'https://drive.google.com/uc?id=16IgCFrzCheBmONO_K3Ch7m3DoTGJR3ld'),
(157, 95, '', 1, 7080, '', '', 'https://drive.google.com/uc?id=1ZLtryBC93y90hlyZ8YKKKpzRouje0H-5'),
(158, 96, '', 1, 5580, '', '', 'https://drive.google.com/uc?id=1ta5ruFAvzCorro9cBKMRe6SDvwfGYkq4'),
(159, 97, '', 1, 7740, '', '', 'https://drive.google.com/uc?id=13B0E7ZZoeq90izIGpuk2pmCyKlF3ImZt'),
(160, 98, '', 1, 5880, '', '', 'https://drive.google.com/uc?id=1wTygraDCl6zjJUwiREivunoMp1uqLhyj'),
(161, 99, '', 1, 6540, '', '', 'https://drive.google.com/uc?id=1GIdp0Ympy3PHNY59cczG8DqSx1WDVsWc'),
(162, 100, '', 1, 6000, '', '', 'https://drive.google.com/uc?id=1zFAws2kvUX0r9Hn4sad7itqBCyP9VNXp'),
(163, 101, 'The Boy Who Fed On Nightmares', 1, 4500, 'Moon Gang-tae has a striking run-in with his brother\'s favorite author, Ko Mun-yeong, when she comes to his hospital to read to the children.', 'https://drive.google.com/uc?id=1LgVKcqQcKH8HTylen0jAe5YXBMK7msNW', 'https://drive.google.com/uc?id=1ponXqJXjpsiGj7ZwinDVrrlM2737TnNc'),
(164, 101, 'The Lady in Red Shoes', 2, 4380, 'Mun-yeong invites Moon Sang-tae to a book signing event that ends with a nasty commotion. Gang-tae hears about a job opening in his hometown.', 'https://drive.google.com/uc?id=1LgVKcqQcKH8HTylen0jAe5YXBMK7msNW', 'https://drive.google.com/uc?id=1ponXqJXjpsiGj7ZwinDVrrlM2737TnNc'),
(165, 102, 'Episode 1', 1, 4320, 'Despite opposition from his family, Sa Hye-jun hustles to make ends meet while pursuing an acting career. At a fashion show, he meets An Jeong-ha.', 'https://drive.google.com/uc?id=1oGtjblupb1cNR0cLX25g8N9fEixECIBC', 'https://drive.google.com/uc?id=1x6WybZgE5EvprHOkAbl9jtkfMl6Afygx'),
(166, 102, 'Episode 2', 2, 4620, 'Nothing is easy for Hye-jun as he faces an insulting proposition, upsetting clashes with his father and disappointing news from Won Hae-hyo.', 'https://drive.google.com/uc?id=1oGtjblupb1cNR0cLX25g8N9fEixECIBC', 'https://drive.google.com/uc?id=1x6WybZgE5EvprHOkAbl9jtkfMl6Afygx'),
(167, 103, 'Episode 1', 1, 3780, 'Yeo Ha-jin has a busy week complete with two dating scandals, an electrifying final film shoot and a live news interview with the notable Lee Jeong-hun.', 'https://drive.google.com/uc?id=1FC5dprQNZQkBuYH1wH-5JKDz5ZTucAJN', 'https://drive.google.com/uc?id=1IcYZ0e2_Hh2XPKChV0YpUlFAMalZBU9U'),
(168, 103, 'Episode 2', 2, 3840, 'Becoming the talk of the town after being spotted with Ha-jin, Jeong-hun reluctantly agrees to go along with the tabloid romance for a short while.', 'https://drive.google.com/uc?id=1FC5dprQNZQkBuYH1wH-5JKDz5ZTucAJN', 'https://drive.google.com/uc?id=1IcYZ0e2_Hh2XPKChV0YpUlFAMalZBU9U'),
(169, 104, 'Episode 1', 1, 3660, 'A doctor takes charge when thugs refuse her treatment because she\'s a woman. A good teacher is hard to come by -- this may be Hye-jeong’s lucky day.', 'https://drive.google.com/uc?id=17-Tl72GPSBOesYdTy68nfTQwhOKfOaSZ', 'https://drive.google.com/uc?id=1m07CK3kaJ_1Z5pmxfgOsCc_7oo7YnXkM'),
(170, 104, 'Episode 2', 2, 3600, 'Hye-jeong sees familiar faces at school and makes a new friend. During an emergency, she discovers something about Ji-hong -- and herself.', 'https://drive.google.com/uc?id=17-Tl72GPSBOesYdTy68nfTQwhOKfOaSZ', 'https://drive.google.com/uc?id=1m07CK3kaJ_1Z5pmxfgOsCc_7oo7YnXkM'),
(171, 105, 'Episode 1', 1, 3960, 'Just before an important basketball game, Hong Dae-yeong\'s girlfriend breaks shocking news. Years later, the unhappy pair face divorce.', 'https://drive.google.com/uc?id=147LJOELbXi_HKCOCOMg10hK09C36pNW_', 'https://drive.google.com/uc?id=1OqMQqHyC4M5naXG74Q9JkSJunPbnq69X'),
(172, 105, 'Episode 2', 2, 4020, 'Now a classmate to his children, Dae-yeong finds out just how much they\'ve been keeping from him. Jung Da-jeong takes another shot at her dreams.', 'https://drive.google.com/uc?id=147LJOELbXi_HKCOCOMg10hK09C36pNW_', 'https://drive.google.com/uc?id=1OqMQqHyC4M5naXG74Q9JkSJunPbnq69X'),
(173, 106, 'Episode 1', 1, 4020, 'Ki Seon-gyeom notices bruises on Kim Woo-sik\'s body. Trying to get back into her professor\'s good graces, Oh Mi-joo takes on an interpreting gig.', 'https://drive.google.com/uc?id=19Bxc7al3BpxHM6XzoXmd9ETPE1YaGAhR', 'https://drive.google.com/uc?id=1EdsSEm-glESnazDLgYlTFYJuOuPyK8DU'),
(174, 106, 'Episode 2', 2, 4260, 'Seon-gyeom gets revenge on Woo-sik\'s behalf, but is disheartened by the coaches\' inaction. Mi-joo and Seon-gyeom bond over a movie and drinks.', 'https://drive.google.com/uc?id=19Bxc7al3BpxHM6XzoXmd9ETPE1YaGAhR', 'https://drive.google.com/uc?id=1EdsSEm-glESnazDLgYlTFYJuOuPyK8DU'),
(175, 107, 'Lovestruck in the City', 1, 1860, 'Park Jae-won\'s first day of vacation starts with a spontaneous singalong in a sunlit van and ends with fireworks - and Yoon Seon-a by his side.', 'https://drive.google.com/uc?id=1HQCyWIcAp-T0ziQzi3WV0vxNqMSpmRiT', 'https://drive.google.com/uc?id=1PNORhoyB4cGjHqBQKy5SFhCT73LowiRr'),
(176, 107, 'She Drove me Crazy', 3, 1740, 'Seon-a lets misunderstandings cause a rift between her and Jae-won. Wanting to know how she feels, Jae-won asks Seon-a to meet him by a certain hour.', 'https://drive.google.com/uc?id=1HQCyWIcAp-T0ziQzi3WV0vxNqMSpmRiT', 'https://drive.google.com/uc?id=1PNORhoyB4cGjHqBQKy5SFhCT73LowiRr'),
(177, 108, 'The Flash of Lighting Before It Thunders', 1, 3300, 'Unlike her friends, Kim Jojo has more pressing things on her mind than dating. Upon returning from abroad, Hwang Sun-oh goes to see Lee Hye-yeong.', 'https://drive.google.com/uc?id=1J42hvrmEtDPLL6pKSu7_0C0NWtfJQ-sE', 'https://drive.google.com/uc?id=1jjog0i7dVAYd-o1ZOKwonN8bhcppPJP0'),
(178, 108, 'There\'s Nothing Anyone Can Do When You Like Someone', 2, 3000, 'Sun-oh wants to know whether Hye-yeong has feelings for Jojo and tells him what he did. Jang Il-sik gets into a fight with Sun-oh and Hye-yeong.', 'https://drive.google.com/uc?id=1J42hvrmEtDPLL6pKSu7_0C0NWtfJQ-sE', 'https://drive.google.com/uc?id=1jjog0i7dVAYd-o1ZOKwonN8bhcppPJP0'),
(179, 109, 'Episode 1', 1, 3780, 'Everything Eun Dan-o thought she knew about reality shatters when she comes across a mysterious comic book in the library.', 'https://drive.google.com/uc?id=1FoWO6VQ99048IdAJpYkQULymYsYaHBLs', 'https://drive.google.com/uc?id=1o1Onm6v4OqxAL1xedFfSlJShHnJUBlAt'),
(180, 109, 'Episode 2', 2, 3900, 'As if the disappointing truth about her place in the world weren\'t enough of a bummer for Dan-o, Baek Gyeong makes things a little worse still.', 'https://drive.google.com/uc?id=1FoWO6VQ99048IdAJpYkQULymYsYaHBLs', 'https://drive.google.com/uc?id=1o1Onm6v4OqxAL1xedFfSlJShHnJUBlAt'),
(181, 110, 'Episode 1', 1, 4260, 'Knocked out by fierce winds while paragliding through the air, Yun Se-ri wakes up on the north side of the Korean DMZ, where Ri Jeong Hyeok finds her.', 'https://drive.google.com/uc?id=1P6lwAI5BcwIcKCt_i4ZFSjrS38mk4HiI', 'https://drive.google.com/uc?id=1IOteUNYULEclTNdYD6C7igfXnURCaLQ7'),
(182, 110, 'Episode 2', 2, 4620, 'After talking Jeong Hyeok and his comrades into hiding her in his home, Se-ri gets a taste of his way of life. Gu Seung-jun buys refuge in Pyongyang.', 'https://drive.google.com/uc?id=1P6lwAI5BcwIcKCt_i4ZFSjrS38mk4HiI', 'https://drive.google.com/uc?id=1IOteUNYULEclTNdYD6C7igfXnURCaLQ7'),
(183, 111, '', 1, 6600, '', '', 'https://drive.google.com/uc?id=1VPfz41Y4nmtq1OxVYhI-7KV-QvzJikEO'),
(184, 112, '', 1, 7320, '', '', 'https://drive.google.com/uc?id=1VPfz41Y4nmtq1OxVYhI-7KV-QvzJikEO'),
(185, 113, '', 1, 6720, '', '', 'https://drive.google.com/uc?id=1msoiEu-B1o944PsE22S_re5PFiFxyNpJ'),
(186, 114, '', 1, 6540, '', '', 'https://drive.google.com/uc?id=1MI1LFlk-X6uRpmhyT8qaiiwVQkibo1o6'),
(187, 115, '', 1, 6360, '', '', 'https://drive.google.com/uc?id=1GftpWR2nU-W9GtcbhGzTs4z9UqqqlcWD'),
(188, 116, '', 1, 4620, '', '', 'https://drive.google.com/uc?id=1XqinFksbTGryWoTvdmaHDFCkLpZmXKGn'),
(189, 117, '', 1, 5940, '', '', 'https://drive.google.com/uc?id=1-g5q93kajaGNG3_YXWBC_YKBNKTSWN_3'),
(190, 118, '', 1, 6480, '', '', 'https://drive.google.com/uc?id=1B8voKrApdPXzVlf-CrDEVLr9lP5gbI4r'),
(191, 119, '', 1, 6060, '', '', 'https://drive.google.com/uc?id=1bLNvqch4ajqeODRGxQnFMyAiMq-W3zNN'),
(192, 120, '', 1, 6300, '', '', 'https://drive.google.com/uc?id=1L-cF54JBeMScf3mwKN-kbYzUNY5LxrdB'),
(193, 121, 'Episode 1', 1, 5040, 'Vincenzo Cassano\'s homecoming is met by distrusting tenants and eager fraudsters. Hong Yu-chan relinquishes his parental rights to Hong Cha-young.', 'https://drive.google.com/uc?id=1RW1OAIc0Zrm3JvnSyDf0a5qjSUHAIrCr', 'https://drive.google.com/uc?id=1GvI2UhViDxXH0YpB8DFH9cjXSZjx-Ggo'),
(194, 121, 'Episode 2', 2, 4740, 'Warned about a scheduled demolition of Geumga Plaza, Vincenzo contrives to thwart the attack. Yu-chan receives a call from a whistleblower.', 'https://drive.google.com/uc?id=1RW1OAIc0Zrm3JvnSyDf0a5qjSUHAIrCr', 'https://drive.google.com/uc?id=1GvI2UhViDxXH0YpB8DFH9cjXSZjx-Ggo'),
(195, 122, 'Episode 1', 1, 4560, 'Profiler Park Hae-young hears a man calling his name through a discarded two-way radio. The voice starts talking about an unsolved crime.', 'https://drive.google.com/uc?id=1q6_t8bpVvc11-JSYNwlkCnqCPGzTbFyh', 'https://drive.google.com/uc?id=1LobAHun2e4SJRX7fNflIak8PEW5nGDdT'),
(196, 122, 'Episode 2', 2, 3900, 'The statute of limitations is lifted after the suspect\'s arrest. Hae-young joins Soo-hyun\'s team for the newly established cold case squad.', 'https://drive.google.com/uc?id=1q6_t8bpVvc11-JSYNwlkCnqCPGzTbFyh', 'https://drive.google.com/uc?id=1LobAHun2e4SJRX7fNflIak8PEW5nGDdT'),
(197, 123, 'Episode 1', 1, 4620, 'Growing up witnessing her parents con and be conned, Cha Joo-eun tries on many hats while embarking on a rugged path of her own.', 'https://drive.google.com/uc?id=1Xbu8FmmBmhzMB67zFyBGUWRf6wVz2BC7', 'https://drive.google.com/uc?id=1qNm66aCa9oTNM99f12BedVMg7QbKewUu'),
(198, 123, 'Episode 2', 2, 4800, 'Jeong Bok-gi proves to be a formidable opponent. While working a new gig, Joo-eun meets Lee Jeong-hwan, who unexpectedly sweeps her off her feet.', 'https://drive.google.com/uc?id=1Xbu8FmmBmhzMB67zFyBGUWRf6wVz2BC7', 'https://drive.google.com/uc?id=1qNm66aCa9oTNM99f12BedVMg7QbKewUu'),
(199, 124, 'Episode 1', 1, 3780, 'During a mock trial at school, a student makes a shocking discovery. Yang Jong-hoon, a former prosecutor-turned-professor, examines the crime scene.', 'https://drive.google.com/uc?id=1xvL8o-7qjS_lsWl4k6Od-pGq5bdxVMCp', 'https://drive.google.com/uc?id=1_MTahUUyM2vvkCoq_xsK6Ac9vLaHKKlJ'),
(200, 124, 'Episode 2', 2, 3780, 'As evidence piles up against Jong-hoon, he\'s interrogated by the police. On an exam, Han Joon-hwi\'s past trouble with the school is used as a prompt.', 'https://drive.google.com/uc?id=1xvL8o-7qjS_lsWl4k6Od-pGq5bdxVMCp', 'https://drive.google.com/uc?id=1_MTahUUyM2vvkCoq_xsK6Ac9vLaHKKlJ'),
(201, 125, 'Episode 1', 1, 3720, 'While working on a case involving the death of a pregnant woman, freshly minted prosecutor Eun Sol meets the infamously hostile Baek Beom.', 'https://drive.google.com/uc?id=1TCFQNIAHAFNqO7NbbAofgUNbRNDjxVU-', 'https://drive.google.com/uc?id=1omW_g3pBhmfKi9daIX0GUGtWp7dY3VdX'),
(202, 125, 'Episode 2', 2, 3720, 'Sol needs evidence to prove the woman was killed by her husband. She realizes the key that holds all the answers may be sitting in her office.', 'https://drive.google.com/uc?id=1TCFQNIAHAFNqO7NbbAofgUNbRNDjxVU-', 'https://drive.google.com/uc?id=1omW_g3pBhmfKi9daIX0GUGtWp7dY3VdX'),
(203, 126, 'Episode 1', 1, 3900, 'Seoul District Court Judge Im Bareun runs into Park Chaoreum on the subway on her first day, but it turns out that they know each other from before.', 'https://drive.google.com/uc?id=1MtNaUKbIgYiwYQgHuoMqmbVG0woQIssH', 'https://drive.google.com/uc?id=1nquS1h6HDcNS85XhEuMmP1C9hY6-zooN'),
(204, 126, 'Episode 2', 2, 4860, 'Chief Judge Han Se-sang formally helps Judge Park with her robe before her first trial, but her demeanor in the courtroom is glaringly inappropriate.', 'https://drive.google.com/uc?id=1MtNaUKbIgYiwYQgHuoMqmbVG0woQIssH', 'https://drive.google.com/uc?id=1nquS1h6HDcNS85XhEuMmP1C9hY6-zooN'),
(205, 127, 'Episode 1', 1, 4140, 'Jin-hyuk\'s wife is murdered. Kwon-joo, who spoke to the victim before her death, testifies that the suspect Dong-chul did not commit the crime.', 'https://drive.google.com/uc?id=1YyPd-eJI_B8UoFytdc8iNFkVYnJ-7AyI', 'https://drive.google.com/uc?id=1vfEY-6Y1x_Y627nHBLmeDNkGyUqurTvx'),
(206, 127, 'Episode 2', 2, 3480, 'The Golden Time Team is established and is given six months to prove its worth. Jin-hyuk gets chosen by Kwon-joo to join the team.', 'https://drive.google.com/uc?id=1YyPd-eJI_B8UoFytdc8iNFkVYnJ-7AyI', 'https://drive.google.com/uc?id=1vfEY-6Y1x_Y627nHBLmeDNkGyUqurTvx'),
(207, 128, 'Episode 1', 1, 4560, 'As a teen, prosecutor Hwang Si-mok received surgical treatment for his abnormally developed brain, but the procedure left behind serious side effects.', 'https://drive.google.com/uc?id=14uYr6zvpZpQ_nJzszINWcL5IfcSXUvy8', 'https://drive.google.com/uc?id=1kZ1WjTCcSWWD6t2a2kBfu2g_i7addRv6'),
(208, 128, 'Episode 2', 2, 4140, 'The convict\'s strong plea for his innocence prompts Si-mok to review the CCTV clip. At the Yongsan police station, he runs into officer Han Yeo-jin.', 'https://drive.google.com/uc?id=14uYr6zvpZpQ_nJzszINWcL5IfcSXUvy8', 'https://drive.google.com/uc?id=1kZ1WjTCcSWWD6t2a2kBfu2g_i7addRv6'),
(209, 129, 'A Study in Pink', 1, 5280, 'A woman in pink is the fourth in a series of seemingly unrelated suicides, but Sherlock Holmes deduces that the deaths are actually murders most foul.', 'https://drive.google.com/uc?id=14nngJC0KaTtRfuVT0qiKpytMWebzzKlt', 'https://drive.google.com/uc?id=1FM6Gu-jGofj4ql0bPCB_QzMCBf84J0W2'),
(210, 129, 'The Blind Banker', 2, 5280, 'Watson\'s new life with flatmate Sherlock Holmes is never dull, and even Sherlock\'s unusual idea of a visit to the bank keeps the doctor on his toes.', 'https://drive.google.com/uc?id=14nngJC0KaTtRfuVT0qiKpytMWebzzKlt', 'https://drive.google.com/uc?id=1FM6Gu-jGofj4ql0bPCB_QzMCBf84J0W2'),
(211, 130, 'Episode 1', 1, 2880, 'The Professor recruits a young female robber and seven other criminals for a grand heist, targeting the Royal Mint of Spain.', 'https://drive.google.com/uc?id=1wD_O8YEGV_ROppZeaaUBi-ayeohlwHzC', 'https://drive.google.com/uc?id=1zXdKtGlYhQvBbFxnNoPudmnX_gAD_gnr'),
(212, 130, 'Episode 2', 2, 2520, 'Hostage negotiator Raquel makes initial contact with the Professor. One of the hostages is a crucial part of the thieves\' plans.', 'https://drive.google.com/uc?id=1wD_O8YEGV_ROppZeaaUBi-ayeohlwHzC', 'https://drive.google.com/uc?id=1zXdKtGlYhQvBbFxnNoPudmnX_gAD_gnr'),
(213, 131, '', 1, 7440, '', '', 'https://drive.google.com/uc?id=16u6wc8b_T9CXbsRbgzuKF86OEN5fGxiN'),
(214, 132, '', 1, 8100, '', '', 'https://drive.google.com/uc?id=1IhL_22fRs2DxYoRSbtuuMRFKX1XemN0m'),
(215, 133, '', 1, 7680, '', '', 'https://drive.google.com/uc?id=1T6Wqh9mCo06FEzyr-lqpdnuEZulP0ALJ'),
(216, 134, '', 1, 9000, '', '', 'https://drive.google.com/uc?id=1PmeOYKCRFRusoi8i6x78tQBGs3EqVBrZ'),
(217, 135, '', 1, 8280, '', '', 'https://drive.google.com/uc?id=1woiGCfjjBT-ONDehKVXOjwF7fax112dI'),
(218, 136, '', 1, 6480, '', '', 'https://drive.google.com/uc?id=1efsceOOz7tRXc3FlKPw7HNJtVKvs73h4'),
(219, 137, '', 1, 8880, '', '', 'https://drive.google.com/uc?id=10ORkcZsQhU2CokoJ-tysf2Lt4poXe9Il'),
(220, 138, '', 1, 8100, '', '', 'https://drive.google.com/uc?id=1aiRzUEh9Y-PF1uzESGJknLeQimB4jyEB'),
(221, 139, '', 1, 6660, '', '', 'https://drive.google.com/uc?id=1_dZEW7py7iAECIM97tkn6QFzCM9-itfJ');
INSERT INTO `movie_episodes` (`id`, `movieId`, `name`, `count`, `duration`, `synopsis`, `thumbnail`, `video`) VALUES
(222, 140, '', 1, 8280, '', '', 'https://drive.google.com/uc?id=1C7pqBDTgKuKnsovMpBrOPSNTWXhzbrJC'),
(223, 141, 'Episode 1', 1, 4380, 'Aboard a falling plane as the clock ticks toward doom, Han Tae-sul puts his famous mind to work for a solution. Gang Seo-hae arrives in the year 2020.', 'https://drive.google.com/uc?id=12zUMKkNqB_7Or0E0f1TNbSxDZdDjXxvw', 'https://drive.google.com/uc?id=1WRp3RHiy0bWUqlhdznVeg2wGr28DDyqt'),
(224, 141, 'Episode 2', 2, 4200, 'The contents of a mysterious suitcase give Tae-sul more questions than answers. In exchange for lottery numbers, Sun agrees to help Seo-hae.', 'https://drive.google.com/uc?id=12zUMKkNqB_7Or0E0f1TNbSxDZdDjXxvw', 'https://drive.google.com/uc?id=1WRp3RHiy0bWUqlhdznVeg2wGr28DDyqt'),
(225, 142, 'Episode 1', 1, 3840, 'An anonymous tip leads the police to a hotel pool party. Do Jeong-u cracks the code to learn the location of the fourth murder.', 'https://drive.google.com/uc?id=1lC2oP6SS1Aio9htmh5DLgDFAAsoe2gO3', 'https://drive.google.com/uc?id=1Y-RRDFUQPSIztdN2J7Sof5Y85ZEnt7Kp'),
(226, 142, 'Episode 2', 2, 3900, 'Former FBI profiler Jamie Leighton joins the task force. Lee Ji-uk secretly tails a victim to capture footage and nail an exclusive.', 'https://drive.google.com/uc?id=1lC2oP6SS1Aio9htmh5DLgDFAAsoe2gO3', 'https://drive.google.com/uc?id=1Y-RRDFUQPSIztdN2J7Sof5Y85ZEnt7Kp'),
(227, 143, 'Episode 1', 1, 3720, '', 'https://drive.google.com/uc?id=1R6k5g_vUoCjYSN_TA6LLLttF3nf_TNe3', 'https://drive.google.com/uc?id=1-gOb-6LkQOwr9EkboIXGVBu1pfWl21rB'),
(228, 143, 'Episode 2', 2, 3720, '', 'https://drive.google.com/uc?id=1R6k5g_vUoCjYSN_TA6LLLttF3nf_TNe3', 'https://drive.google.com/uc?id=1-gOb-6LkQOwr9EkboIXGVBu1pfWl21rB'),
(229, 144, 'Episode 1', 1, 3720, 'While the real Nam Sin grows up with his grandfather, his mother creates Nam Sin III, who looks and acts deceptively human but is a robot.', 'https://drive.google.com/uc?id=1SPVmCE1mZK5ZU6FfYd90NaC3uppDso-1', 'https://drive.google.com/uc?id=1ZEP0YPs5iQKrUEw9gBsRaDcRnQl2o70I'),
(230, 144, 'Episode 2', 2, 3660, 'On his first day as Nam Sin, Nam Sin III upstages Seo Jong-gil at a company event and meets Kang So-bong, a former bodyguard who holds a grudge.', 'https://drive.google.com/uc?id=1SPVmCE1mZK5ZU6FfYd90NaC3uppDso-1', 'https://drive.google.com/uc?id=1ZEP0YPs5iQKrUEw9gBsRaDcRnQl2o70I'),
(231, 145, 'Episode 1', 1, 4140, '', 'https://drive.google.com/uc?id=1PiWVfLR6QbIG502NcPR39ZI_-78ld6hv', 'https://drive.google.com/uc?id=1qt4Hyd1LmtgD3xn3X7N61AanYXZbwipK'),
(232, 145, 'Episode 2', 2, 3600, '', 'https://drive.google.com/uc?id=1PiWVfLR6QbIG502NcPR39ZI_-78ld6hv', 'https://drive.google.com/uc?id=1qt4Hyd1LmtgD3xn3X7N61AanYXZbwipK'),
(233, 146, 'Episode 1', 1, 3420, 'The one-of-a-kind prototype of Holo falls into Han So-yeon\'s solitary life, eager to help with anything she needs - if she will allow him.', 'https://drive.google.com/uc?id=1h3RAv-_x1qBzY8k7CXrX6eh2kdm-DPdL', 'https://drive.google.com/uc?id=1g5iX9tTy1v3eHJWBTiGwhwfroEq7oWaZ'),
(234, 146, 'Episode 2', 2, 3000, 'Seeing she has a crush on her co-worker, Holo offers to be So-yeon\'s dating coach. Ko Nan-do monitors their growing bond from his lab.', 'https://drive.google.com/uc?id=1h3RAv-_x1qBzY8k7CXrX6eh2kdm-DPdL', 'https://drive.google.com/uc?id=1g5iX9tTy1v3eHJWBTiGwhwfroEq7oWaZ'),
(235, 147, 'Episode 1', 1, 3540, 'Ma Wang-jun and Um Da-da come to a decision about their relationship. Nam Bo-won has trouble parting with his latest brainchild.', 'https://drive.google.com/uc?id=1gXvQZ9JzxSJsdi4xAnUGUm3pDd66dFTu', 'https://drive.google.com/uc?id=1CCCSSuayZsAC9NQhwf3sHk0slNVyleBC'),
(236, 147, 'Episode 2', 2, 3540, 'After an accidental run-in, Da-da learns about Zero Nine\'s true identity. Bo-won leaves Da-da with Zero Nine, a manual and a warning.', 'https://drive.google.com/uc?id=1gXvQZ9JzxSJsdi4xAnUGUm3pDd66dFTu', 'https://drive.google.com/uc?id=1CCCSSuayZsAC9NQhwf3sHk0slNVyleBC'),
(237, 148, 'We Only See Each Other at Weddings and Funeral', 1, 3540, 'Years after they rose to fame as young crime-fighting superheroes, the estranged Hargreeves siblings come together to mark their father\'s death.', 'https://drive.google.com/uc?id=1Vvo4X9ZekKCc-h_dGt-z3VgibgZidGvL', 'https://drive.google.com/uc?id=1aopWtPP5g--LLhfYqo5Zb7UApO26GAOD'),
(238, 148, 'Run Boy Run', 2, 3480, 'After sharing the story of his time travel with Vanya, Five hunts for the owner of a fake eye. But two mysterious assassins are hot on his trail.', 'https://drive.google.com/uc?id=1Vvo4X9ZekKCc-h_dGt-z3VgibgZidGvL', 'https://drive.google.com/uc?id=1aopWtPP5g--LLhfYqo5Zb7UApO26GAOD'),
(239, 149, 'Episode 1', 1, 3960, 'A frantic young man is running scared in Barcelona. CEO Yoo Jin-woo heads to Granada on a quest after getting a strange call while on business in Spain.', 'https://drive.google.com/uc?id=1umkPACPUCUaC4lubJubQPQavul-Dkztq', 'https://drive.google.com/uc?id=1lpqMGiH9jRTslCk5pxzjLmwIaTmTN7vk'),
(240, 149, 'Episode 2', 2, 3720, 'Jin-woo learns that Jung Hee-ju may hold the key. While trying to locate Se-ju, he notices that a new user has entered the immersive virtual universe.', 'https://drive.google.com/uc?id=1umkPACPUCUaC4lubJubQPQavul-Dkztq', 'https://drive.google.com/uc?id=1lpqMGiH9jRTslCk5pxzjLmwIaTmTN7vk'),
(241, 150, 'Episode 1', 1, 4560, 'After suffering a tragedy at the hands of a violent criminal group, a blind Kang Gi-beom receives an operation for a special new pair of eyes.', 'https://drive.google.com/uc?id=1wB-1vOqcjbC9-rOKt9bH1CmcWctUd94V', 'https://drive.google.com/uc?id=1scNoNglFyz2h7FB51AvUQptIjnSn0-3d'),
(242, 150, 'Episode 2', 2, 4140, 'On a team mission at the ARGOS leader\'s wedding, Gi-beom runs into someone who haunts his memories. Hwang Deuk-gu is tired of playing underling.', 'https://drive.google.com/uc?id=1wB-1vOqcjbC9-rOKt9bH1CmcWctUd94V', 'https://drive.google.com/uc?id=1scNoNglFyz2h7FB51AvUQptIjnSn0-3d'),
(243, 151, '', 1, 8160, '', '', 'https://drive.google.com/uc?id=11iZ0iD06Gazz6reDRl-crLCf-GCifxTL'),
(244, 152, '', 1, 8460, '', '', 'https://drive.google.com/uc?id=1AlkDyV2u7-Zq4rlxGFckEtLr7yS6mg2x'),
(245, 153, '', 1, 6780, '', '', 'https://drive.google.com/uc?id=1062qMyZzJ0ME6AI6YBV4IYrQiWmPwJw2'),
(246, 154, '', 1, 6060, '', '', 'https://drive.google.com/uc?id=12MT9jUx82xXDpenlK98x9gctG8Pz5bGI'),
(247, 155, '', 1, 6540, '', '', 'https://drive.google.com/uc?id=1yAcSPQWECb8uVj0q1K3O9YFrL-8JXvbt'),
(248, 156, '', 1, 6600, '', '', 'https://drive.google.com/uc?id=1XC9bd54J6AUUkaTqAC5eg4Y_-65uEHXk'),
(249, 157, '', 1, 6900, '', '', 'https://drive.google.com/uc?id=1jVIKpGrbm54r-hcd0mWS3pGWZk9XrRGZ'),
(250, 158, '', 1, 6780, '', '', 'https://drive.google.com/uc?id=157XjWywgv3QahxQzHYw6Zz3wEtcXBX92'),
(251, 159, '', 1, 5700, '', '', 'https://drive.google.com/uc?id=1-YsqNFUN6xYpYuERRybHZLIV109ej_yZ'),
(252, 160, '', 1, 6900, '', '', 'https://drive.google.com/uc?id=1RUEcb8rgc1iIf4z-DEy_Xaq6Nv82hxr1');

-- --------------------------------------------------------

--
-- Table structure for table `movie_genres`
--

CREATE TABLE `movie_genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_genres`
--

INSERT INTO `movie_genres` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Drama'),
(4, 'Fantasy'),
(5, 'Thriller'),
(6, 'Romance'),
(7, 'Crime'),
(8, 'Sci-Fi');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `accountId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pin` int(11) DEFAULT NULL,
  `picture` int(11) NOT NULL,
  `isChildAccount` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `accountId`, `name`, `pin`, `picture`, `isChildAccount`) VALUES
(1, 1, 'Geboy', 1234, 1, 0),
(2, 1, 'Gebi', NULL, 2, 0),
(3, 1, 'Geebiii', NULL, 3, 1),
(4, 1, 'Gaby', NULL, 4, 0),
(6, 1, 'qwe', NULL, 5, 0),
(7, 2, 'Jo', 1234, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

CREATE TABLE `watch_histories` (
  `id` int(11) NOT NULL,
  `profileId` int(11) NOT NULL,
  `movieEpisodeId` int(11) NOT NULL,
  `isDone` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watch_histories`
--

INSERT INTO `watch_histories` (`id`, `profileId`, `movieEpisodeId`, `isDone`) VALUES
(1, 1, 199, 0),
(2, 1, 53, 0),
(3, 3, 191, 0),
(4, 3, 67, 0),
(5, 3, 100, 0),
(6, 3, 53, 0),
(7, 3, 248, 0),
(8, 7, 28, 0);

-- --------------------------------------------------------

--
-- Table structure for table `watch_lists`
--

CREATE TABLE `watch_lists` (
  `id` int(11) NOT NULL,
  `profileId` int(11) NOT NULL,
  `movieId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watch_lists`
--

INSERT INTO `watch_lists` (`id`, `profileId`, `movieId`) VALUES
(1, 4, 89),
(2, 3, 62),
(3, 2, 106),
(4, 4, 155),
(5, 4, 127),
(6, 4, 16),
(7, 3, 79),
(8, 1, 145),
(9, 3, 139),
(10, 2, 120),
(11, 2, 149),
(12, 3, 48),
(13, 4, 118),
(14, 1, 100),
(15, 2, 41),
(16, 3, 73),
(17, 2, 15),
(18, 1, 23),
(19, 3, 28),
(20, 2, 7),
(22, 4, 31),
(23, 2, 94),
(24, 1, 9),
(25, 1, 117),
(26, 4, 83),
(27, 1, 94),
(28, 3, 120),
(29, 4, 2),
(30, 1, 122),
(31, 3, 9),
(32, 3, 61),
(33, 2, 37),
(34, 1, 49),
(35, 2, 63),
(36, 1, 143),
(37, 1, 128),
(38, 2, 77),
(39, 1, 116),
(40, 1, 24),
(41, 4, 47),
(42, 4, 101),
(43, 2, 21),
(44, 4, 81),
(45, 1, 96),
(46, 2, 144),
(47, 4, 11),
(48, 3, 24),
(49, 4, 6),
(50, 2, 11),
(51, 1, 52),
(52, 3, 87),
(53, 4, 19),
(54, 3, 100),
(55, 1, 1),
(56, 1, 146),
(57, 4, 71),
(58, 2, 59),
(59, 2, 114),
(60, 3, 58),
(61, 3, 6),
(62, 1, 65),
(63, 4, 146),
(64, 3, 105),
(65, 3, 51),
(66, 4, 74),
(68, 1, 148),
(69, 2, 128),
(70, 4, 129),
(71, 3, 2),
(72, 3, 143),
(73, 3, 85),
(74, 3, 21),
(75, 4, 30),
(76, 1, 142),
(77, 2, 52),
(78, 3, 160),
(79, 3, 130),
(80, 2, 152),
(81, 4, 18),
(82, 3, 128),
(83, 2, 100),
(84, 2, 38),
(85, 1, 160),
(86, 4, 42),
(87, 2, 57),
(88, 3, 49),
(89, 2, 90),
(90, 4, 53),
(91, 2, 53),
(92, 4, 108),
(93, 1, 12),
(94, 1, 20),
(95, 1, 63),
(96, 2, 30),
(97, 3, 67),
(98, 2, 147),
(99, 1, 136),
(100, 1, 151),
(101, 4, 13),
(102, 4, 75),
(103, 1, 93),
(104, 3, 116),
(105, 2, 86),
(106, 2, 119),
(107, 1, 37),
(108, 4, 51),
(109, 1, 152),
(110, 4, 97),
(111, 2, 32),
(112, 1, 50),
(113, 1, 81),
(114, 2, 118),
(115, 4, 139),
(116, 1, 121),
(117, 3, 14),
(118, 1, 25),
(119, 1, 134),
(120, 2, 66),
(121, 3, 119),
(122, 3, 8),
(123, 4, 104),
(124, 2, 2),
(125, 3, 138),
(126, 4, 12),
(127, 4, 76),
(128, 1, 104),
(129, 2, 123),
(130, 1, 18),
(131, 1, 80),
(132, 4, 59),
(133, 4, 85),
(134, 2, 133),
(135, 3, 72),
(136, 1, 89),
(137, 2, 3),
(138, 2, 43),
(139, 4, 58),
(140, 4, 94),
(141, 1, 29),
(142, 2, 141),
(143, 2, 139),
(144, 1, 39),
(145, 2, 40),
(146, 4, 27),
(147, 2, 157),
(148, 1, 75),
(149, 3, 99),
(150, 1, 27),
(151, 4, 136),
(152, 4, 123),
(153, 1, 102),
(154, 3, 31),
(155, 4, 61),
(156, 4, 9),
(157, 2, 25),
(158, 3, 159),
(159, 2, 56),
(160, 3, 133),
(161, 3, 141),
(162, 1, 112),
(163, 1, 35),
(164, 4, 154),
(165, 1, 55),
(166, 2, 98),
(167, 4, 80),
(168, 4, 141),
(169, 2, 81),
(170, 4, 1),
(171, 3, 122),
(172, 2, 28),
(173, 1, 70),
(175, 3, 91),
(176, 3, 10),
(177, 2, 26),
(178, 2, 148),
(179, 4, 34),
(180, 3, 63),
(181, 3, 81),
(182, 3, 145),
(183, 1, 107),
(184, 3, 22),
(185, 3, 89),
(186, 2, 35),
(187, 2, 151),
(188, 4, 95),
(189, 3, 83),
(190, 4, 36),
(191, 3, 29),
(192, 1, 21),
(193, 2, 126),
(194, 2, 153),
(195, 1, 60),
(196, 1, 4),
(197, 3, 93),
(198, 3, 71),
(199, 4, 82),
(200, 1, 119),
(201, 3, 123),
(202, 2, 70),
(203, 4, 110),
(204, 2, 17),
(205, 1, 7),
(206, 2, 58),
(207, 3, 110),
(208, 3, 86),
(209, 1, 36),
(210, 2, 1),
(211, 1, 147),
(212, 2, 136),
(213, 1, 2),
(214, 3, 148),
(215, 4, 7),
(216, 2, 127),
(217, 2, 156),
(218, 1, 19),
(219, 2, 4),
(220, 3, 44),
(221, 4, 50),
(222, 1, 139),
(223, 2, 89),
(224, 3, 125),
(225, 2, 138),
(226, 2, 96),
(227, 4, 149),
(228, 2, 31),
(229, 2, 124),
(230, 4, 84),
(231, 2, 83),
(232, 4, 126),
(233, 3, 17),
(234, 4, 98),
(235, 2, 87),
(236, 3, 90),
(237, 1, 45),
(238, 1, 57),
(239, 2, 79),
(240, 3, 23),
(241, 1, 33),
(242, 4, 49),
(243, 1, 73),
(244, 1, 22),
(245, 1, 85),
(246, 1, 58),
(247, 4, 22),
(248, 3, 92),
(249, 3, 154),
(250, 4, 57),
(251, 1, 15),
(252, 3, 56),
(253, 4, 4),
(254, 1, 87),
(255, 4, 107),
(256, 3, 129),
(257, 2, 10),
(258, 1, 133),
(259, 3, 140),
(260, 1, 159),
(261, 4, 120),
(262, 2, 62),
(263, 3, 70),
(264, 1, 141),
(265, 1, 46),
(266, 1, 28),
(267, 3, 27),
(268, 1, 98),
(269, 4, 69),
(270, 1, 69),
(271, 2, 84),
(272, 1, 115),
(273, 1, 16),
(274, 4, 8),
(275, 4, 44),
(276, 1, 155),
(277, 4, 130),
(278, 4, 68),
(279, 4, 64),
(280, 3, 152),
(281, 1, 120),
(282, 2, 61),
(283, 2, 159),
(284, 4, 133),
(285, 1, 74),
(286, 4, 39),
(287, 2, 117),
(288, 1, 144),
(289, 2, 51),
(290, 3, 118),
(291, 2, 33),
(292, 4, 157),
(293, 1, 125),
(294, 4, 138),
(295, 2, 5),
(296, 1, 150),
(297, 1, 158),
(298, 2, 92),
(299, 1, 68),
(300, 4, 153),
(301, 2, 97),
(302, 2, 23),
(303, 1, 106),
(304, 2, 91),
(305, 2, 82),
(306, 2, 65),
(307, 4, 72),
(308, 1, 153),
(309, 1, 53),
(310, 4, 65),
(311, 4, 37),
(312, 3, 142),
(313, 1, 5),
(314, 1, 114),
(315, 3, 94),
(316, 3, 158),
(317, 2, 104),
(318, 2, 48),
(319, 2, 14),
(320, 2, 29),
(321, 4, 156),
(322, 2, 39),
(323, 2, 132),
(324, 2, 160),
(325, 1, 48),
(326, 4, 117),
(327, 4, 33),
(328, 3, 137),
(329, 4, 15),
(330, 3, 103),
(331, 3, 144),
(332, 4, 102),
(333, 4, 10),
(334, 4, 25),
(335, 2, 68),
(336, 3, 15),
(337, 4, 63),
(338, 4, 121),
(339, 2, 44),
(340, 3, 45),
(341, 3, 43),
(342, 4, 14),
(343, 3, 39),
(344, 4, 45),
(345, 3, 82),
(346, 3, 40),
(347, 3, 107),
(348, 1, 105),
(349, 1, 111),
(350, 4, 100),
(351, 3, 153),
(352, 3, 38),
(353, 4, 132),
(354, 2, 130),
(355, 2, 85),
(356, 2, 150),
(357, 2, 6),
(358, 1, 59),
(359, 2, 8),
(360, 4, 52),
(361, 2, 42),
(362, 1, 8),
(363, 1, 10),
(364, 2, 129),
(365, 2, 103),
(366, 3, 114),
(367, 2, 73),
(368, 4, 88),
(369, 2, 13),
(370, 2, 105),
(371, 2, 47),
(373, 1, 109),
(374, 4, 29),
(375, 2, 116),
(376, 3, 84),
(377, 4, 128),
(378, 3, 95),
(379, 2, 158),
(380, 3, 32),
(381, 3, 146),
(382, 2, 125),
(383, 2, 18),
(384, 2, 95),
(385, 2, 142),
(386, 1, 77),
(387, 3, 88),
(428, 1, 44),
(429, 1, 31),
(430, 1, 124);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_genreFK` (`movieGenreId`);

--
-- Indexes for table `movie_episodes`
--
ALTER TABLE `movie_episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_episodeFK` (`movieId`);

--
-- Indexes for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_userFK` (`accountId`);

--
-- Indexes for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_profileFK` (`profileId`),
  ADD KEY `history_movieFK` (`movieEpisodeId`);

--
-- Indexes for table `watch_lists`
--
ALTER TABLE `watch_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Watch_MovieFK` (`movieId`),
  ADD KEY `Watch_ProfileFK` (`profileId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `movie_episodes`
--
ALTER TABLE `movie_episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `movie_genres`
--
ALTER TABLE `movie_genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `watch_histories`
--
ALTER TABLE `watch_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `watch_lists`
--
ALTER TABLE `watch_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movie_genreFK` FOREIGN KEY (`movieGenreId`) REFERENCES `movie_genres` (`id`);

--
-- Constraints for table `movie_episodes`
--
ALTER TABLE `movie_episodes`
  ADD CONSTRAINT `movie_episodeFK` FOREIGN KEY (`movieId`) REFERENCES `movies` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `account_userFK` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD CONSTRAINT `history_movieFK` FOREIGN KEY (`movieEpisodeId`) REFERENCES `movie_episodes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_profileFK` FOREIGN KEY (`profileId`) REFERENCES `profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `watch_lists`
--
ALTER TABLE `watch_lists`
  ADD CONSTRAINT `Watch_MovieFK` FOREIGN KEY (`movieId`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Watch_ProfileFK` FOREIGN KEY (`profileId`) REFERENCES `profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
