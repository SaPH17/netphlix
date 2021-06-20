-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2021 at 08:29 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netphlix`
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
(1, 'stephanusaditya17@gmail.com', 'QU5vczBuU2ROVkNFOUZYaGZodGpQUT09');

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
(21, 2, 'Hello, Me!', 'https://drive.google.com/uc?id=1eUpGjeKcqJOmLT6IkI0tt-8tVYkY-wjj', 'https://drive.google.com/uc?id=1Cf5nXdTiM0b70a8QkNIzj9X78RSQdeMw', 'Miserable and unsuccessful, a woman thinks she\'s lost all her spark — until one day, her spunky younger self appears in front of her demanding change.', '2021-02-17', 1, 0),
(22, 2, 'Welcome to Waikiki 2', 'https://drive.google.com/uc?id=1itk_w3-xgd_f3s6y1JRf5i9JEo2WHpPY', 'https://drive.google.com/uc?id=1H3USOv-_EKjvP5jHtbbOiwqUVU9THqm1', 'Actor Lee Jun-ki ropes two longtime friends into investing in the Seoul guesthouse he runs on the side, where their old crush from school comes to stay.', '2019-03-25', 1, 0),
(23, 2, 'Emily in Paris', 'https://drive.google.com/uc?id=1djRISWm4SDN7RMQ4mqepGdkqhr1swp10', 'https://drive.google.com/uc?id=11unsS6851CEhDhpxZxkoPq9K47nS-7Rz', 'After landing her dream job in Paris, Chicago marketing exec Emily Cooper embraces her adventurous new life while juggling work, friends and romance.', '2020-10-02', 1, 0),
(24, 2, 'Do Do Sol Sol La La Sol', 'https://drive.google.com/uc?id=1Kbaee2REXHYoYetpIlHiHmj2u_Qs5zDE', 'https://drive.google.com/uc?id=1zL5_M0SI4CW_KhMCFgvfHTHZhPlsCzhV', 'A riches-to-rags pianist who loses everything but her smile is guided by twinkling little stars to a small town where she finds hope, home and love.', '2020-10-07', 1, 0),
(25, 2, 'Strong Girl Bong Soon', 'https://drive.google.com/uc?id=1vfrCI5sBuQTaHWLrZgyaPy8Dijk0GOh3', 'https://drive.google.com/uc?id=1ZTF5Tzm2FnTEaLL6uW11_o9pvLCZGEh0', 'Born with supernatural strength, Bong-soon fights evil and procures justice while getting tangled in a love triangle with her CEO boss and cop crush.', '2017-02-24', 1, 0),
(26, 2, 'Weightlifting Fairy Kim Bok-Joo', 'https://drive.google.com/uc?id=1AWu9AMClQ0lFieTlYY81lvC9OlBADUth', 'https://drive.google.com/uc?id=1hJjXaTB6CW4UcuWdayvE1YdQQvYPRTEh', 'A competitive swimmer crosses paths with his childhood friend, a rising weight lifting star, and realizes that she has a secret crush on his cousin.\r\n', '2016-11-16', 1, 0),
(27, 2, 'Oh My Baby', 'https://drive.google.com/uc?id=1BETGGA9-ZMhf5AAzJXeDh_9uiBIC6-Ki', 'https://drive.google.com/uc?id=1yOm7OeK38A79sQ_fXugV_tsoUYk2Mcsu', 'On the brink of 40 and single, a magazine editor aims to bypass marriage and skip ahead to the baby and happiness part of her story.', '2020-05-13', 1, 0),
(28, 2, 'The Sound of Your Heart', 'https://drive.google.com/uc?id=10qgg3G3V7DPNR77Tux0yFC8_0BSQA1t2', 'https://drive.google.com/uc?id=1bA5-bFzZ9IDHKhQ87rnDmlDO-oglxOqq', 'Based on Korea\'s longest-running webtoon series, this comedy follows the ridiculous daily lives of a cartoonist, his girlfriend and his subpar family.', '2016-07-11', 1, 0),
(29, 2, 'Welcome to Waikiki', 'https://drive.google.com/uc?id=1WxVMmzH6yq7dg6mzVUfhCqz9P7cIxBx7', 'https://drive.google.com/uc?id=1OqPrkCLQSbk_jRdKom3jSVUJ8fijO3Y-', 'To finance their own film project, an aspiring director, actor and screenwriter run a Seoul guesthouse that brings antics and romance into their lives.\r\n', '2018-02-05', 1, 0),
(30, 2, 'Prison Playbook', 'https://drive.google.com/uc?id=1IEBUBmrtY-qF3tueUfG01ge1GjKZ_61B', 'https://drive.google.com/uc?id=1BkMkJ3I4rge9n2xyaKDhtOmpFOniK8Xf', 'With his major league baseball debut right around the corner, a star pitcher lands in prison and must learn to navigate his new world.', '2017-11-22', 1, 0),
(31, 2, 'Crazy Rich Asians', 'https://drive.google.com/uc?id=1SRB2QxJeum4oSBRipkdm8_ZTBirw0ZM3', 'https://drive.google.com/uc?id=1JWY7crzymcQaILr8aI1hGDl2ZlydHkka', 'When she joins her boyfriend on a trip to his native Singapore, Rachel Chu discovers his family\'s luxurious wealth and faces his disapproving mother.', '2018-08-07', 0, 0),
(32, 2, 'Bad Boys for Life', 'https://drive.google.com/uc?id=1Plp8820lLvIyh9c_EC76GhoZr5zuTydc', 'https://drive.google.com/uc?id=1zAS_uC0QVtSNlp0U38w4XqGcwthAyxUp', 'Even bad boys grow up, and Miami cop Marcus is ready for his well-deserved retirement — until partner Mike is targeted by a cutthroat drug cartel.', '2020-01-17', 0, 1),
(33, 2, 'The Guys', 'https://drive.google.com/uc?id=1AN2zBvBHNShm9DReK7Si32m57cIwmMEF', 'https://drive.google.com/uc?id=1elOoDSmSF2-2QEmHYMagQQlnxzs9HgmR', 'Hapless office worker Alfi needs help from his pals when he unexpectedly falls for the daughter of his boss — a stern man with eyes for Alfi\'s mom.', '2017-04-13', 0, 0),
(34, 2, 'Single', 'https://drive.google.com/uc?id=1aQ39keNaajmY-VaXxVGcwmujSIVOyy80', 'https://drive.google.com/uc?id=1iuRSzVWZR79uWI2g1POYb8kZ1GSddsBw', 'Hapless office worker Alfi needs help from his pals when he unexpectedly falls for the daughter of his boss — a stern man with eyes for Alfi\'s mom.', '2015-12-12', 0, 0),
(35, 2, 'Whipped', 'https://drive.google.com/uc?id=1WqKaEHwmF0hvonz7ngzCH0y37RVAACzb', 'https://drive.google.com/uc?id=1g02xsYHK84QxBsoFskWeLY0_gXhtEEbq', 'Four buddies attend a class taught by a love guru who leads them to question their romantic attachments — until her hidden agenda comes to light.', '2020-03-26', 0, 0),
(36, 2, 'Check the Store Next Door', 'https://drive.google.com/uc?id=1A2cXwDxR25kUHFP2p5xeKagGLqH5Rhk6', 'https://drive.google.com/uc?id=1lc5hWQnI05FUi0kAT8uxWY9h8oCsoenD', 'A family’s harmony is disrupted when the patriarch falls ills and the youngest son inherits ownership of their humble mom-and-pop shop.', '2016-12-20', 0, 0),
(37, 2, 'Despicable Me', 'https://drive.google.com/uc?id=1HuJBQBCDel7QUrDxysTzsF3tkyi7IU0Y', 'https://drive.google.com/uc?id=1Sje6BS1pDjMMI6eDxJvmiA0DdYqQWhyY', 'Villainous Gru hatches a plan to steal the moon from the sky. But he has a tough time staying on task after three orphans land in his care.', '2010-07-09', 0, 0),
(38, 2, 'My Stupid Boss', 'https://drive.google.com/uc?id=1B211KXgcLuI-UZs4u8RENE7epD7Q-M2t', 'https://drive.google.com/uc?id=1rsa1qfF552BiPBawapSSTslTBPYM_i27', 'After moving to Kuala Lumpur, Diana lands a secretary job at an ironworks owned by her husband\'s old college friend, possibly the world\'s worst boss.', '2016-05-19', 0, 0),
(39, 2, 'Madagascar 2', 'https://drive.google.com/uc?id=1z9XYJfHJ75B8U7EYnhKFP00XCr_Csbzc', 'https://drive.google.com/uc?id=1uXGhRXzg_bDHcnffLD7N7Vo5BqmXoiim', 'A botched rescue strands Alex the lion and his companions in Africa. Sadly, Alex discovers he has little in common with the locals.', '2008-12-24', 0, 0),
(40, 2, 'Hotel Transylvania 2', 'https://drive.google.com/uc?id=1HBFIwgUI44KsVR5-ajiemZaeCeDa3sxr', 'https://drive.google.com/uc?id=180gonE5BbDWhVNlA_eLSqNWJBx1XPvVK', 'After Mavis weds Jonathan and baby Dennis arrives, Dracula looks for proof that his grandson is a vampire and needs to remain in Transylvania.', '2015-09-23', 0, 0),
(41, 3, 'The Queen\'s Gambit', 'https://drive.google.com/uc?id=1XwMQfWzdOnAHTnO6CUZIxjTRyPGHKWnB', 'https://drive.google.com/uc?id=1amztthyvd6XZ4T1WCwiU-opeIZe_swcu', 'In a 1950s orphanage, a young girl reveals an astonishing talent for chess and begins an unlikely journey to stardom while grappling with addiction.', '2020-10-23', 1, 1),
(42, 3, 'Grey\'s Anatomy', 'https://drive.google.com/uc?id=1ETGqSM_HF8zFM4KOT9lZt9_1Lyluouny', 'https://drive.google.com/uc?id=1kIM-7oGPHVBTyUTkx3RsfnQc5K9PZwK9', 'Intern (and eventual resident) Meredith Grey finds herself caught up in personal and professional passions with fellow doctors at a Seattle hospital.', '2005-03-27', 1, 1),
(43, 3, 'Navillera', 'https://drive.google.com/uc?id=1lc9p3K_6Ydy8FlIT0jpx6B0aIDHEi_RG', 'https://drive.google.com/uc?id=1Wvz6wq5M9GnGsvumuKWOayqasqaUhINl', 'A 70-year-old with a dream and a 23-year-old with a gift lift each other out of harsh realities and rise to the challenge of becoming ballerinos.', '2021-03-22', 1, 0),
(44, 3, 'Move to Heaven', 'https://drive.google.com/uc?id=13zN7UvXxpirgd7sKgMPg4GHBBI3MyMom', 'https://drive.google.com/uc?id=1X9uNViCrVVIoYbqhs4B7nvouhba-V-d6', 'Finding life in all that’s left behind, a detail-oriented trauma cleaner and his estranged uncle deliver untold stories of the departed to loved ones.', '2021-05-14', 1, 1),
(45, 3, 'Itaewon Class', 'https://drive.google.com/uc?id=1JSiTcr_Mj2uzwralUrXxj6KPv-IjroIP', 'https://drive.google.com/uc?id=1U46Xq1pLoWmPB4zU3tLiga1Put3bSeHj', 'In a colorful Seoul neighborhood, an ex-con and his friends fight a mighty foe to make their ambitious dreams for their street bar a reality.', '2020-01-31', 1, 0),
(46, 3, 'Start Up', 'https://drive.google.com/uc?id=1bTF5xhAHoH2_t_NzDWJ5RxXK4rVUdugr', 'https://drive.google.com/uc?id=1N_PXH5qbQeU0YBYX_7UGU8Nz59XOnHI6', 'Young entrepreneurs aspiring to launch virtual dreams into reality compete for success and love in the cutthroat world of Korea\'s high-tech industry.', '2020-10-17', 1, 0),
(47, 3, 'Reply 1988', 'https://drive.google.com/uc?id=1fctsPwut2vrrf3yNpRaK7cAFZ4vTMChw', 'https://drive.google.com/uc?id=1M5P0-IQ3ciPSQWfG5oTFizuNg9tL4Lb2', 'Take a nostalgic trip back to the late 1980s through the lives of five families and their five teenage kids living in a small neighborhood in Seoul.', '2015-11-06', 1, 0),
(48, 3, 'Sky Castle', 'https://drive.google.com/uc?id=1cHqH_QVDNndfyApnBXvnBTYOD3U2tzRn', 'https://drive.google.com/uc?id=1vgf_1Kh8Y4QjNminZ6z6uoWJ49astFIT', 'For the families living at Sky Castle, an exclusive residential community that\'s home to Korea\'s elite, their children’s success means everything.', '2018-11-23', 1, 0),
(49, 3, 'Hospital Playlist', 'https://drive.google.com/uc?id=1fsv-N9Us8UD80olwXzl2ucEmDUEnUnBm', 'https://drive.google.com/uc?id=1PNNdHGl9-_u0x0ms1uesJDFLsjZoBs2T', 'Every day is extraordinary for five doctors and their patients inside a hospital, where birth, death and everything in between coexist.\r\n', '2020-03-12', 1, 0),
(50, 3, 'Dr Romantic', 'https://drive.google.com/uc?id=1dUOI4TQgLsmAYL_NOX4qS0yPNykCR9-V', 'https://drive.google.com/uc?id=1QK89GNMg1ed2Lom_iy35p592wSD2E7NB', 'An eccentric, triple board-certified virtuoso surgeon leaves a top job in Seoul and ends up at a provincial hospital, where he mentors young doctors.', '2016-11-07', 1, 1),
(51, 3, 'High Society', 'https://drive.google.com/uc?id=1xbjG_eq9Qc_yT9pA584NY0enRVRgyi9Y', 'https://drive.google.com/uc?id=1d_OXIJGhVFp21ef-A3a85iKvCqPiZe6c', 'A deputy curator of a chaebol-funded art gallery and her husband, a politically ambitious economics professor, will do anything to join the über-elite.', '2018-08-29', 0, 1),
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
(65, 4, 'Abyss', 'https://drive.google.com/uc?id=1NDVMnK_OkNbwsx9cPc-BMEsksQyYqgfT', 'https://drive.google.com/uc?id=1S5XP2iYpBcDW3-IVyis1W-Vsmgflaj2J', 'After meeting an untimely demise in separate incidents, Cha Min and Go Se-yeon discover they’ve come back to life in new bodies they don’t recognize.', '2019-05-06', 1, 0),
(66, 4, 'W Two Worlds Apart', 'https://drive.google.com/uc?id=1sfauKN82amdM2Yzry4WIHhGMs4BvHo0I', 'https://drive.google.com/uc?id=1VUX225uKa4fiBqwDfoW5XTJl2TBH2EPR', 'After being pulled into the webtoon world created by her father, a surgical resident gets entangled in a murder mystery involving the story\'s hero.', '2016-11-14', 1, 0),
(67, 4, 'Hotel De Luna', 'https://drive.google.com/uc?id=1Cs3_amzfJ21PcykvH1D-e0M4sBq6jWvS', 'https://drive.google.com/uc?id=18ZaJlClUT2MJzSLvbkFrbAnImvgk4B88', 'When he\'s invited to manage a hotel for dead souls, an elite hotelier gets to know the establishment\'s ancient owner and her strange world.', '2019-07-13', 1, 0),
(68, 4, 'Arthdal Chronicles', 'https://drive.google.com/uc?id=1jGRxDu9m-xixQWSBGxano9S6hhfSHoG9', 'https://drive.google.com/uc?id=1DYpm0cKTSjR6a-qTZl6ypGM-GCyQVioF', 'In a mythical land called Arth, the inhabitants of the ancient city of Arthdal and its surrounding regions vie for power as they build a new society.', '2019-06-01', 1, 1),
(69, 4, 'The King Eternal Monarch', 'https://drive.google.com/uc?id=1fUD98nFSjj1dLdVWUnKpLSbegPnAsec0', 'https://drive.google.com/uc?id=1vPVLq_qBdv96rnJdgBF9HO1mu-Q5pG5l', 'A modern-day Korean emperor passes through a mysterious portal and into a parallel world, where he encounters a feisty police detective.', '2020-04-17', 1, 0),
(70, 4, 'Legend of the Blue Sea', 'https://drive.google.com/uc?id=1ATkSSa_h4Ro309DPDzqaZqi2tiM_dAN2', 'https://drive.google.com/uc?id=1m9xNibyQfu4jeJsPVohL_O3P66iut73m', 'A mermaid from the Joseon period ends up in present-day Seoul, where she crosses paths with a swindler who may have ties to someone from her past.', '2016-11-16', 1, 0),
(71, 4, 'Mowgli', 'https://drive.google.com/uc?id=1IpLLIIWWOOekp5KhKxdd5SlqmsXkzoEB', 'https://drive.google.com/uc?id=1_6AxOjFY7dQkW3Hcqdry97bk2zYrGIR5', 'An orphaned boy raised by animals in the jungle seizes his destiny while confronting a dangerous enemy -- and his own human origins.', '2018-11-25', 0, 0),
(72, 4, 'Jumanji The Next Level', 'https://drive.google.com/uc?id=1JdvI0laDzx2vONBvcrFsZ_KzMFilB0Vk', 'https://drive.google.com/uc?id=1aQYxcC_lnBrIEeEAIjpIToldZGK0Rwwt', 'When Spencer goes missing, Martha, Bethany and Fridge realize they must go back into Jumanji to find him — but something goes wrong.', '2019-12-04', 0, 0),
(73, 4, 'Jumanji Welcome to the Jungle', 'https://drive.google.com/uc?id=1wvbaZUzRU9RcGTkcg4Swf1a0FoEV1B54', 'https://drive.google.com/uc?id=1rcKBdn5GVQfRomyWZrgiV-3g7etZ6h3L', 'Four high school students get sucked into the jungle setting of a video game, where they embark on a quest as their comically mismatched adult avatars.', '2017-12-20', 0, 0),
(74, 4, 'Fantastic Beast', 'https://drive.google.com/uc?id=1aMaxtcjmLeCy0rupWAbw0BI9356HH6DV', 'https://drive.google.com/uc?id=1CFQzPx8L8VG2_HhxKfI3S0FQHD9s0Bzh', 'As the dark wizard Grindelwald gains ground, Dumbledore enlists Newt Scamander to locate a teenager whose mysterious affliction might turn the tide.', '2018-11-14', 0, 0),
(75, 4, 'The Mummy', 'https://drive.google.com/uc?id=16T0MnycXSyCst9LwHA2zNWaBeNmjzQv8', 'https://drive.google.com/uc?id=1NbbEJRII9pa2LKmfDwYcU-0aN0B9sHkx', 'The third installment of the Mummy franchise takes Rick and his family to China to face a 2,000-year-old emperor who\'s returned from the dead.', '2008-06-24', 0, 0),
(76, 4, 'Goosebumps', 'https://drive.google.com/uc?id=1LgL6dngQWynFKXSZlQx_VB5448mqKs4a', 'https://drive.google.com/uc?id=1Hb56H_UBq8o7Q39_qE6_oSB39mhQmjob', 'A teen is glum about moving to a small town until he falls for his new neighbor. But her dad is a horror writer whose scary world soon turns real.', '2015-10-14', 0, 0),
(77, 4, 'Hellboy II', 'https://drive.google.com/uc?id=1v68FkjGIN8LRXuMudu2bbBa6kaNShwhF', 'https://drive.google.com/uc?id=1fLWy2RfIliBhQ-Q_DhckkhMS1-AxA9j1', 'The identities of Hellboy, Liz Sherman and Abe Sapien are exposed as they face a new threat: The Golden Army is preparing to attack.', '2008-07-11', 0, 0),
(78, 4, 'Turbo', 'https://drive.google.com/uc?id=170WcEEBTNMGVHF9IMmFAE4q_Be90pvQx', 'https://drive.google.com/uc?id=18VbB07rx-QPY9G_HFMT8q8vc_KPWl5kw', 'A speed-obsessed snail who dreams of being the world\'s greatest race car driver gets his chance when an accident imbues him with high-octane speed.', '2013-07-19', 0, 0),
(79, 4, 'Monsters vs Aliens', 'https://drive.google.com/uc?id=1mBbVNsmI6XWlucN1l_vNutBUCGGrOjf6', 'https://drive.google.com/uc?id=1mHhV7wjKNUvSYVaAfMPJcQaopLEzIVKZ', 'After Susan Murphy is struck by a meteor and grows to be 50 feet tall, she\'s captured by the government and shuttled to a secret compound.', '2009-04-08', 0, 0),
(80, 4, 'Megamind', 'https://drive.google.com/uc?id=1q_rEe4jdbG2VVw7JSzTEt1djs_hdzNhU', 'https://drive.google.com/uc?id=1ZCtl0pxga1yC4ftdGWaktWg4ZOonoBhF', 'When cunning supervillain Megamind accidently kills his crime-fighting nemesis, he creates a new enemy who seeks to destroy the world.', '2010-11-05', 0, 0),
(81, 5, 'Sweet Home', 'https://drive.google.com/uc?id=11D0SnSd4xYVC3KGwvxK7KKArIZsbbN-I', 'https://drive.google.com/uc?id=1wj4UUdry-RMLO6a3ACxrfWBpI5GBmI7H', 'As humans turn into savage monsters and wreak terror, one troubled teen and his apartment neighbors fight to survive — and to hold on to their humanity.\r\n', '2020-12-18', 1, 1),
(82, 5, 'Extracurricular', 'https://drive.google.com/uc?id=1Q8sJ00vEkclaKat85en81aZLGMjAccKt', 'https://drive.google.com/uc?id=1HT_DpsEaaA499VTT5mqtw7MI0GpmTWVu', 'A model high school student who\'s steeped in a world of serious crime finds his double life upended when a classmate takes an interest in his secret.', '2020-04-29', 1, 0),
(83, 5, 'Flower of Evil', 'https://drive.google.com/uc?id=1XMiFJYNcLOY431bCVx1H8o9kIbSIVbah', 'https://drive.google.com/uc?id=1rUNLwI7QJe3qi5QFNXljG461QDRDMUQz', 'Hiding a twisted past, a man maintains his facade as the perfect husband to his detective wife — until she begins investigating a series of murders.', '2020-09-23', 1, 0),
(84, 4, 'Girl from Nowhere', 'https://drive.google.com/uc?id=1DhNd1gqLvQ6yqSBk0HZ-v8Cce4er_G65', 'https://drive.google.com/uc?id=1kHZauI_UfPD8LMOfglXUvEwSmJm9j5XL', 'A mysterious, clever girl named Nanno transfers to different schools, exposing the lies and misdeeds of the students and faculty at every turn.', '2021-05-07', 1, 1),
(85, 5, 'Kingdom', 'https://drive.google.com/uc?id=15CmNGRC2SNL-XNts3Dh4un_Ito4K0kLo', 'https://drive.google.com/uc?id=1FLmyX15DFxO0cPjzzV5NhupNu8lS3t-o', 'While strange rumors about their ill king grip a kingdom, the crown prince becomes their only hope against a mysterious plague overtaking the land.', '2019-01-25', 1, 1),
(86, 5, 'Doctor Prisoner', 'https://drive.google.com/uc?id=1DIBB8RBbQ8YUAuJ0CTyOnXwlh5yahUA1', 'https://drive.google.com/uc?id=1wvkJ14OQfboBp9hakOmnfpZ15TMPYROb', 'After his career is sabotaged by the wealthy, a doctor gets a job at a prison seeking vengeance on those who are too powerful to be governed by the law.', '2019-03-20', 1, 1),
(87, 5, 'Save Me', 'https://drive.google.com/uc?id=1kF3AhsGKVSlSwr5tqnybrClgZSN81Wth', 'https://drive.google.com/uc?id=1wBu60EA5RdIhpkLq777Hz7KWtzToKzQh', 'Four young men come to the rescue of a former classmate whose family has been sucked into the clutches of a religious cult and its charismatic leader.', '2017-09-05', 1, 0),
(88, 5, 'Alice in Borderland', 'https://drive.google.com/uc?id=1trEk5rwiDCharK426-I25U5_XRi4v0H_', 'https://drive.google.com/uc?id=10f6G3JXnXyedmQrNu01npEdv9cjntJE6', 'An aimless gamer and his two friends find themselves in a parallel Tokyo, where they\'re forced to compete in a series of sadistic games to survive.', '2020-12-10', 1, 1),
(89, 5, 'Tunnel', 'https://drive.google.com/uc?id=1YlAUmOpSyNyukvFl7Ivu7WIOl2BMMNpU', 'https://drive.google.com/uc?id=1-3VYvrIujVs73KU2m5i2MoPABRKc0wc_', 'While chasing a serial murderer, a detective ends up 30 years in the future, where he tries to solve the case alongside new partners.', '2017-03-25', 1, 1),
(90, 5, 'Strangers from Hell', 'https://drive.google.com/uc?id=1uvFPjHUOhgZnsBVfXa4XYz0BIKvjzU6A', 'https://drive.google.com/uc?id=1kAvW4vX07zPt1CDQPD8N3a5ZT_3pE4Vr', 'Unpleasant events disturb the life of an aspiring crime fiction writer when he becomes a resident of an apartment building teeming with shady neighbors.', '2019-10-06', 1, 1),
(91, 5, 'Night in Paradise', 'https://drive.google.com/uc?id=1-mOCSgvLNe3xFk-jj7qiOH84DHaDT4gd', 'https://drive.google.com/uc?id=1pm-SIlZu8oZToV6XgHYrWy7fGMMviEN5', 'Hiding out in Jeju Island following a brutal tragedy, a wronged mobster with a target on his back connects with a woman who has her own demons.', '2020-11-03', 0, 1),
(92, 5, 'The Call', 'https://drive.google.com/uc?id=1Zz6qBWrXb2qarwt0-dr20TQZ_4LGfgqY', 'https://drive.google.com/uc?id=1MAm569634O759MYVFQWkXpQZc5wVTwfP', 'Shrill of the phone. Scream of the slashed. A killer from the past takes her stab at fate — and all who stand in her way.', '2020-11-27', 0, 0),
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
(120, 6, 'The Half of It', 'https://drive.google.com/uc?id=1gQPIAFgL20-cVAEIUV9dkW-O6X6TIBmz', 'https://drive.google.com/uc?id=1L-cF54JBeMScf3mwKN-kbYzUNY5LxrdB', 'When smart but cash-strapped teen Ellie Chu agrees to write a love letter for a jock, she doesn\'t expect to become his friend — or fall for his crush.', '2020-05-01', 0, 0),
(121, 7, 'Vincenzo', 'https://drive.google.com/uc?id=1RW1OAIc0Zrm3JvnSyDf0a5qjSUHAIrCr', 'https://drive.google.com/uc?id=1GvI2UhViDxXH0YpB8DFH9cjXSZjx-Ggo', 'During a visit to his motherland, a Korean-Italian mafia lawyer gives an unrivaled conglomerate a taste of its own medicine with a side of justice.', '2021-02-20', 1, 0),
(122, 7, 'Signal', 'https://drive.google.com/uc?id=1q6_t8bpVvc11-JSYNwlkCnqCPGzTbFyh', 'https://drive.google.com/uc?id=1LobAHun2e4SJRX7fNflIak8PEW5nGDdT', 'Communicating via a walkie-talkie that transcends time, a profiler from 2015 and a detective from 1989 join forces to tackle crimes and injustice.', '2016-01-22', 1, 0),
(123, 7, 'Private Lives', 'https://drive.google.com/uc?id=1Xbu8FmmBmhzMB67zFyBGUWRf6wVz2BC7', 'https://drive.google.com/uc?id=1qNm66aCa9oTNM99f12BedVMg7QbKewUu', 'In a world where data is no longer private, con artists uncover a sinister surveillance scheme headed by the government and a greedy corporation.', '2020-10-07', 1, 0),
(124, 7, 'Law School', 'https://drive.google.com/uc?id=1xvL8o-7qjS_lsWl4k6Od-pGq5bdxVMCp', 'https://drive.google.com/uc?id=1_MTahUUyM2vvkCoq_xsK6Ac9vLaHKKlJ', 'When a grim incident occurs at their prestigious school, justice through law is put to a test by a tough law professor and his ambitious students.', '2021-04-14', 1, 0),
(125, 7, 'Partner for Justice', 'https://drive.google.com/uc?id=1TCFQNIAHAFNqO7NbbAofgUNbRNDjxVU-', 'https://drive.google.com/uc?id=1omW_g3pBhmfKi9daIX0GUGtWp7dY3VdX', 'To pin down criminals and solve cases, a grouchy but brilliant forensic doctor opens up his world to a bright-eyed rookie prosecutor.\r\n', '2018-05-14', 1, 1),
(126, 7, 'Ms. Hammurabi', 'https://drive.google.com/uc?id=1MtNaUKbIgYiwYQgHuoMqmbVG0woQIssH', 'https://drive.google.com/uc?id=1nquS1h6HDcNS85XhEuMmP1C9hY6-zooN', 'An ardent, empathetic rookie judge partners with an upright, principled justice, as they negotiate the legal system and the people they serve.', '2018-05-21', 1, 0),
(127, 7, 'Voice 2', 'https://drive.google.com/uc?id=1YyPd-eJI_B8UoFytdc8iNFkVYnJ-7AyI', 'https://drive.google.com/uc?id=1vfEY-6Y1x_Y627nHBLmeDNkGyUqurTvx', 'A deft detective whose wife is killed by a serial murderer teams up with a rookie cop, a gifted voice profiler dealing with her own father’s murder.', '2018-08-11', 1, 0),
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
(138, 7, 'Time to Hunt', 'https://drive.google.com/uc?id=1OoS7RGRKw_O_DK4m1bX501DxahGgulLP', 'https://drive.google.com/uc?id=1aiRzUEh9Y-PF1uzESGJknLeQimB4jyEB', 'Wanting to leave their dystopian world behind for a faraway paradise, three outlaws plot a money heist — and draw the attention of a vicious killer.', '2020-02-22', 0, 1),
(139, 7, 'Spenser Confidential', 'https://drive.google.com/uc?id=1jbkTzoeVtvpoqCVthPE6TbQPN4CsDw_0', 'https://drive.google.com/uc?id=1_dZEW7py7iAECIM97tkn6QFzCM9-itfJ', 'Spenser, an ex-cop and ex-con, teams up with aspiring fighter Hawk to uncover a sinister conspiracy tied to the deaths of two Boston police officers.', '2020-03-06', 0, 1),
(140, 7, 'The Drug King', 'https://drive.google.com/uc?id=18i8bSh4DNCC7ot7LMoSjxU7XxHgkKjG7', 'https://drive.google.com/uc?id=1C7pqBDTgKuKnsovMpBrOPSNTWXhzbrJC', 'A petty smuggler from Busan dives headfirst into illicit drug trafficking in the 1970s and rises to become king of narcotics exports to Japan.', '2018-12-19', 0, 1),
(141, 8, 'Sisyphus', 'https://drive.google.com/uc?id=12zUMKkNqB_7Or0E0f1TNbSxDZdDjXxvw', 'https://drive.google.com/uc?id=1WRp3RHiy0bWUqlhdznVeg2wGr28DDyqt', 'An unfathomable incident introduces a genius engineer to dangerous secrets of the world — and to a woman from the future who\'s come looking for him.', '2021-02-17', 1, 0),
(142, 8, 'Awaken', 'https://drive.google.com/uc?id=1lC2oP6SS1Aio9htmh5DLgDFAAsoe2gO3', 'https://drive.google.com/uc?id=1Y-RRDFUQPSIztdN2J7Sof5Y85ZEnt7Kp', 'Police officers investigate dark secrets that link a series of present-day murders with puzzling incidents that took place in a town 28 years ago.', '2020-11-30', 1, 0),
(143, 8, 'I\'m Not a Robot', 'https://drive.google.com/uc?id=1R6k5g_vUoCjYSN_TA6LLLttF3nf_TNe3', 'https://drive.google.com/uc?id=1-gOb-6LkQOwr9EkboIXGVBu1pfWl21rB', 'The prime shareholder of a financial firm is allergic to human contact, but his reclusive life is disrupted by a robot -- an entrepreneur in disguise.', '2017-12-06', 1, 0),
(144, 8, 'Are You Human?', 'https://drive.google.com/uc?id=1SPVmCE1mZK5ZU6FfYd90NaC3uppDso-1', 'https://drive.google.com/uc?id=1ZEP0YPs5iQKrUEw9gBsRaDcRnQl2o70I', 'When a prominent brain scientist and artificial intelligence expert is forced to part with her son, she creates an android robot in his exact likeness.', '2018-06-04', 1, 0),
(145, 8, 'Alice', 'https://drive.google.com/uc?id=1PiWVfLR6QbIG502NcPR39ZI_-78ld6hv', 'https://drive.google.com/uc?id=1qt4Hyd1LmtgD3xn3X7N61AanYXZbwipK', 'While investigating a string of murders, a detective is stunned to encounter time travelers — especially a professor who\'s a dead ringer for his mother.', '2020-08-28', 1, 0),
(146, 8, 'My Holo love', 'https://drive.google.com/uc?id=1h3RAv-_x1qBzY8k7CXrX6eh2kdm-DPdL', 'https://drive.google.com/uc?id=1g5iX9tTy1v3eHJWBTiGwhwfroEq7oWaZ', 'Unexpected love finds a lonely woman when she forms a connection with a humanlike hologram who looks exactly like his prickly creator.\r\n', '2020-02-07', 1, 0),
(147, 8, 'My Absolute Boyfriend', 'https://drive.google.com/uc?id=1gXvQZ9JzxSJsdi4xAnUGUm3pDd66dFTu', 'https://drive.google.com/uc?id=1CCCSSuayZsAC9NQhwf3sHk0slNVyleBC', 'Awakened by the kiss of a love cynic, a humanoid robot created to be the perfect boyfriend does everything in his power to win and protect her heart.', '2019-05-15', 1, 0),
(148, 8, 'The Umbrella Academy', 'https://drive.google.com/uc?id=1Vvo4X9ZekKCc-h_dGt-z3VgibgZidGvL', 'https://drive.google.com/uc?id=1aopWtPP5g--LLhfYqo5Zb7UApO26GAOD', 'Reunited by their father\'s death, estranged siblings with extraordinary powers uncover shocking family secrets -- and a looming threat to humanity.', '2019-02-15', 1, 0),
(149, 8, 'Memories of the Alhambra', 'https://drive.google.com/uc?id=1umkPACPUCUaC4lubJubQPQavul-Dkztq', 'https://drive.google.com/uc?id=1lpqMGiH9jRTslCk5pxzjLmwIaTmTN7vk', 'While looking for the cryptic creator of an innovative augmented-reality game, an investment firm executive meets a woman who runs a hostel in Spain.', '2018-12-01', 1, 0),
(150, 8, 'Rugal', 'https://drive.google.com/uc?id=1wB-1vOqcjbC9-rOKt9bH1CmcWctUd94V', 'https://drive.google.com/uc?id=1scNoNglFyz2h7FB51AvUQptIjnSn0-3d', 'A police detective who loses everything to a criminal organization seeks payback when he gains special abilities through biotechnology.', '2020-03-28', 1, 0),
(151, 8, 'Space Sweepers', 'https://drive.google.com/uc?id=1murR9IM0lmvavdKkP69A0nIeRZtW6tQn', 'https://drive.google.com/uc?id=11iZ0iD06Gazz6reDRl-crLCf-GCifxTL', 'Chasing after space debris and faraway dreams in year 2092, four misfits unearth explosive secrets during the attempted trade of a wide-eyed humanoid.', '2021-02-05', 0, 0);
INSERT INTO `movies` (`id`, `movieGenreId`, `title`, `image`, `trailer`, `synopsis`, `releaseDate`, `isSeries`, `isMature`) VALUES
(152, 8, 'The Martian', 'https://drive.google.com/uc?id=1WWhHrKKZgP7FCktPHDz9W_gXDwX3_fue', 'https://drive.google.com/uc?id=1AlkDyV2u7-Zq4rlxGFckEtLr7yS6mg2x', 'Abandoned on the surface of Mars, an astronaut presumed dead after a dust storm struggles to survive on the hostile planet and send a message home.', '2015-11-30', 0, 0),
(153, 8, 'How It Ends', 'https://drive.google.com/uc?id=1dh13rlAP3PWaz0QAaYaEIGRzLlBoRtDp', 'https://drive.google.com/uc?id=1062qMyZzJ0ME6AI6YBV4IYrQiWmPwJw2', 'Worried about his pregnant fiancée amid a sudden cataclysm, a young lawyer embarks on a dangerous road trip west with his future father-in-law.', '2018-07-13', 0, 0),
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
  `image` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 1, 'Geboy', NULL, 1, 0),
(2, 1, 'Gebi', NULL, 2, 0),
(3, 1, 'Geebiii', NULL, 3, 0),
(4, 1, 'Gaby', NULL, 4, 0);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `movie_episodes`
--
ALTER TABLE `movie_episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_genres`
--
ALTER TABLE `movie_genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  ADD CONSTRAINT `account_userFK` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
