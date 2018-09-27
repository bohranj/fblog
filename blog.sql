-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2018 at 03:45 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'user', 'wewefwe', '$2y$13$8D9xKrXr.cJacVFLhAscZeuRv9vurEU6fLO.tIXDisrxD8aR/nBNe', 'scwewecwewe', 'admin@example.com', 10, 0, 0),
(2, 'admin', 'KVJsT0ZqyfC5hoAWHQJ0e6VVVmmdY3-o', '$2y$13$8D9xKrXr.cJacVFLhAscZeuRv9vurEU6fLO.tIXDisrxD8aR/nBNe', NULL, 'jamil@example.com', 10, 1537335205, 1537335205),
(3, 'jamil', 'ROGLJq6ZAsQbXfZdQCvLG820Q1ROF44V', '$2y$13$8D9xKrXr.cJacVFLhAscZeuRv9vurEU6fLO.tIXDisrxD8aR/nBNe', NULL, 'jamil2@example.com', 10, 1537508809, 1537508809);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `imageurl` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `published_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL,
  `home` int(2) DEFAULT '0',
  `views` int(11) NOT NULL,
  `category_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `imageurl`, `alias`, `published_date`, `status`, `home`, `views`, `category_id`) VALUES
(1, 'The Four Seasons', '<p><img alt=\"cool\" src=\"http://localhost/fblog/www/admin/assets/9db8eb4d/plugins/smiley/images/shades_smile.png\" style=\"height:23px; width:23px\" title=\"cool\" />The Four Seasons, Italian Le quattro stagioni, group of four violin concerti by Italian composer Antonio Vivaldi, each of which gives a musical expression to a season of the year. They were written about 1720 and were published in 1725 (Amsterdam), together with eight additional violin concerti, as Il cimento dell&rsquo;armonia e dell&rsquo;inventione (&ldquo;The Contest Between Harmony and Invention&rdquo;). The Four Seasons is the best known of Vivaldi&rsquo;s works. Unusually for the time, Vivaldi published the concerti with accompanying poems (possibly written by Vivaldi himself) that elucidated what it was about those seasons that his music was intended to evoke. It provides one of the earliest and most-detailed examples of what was later called program music&mdash;music with a narrative element. Vivaldi took great pains to relate his music to the texts of the poems, translating the poetic lines themselves directly into the music on the page. In the middle section of the Spring concerto, where th<img alt=\"\" src=\"/fblog/www/admin/../public/files/P6DFBt1HCgmdQ8CF.jpg\" style=\"border-style:solid; border-width:1px; height:250px; margin:5px; width:571px\" />e goatherd sleeps, his barking dog can be marked in the viola section. Other natural occurrences are similarly evoked. Vivaldi separated each concerto into three movements, fast-slow-fast, and likewise each linked sonnet into three sections. His arrangement is as follows: Spring (Concerto No. 1 in E Major) Allegro Spring has arrived with joy Welcomed by the birds with happy songs, And the brooks, amidst gentle breezes, Murmur sweetly as they flow. The sky is caped in black, and Thunder and lightning herald a storm When they fall silent, the birds Take up again their delightful songs. Largo e pianissimo sempre And in the pleasant, blossom-filled meadow, To the gentle murmur of leaves and plants, The goatherd sleeps, his faithful dog beside him. Allegro To the merry sounds of a rustic bagpipe, Nymphs and shepherds dance in their beloved spot When Spring appears in splendour. Summer (Concerto No. 2 in G Minor) Allegro non molto Under the merciless sun of the season Languishes man and flock, the pine tree burns. The cuckoo begins to sing and at once Join in the turtledove and the goldfinch. A gentle breeze blows, but Boreas Is roused to combat suddenly with his neighbour, And the shepherd weeps because overhead Hangs the fearsome storm, and his destiny. Adagio His tired limbs are robbed of rest By his fear of the lightning and the frightful thunder And by the flies and hornets in furious swarms. Presto Alas, his fears come true: There is thunder and lightning in the heavens And the hail cuts down the tall ears of grain. Autumn (Concerto No. 3 in F Major) Allegro The peasant celebrates with dancing and singing The pleasure of the rich harvest, And full of the liquor of Bacchus They end their merrymaking with a sleep. Adagio molto All are made to leave off dancing and singing By the air which, now mild, gives pleasure And by the season, which invites many To find their pleasure in a sweet sleep. Allegro The hunters set out at dawn, off to the hunt, With horns and guns and dogs they venture out. The beast flees and they are close on its trail. Already terrified and wearied by the great noise Of the guns and dogs, and wounded as well It tries feebly to escape, but is bested and dies. Winter (Concerto No. 4 in F Minor) Allegro non molto Frozen and shivering in the icy snow, In the severe blasts of a terrible wind To run stamping one&rsquo;s feet each moment, One&rsquo;s teeth chattering through the cold. Largo To spend quiet and happy times by the fire While outside the rain soaks everyone. Allegro To walk on the ice with tentative steps, Going carefully for fear of falling. To go in haste, slide, and fall down to the ground, To go again on the ice and run, In case the ice cracks and opens. To hear leaving their iron-gated house Sirocco, Boreas, and all the winds in battle&mdash; This is winter, but it brings joy. (Author uncertain; English translation by Betsy Schwarm)</p>\r\n\r\n<p>ok oko ok ok ok</p>\r\n', '/fblog/www/admin/../public/files/V3Mgm8B6CMwk2gqb.jpg', 'four-season', '2018-08-29 09:32:37', 1, 1, 0, 2),
(3, 'The Four Seasons', '<p>The Four Seasons, Italian Le quattro stagioni, group of four violin concerti by Italian composer Antonio Vivaldi, each of which gives a musical expression to a season of the year. They were written about 1720 and were published in 1725 (Amsterdam), together with eight additional violin concerti, as Il cimento dell&rsquo;armonia e dell&rsquo;inventione (&ldquo;The Contest Between Harmony and Invention&rdquo;). The Four Seasons is the best known of Vivaldi&rsquo;s works. Unusually for the time, Vivaldi published the concerti with accompanying poems (possibly written by Vivaldi himself) that elucidated what it was about those seasons that his music was intended to evoke. It provides one of the earliest and most-detailed examples of what was later called program music&mdash;music with a narrative element. Vivaldi took great pains to relate his music to the texts of the poems, translating the poetic lines themselves directly into the music on the page. In the middle section of the Spring concerto, where the goatherd sleeps, his barking dog can be marked in the viola section. Other natural occurrences are similarly evoked. Vivaldi separated each concerto into three movements, fast-slow-fast, and likewise each linked sonnet into three sections. His arrangement is as follows: Spring (Concerto No. 1 in E Major) Allegro Spring has arrived with joy Welcomed by the birds with happy songs, And the brooks, amidst gentle breezes, Murmur sweetly as they flow. The sky is caped in black, and Thunder and lightning herald a storm When they fall silent, the birds Take up again their delightful songs. Largo e pianissimo sempre And in the pleasant, blossom-filled meadow, To the gentle murmur of leaves and plants, The goatherd sleeps, his faithful dog beside him. Allegro To the merry sounds of a rustic bagpipe, Nymphs and shepherds dance in their beloved spot When Spring appears in splendour. Summer (Concerto No. 2 in G Minor) Allegro non molto Under the merciless sun of the season Languishes man and flock, the pine tree burns. The cuckoo begins to sing and at once Join in the turtledove and the goldfinch. A gentle breeze blows, but Boreas Is roused to combat suddenly with his neighbour, And the shepherd weeps because overhead Hangs the fearsome storm, and his destiny. Adagio His tired limbs are robbed of rest By his fear of the lightning and the frightful thunder And by the flies and hornets in furious swarms. Presto Alas, his fears come true: There is thunder and lightning in the heavens And the hail cuts down the tall ears of grain. Autumn (Concerto No. 3 in F Major) Allegro The peasant celebrates with dancing and singing The pleasure of the rich harvest, And full of the liquor of Bacchus They end their merrymaking with a sleep. Adagio molto All are made to leave off dancing and singing By the air which, now mild, gives pleasure And by the season, which invites many To find their pleasure in a sweet sleep. Allegro The hunters set out at dawn, off to the hunt, With horns and guns and dogs they venture out. The beast flees and they are close on its trail. Already terrified and wearied by the great noise Of the guns and dogs, and wounded as well It tries feebly to escape, but is bested and dies. Winter (Concerto No. 4 in F Minor) Allegro non molto Frozen and shivering in the icy snow, In the severe blasts of a terrible wind To run stamping one&rsquo;s feet each moment, One&rsquo;s teeth chattering through the cold. Largo To spend quiet and happy times by the fire While outside the rain soaks everyone. Allegro To walk on the ice with tentative steps, Going carefully for fear of falling. To go in haste, slide, and fall down to the ground, To go again on the ice and run, In case the ice cracks and opens. To hear leaving their iron-gated house Sirocco, Boreas, and all the winds in battle&mdash; This is winter, but it brings joy. (Author uncertain; English translation by Betsy Schwarm)</p>\r\n', '/fblog/www/admin/../public/files/1as51zMyJuormI-y.jpg', 'four-season2', '2018-08-29 09:32:37', 1, 1, 0, 2),
(4, 'The Four Seasons', '<p><img alt=\"cool\" src=\"http://localhost/fblog/www/admin/assets/9db8eb4d/plugins/smiley/images/shades_smile.png\" style=\"height:23px; width:23px\" title=\"cool\" />The Four Seasons, Italian Le quattro stagioni, group of four violin concerti by Italian composer Antonio Vivaldi, each of which gives a musical expression to a season of the year. They were written about 1720 and were published in 1725 (Amsterdam), together with eight additional violin concerti, as Il cimento dell&rsquo;armonia e dell&rsquo;inventione (&ldquo;The Contest Between Harmony and Invention&rdquo;). The Four Seasons is the best known of Vivaldi&rsquo;s works. Unusually for the time, Vivaldi published the concerti with accompanying poems (possibly written by Vivaldi himself) that elucidated what it was about those seasons that his music was intended to evoke. It provides one of the earliest and most-detailed examples of what was later called program music&mdash;music with a narrative element. Vivaldi took great pains to relate his music to the texts of the poems, translating the poetic lines themselves directly into the music on the page. In the middle section of the Spring concerto, where th<img alt=\"\" src=\"/fblog/www/admin/../public/files/P6DFBt1HCgmdQ8CF.jpg\" style=\"border-style:solid; border-width:1px; height:250px; margin:5px; width:571px\" />e goatherd sleeps, his barking dog can be marked in the viola section. Other natural occurrences are similarly evoked. Vivaldi separated each concerto into three movements, fast-slow-fast, and likewise each linked sonnet into three sections. His arrangement is as follows: Spring (Concerto No. 1 in E Major) Allegro Spring has arrived with joy Welcomed by the birds with happy songs, And the brooks, amidst gentle breezes, Murmur sweetly as they flow. The sky is caped in black, and Thunder and lightning herald a storm When they fall silent, the birds Take up again their delightful songs. Largo e pianissimo sempre And in the pleasant, blossom-filled meadow, To the gentle murmur of leaves and plants, The goatherd sleeps, his faithful dog beside him. Allegro To the merry sounds of a rustic bagpipe, Nymphs and shepherds dance in their beloved spot When Spring appears in splendour. Summer (Concerto No. 2 in G Minor) Allegro non molto Under the merciless sun of the season Languishes man and flock, the pine tree burns. The cuckoo begins to sing and at once Join in the turtledove and the goldfinch. A gentle breeze blows, but Boreas Is roused to combat suddenly with his neighbour, And the shepherd weeps because overhead Hangs the fearsome storm, and his destiny. Adagio His tired limbs are robbed of rest By his fear of the lightning and the frightful thunder And by the flies and hornets in furious swarms. Presto Alas, his fears come true: There is thunder and lightning in the heavens And the hail cuts down the tall ears of grain. Autumn (Concerto No. 3 in F Major) Allegro The peasant celebrates with dancing and singing The pleasure of the rich harvest, And full of the liquor of Bacchus They end their merrymaking with a sleep. Adagio molto All are made to leave off dancing and singing By the air which, now mild, gives pleasure And by the season, which invites many To find their pleasure in a sweet sleep. Allegro The hunters set out at dawn, off to the hunt, With horns and guns and dogs they venture out. The beast flees and they are close on its trail. Already terrified and wearied by the great noise Of the guns and dogs, and wounded as well It tries feebly to escape, but is bested and dies. Winter (Concerto No. 4 in F Minor) Allegro non molto Frozen and shivering in the icy snow, In the severe blasts of a terrible wind To run stamping one&rsquo;s feet each moment, One&rsquo;s teeth chattering through the cold. Largo To spend quiet and happy times by the fire While outside the rain soaks everyone. Allegro To walk on the ice with tentative steps, Going carefully for fear of falling. To go in haste, slide, and fall down to the ground, To go again on the ice and run, In case the ice cracks and opens. To hear leaving their iron-gated house Sirocco, Boreas, and all the winds in battle&mdash; This is winter, but it brings joy. (Author uncertain; English translation by Betsy Schwarm)</p>\r\n\r\n<p>ok oko ok ok ok</p>\r\n', '', 'four-season3', '2018-08-29 09:32:37', 1, 1, 0, 1),
(5, 'The Four Seasons', '<p>The Four Seasons, Italian Le quattro stagioni, group of four violin concerti by Italian composer Antonio Vivaldi, each of which gives a musical expression to a season of the year. They were written about 1720 and were published in 1725 (Amsterdam), together with eight additional violin concerti, as Il cimento dell&rsquo;armonia e dell&rsquo;inventione (&ldquo;The Contest Between Harmony and Invention&rdquo;). The Four Seasons is the best known of Vivaldi&rsquo;s works. Unusually for the time, Vivaldi published the concerti with accompanying poems (possibly written by Vivaldi himself) that elucidated what it was about those seasons that his music was intended to evoke. It provides one of the earliest and most-detailed examples of what was later called program music&mdash;music with a narrative element. Vivaldi took great pains to relate his music to the texts of the poems, translating the poetic lines themselves directly into the music on the page. In the middle section of the Spring concerto, where the goatherd sleeps, his barking dog can be marked in the viola section. Other natural occurrences are similarly evoked. Vivaldi separated each concerto into three movements, fast-slow-fast, and likewise each linked sonnet into three sections. His arrangement is as follows: Spring (Concerto No. 1 in E Major) Allegro Spring has arrived with joy Welcomed by the birds with happy songs, And the brooks, amidst gentle breezes, Murmur sweetly as they flow. The sky is caped in black, and Thunder and lightning herald a storm When they fall silent, the birds Take up again their delightful songs. Largo e pianissimo sempre And in the pleasant, blossom-filled meadow, To the gentle murmur of leaves and plants, The goatherd sleeps, his faithful dog beside him. Allegro To the merry sounds of a rustic bagpipe, Nymphs and shepherds dance in their beloved spot When Spring appears in splendour. Summer (Concerto No. 2 in G Minor) Allegro non molto Under the merciless sun of the season Languishes man and flock, the pine tree burns. The cuckoo begins to sing and at once Join in the turtledove and the goldfinch. A gentle breeze blows, but Boreas Is roused to combat suddenly with his neighbour, And the shepherd weeps because overhead Hangs the fearsome storm, and his destiny. Adagio His tired limbs are robbed of rest By his fear of the lightning and the frightful thunder And by the flies and hornets in furious swarms. Presto Alas, his fears come true: There is thunder and lightning in the heavens And the hail cuts down the tall ears of grain. Autumn (Concerto No. 3 in F Major) Allegro The peasant celebrates with dancing and singing The pleasure of the rich harvest, And full of the liquor of Bacchus They end their merrymaking with a sleep. Adagio molto All are made to leave off dancing and singing By the air which, now mild, gives pleasure And by the season, which invites many To find their pleasure in a sweet sleep. Allegro The hunters set out at dawn, off to the hunt, With horns and guns and dogs they venture out. The beast flees and they are close on its trail. Already terrified and wearied by the great noise Of the guns and dogs, and wounded as well It tries feebly to escape, but is bested and dies. Winter (Concerto No. 4 in F Minor) Allegro non molto Frozen and shivering in the icy snow, In the severe blasts of a terrible wind To run stamping one&rsquo;s feet each moment, One&rsquo;s teeth chattering through the cold. Largo To spend quiet and happy times by the fire While outside the rain soaks everyone. Allegro To walk on the ice with tentative steps, Going carefully for fear of falling. To go in haste, slide, and fall down to the ground, To go again on the ice and run, In case the ice cracks and opens. To hear leaving their iron-gated house Sirocco, Boreas, and all the winds in battle&mdash; This is winter, but it brings joy. (Author uncertain; English translation by Betsy Schwarm)</p>\r\n', '', 'four-season4', '2018-08-29 09:32:37', 1, 1, 0, 1),
(6, 'The Four Seasons', '<p><img alt=\"cool\" src=\"http://localhost/fblog/www/admin/assets/9db8eb4d/plugins/smiley/images/shades_smile.png\" style=\"height:23px; width:23px\" title=\"cool\" />The Four Seasons, Italian Le quattro stagioni, group of four violin concerti by Italian composer Antonio Vivaldi, each of which gives a musical expression to a season of the year. They were written about 1720 and were published in 1725 (Amsterdam), together with eight additional violin concerti, as Il cimento dell&rsquo;armonia e dell&rsquo;inventione (&ldquo;The Contest Between Harmony and Invention&rdquo;). The Four Seasons is the best known of Vivaldi&rsquo;s works. Unusually for the time, Vivaldi published the concerti with accompanying poems (possibly written by Vivaldi himself) that elucidated what it was about those seasons that his music was intended to evoke. It provides one of the earliest and most-detailed examples of what was later called program music&mdash;music with a narrative element. Vivaldi took great pains to relate his music to the texts of the poems, translating the poetic lines themselves directly into the music on the page. In the middle section of the Spring concerto, where th<img alt=\"\" src=\"/fblog/www/admin/../public/files/P6DFBt1HCgmdQ8CF.jpg\" style=\"border-style:solid; border-width:1px; height:250px; margin:5px; width:571px\" />e goatherd sleeps, his barking dog can be marked in the viola section. Other natural occurrences are similarly evoked. Vivaldi separated each concerto into three movements, fast-slow-fast, and likewise each linked sonnet into three sections. His arrangement is as follows: Spring (Concerto No. 1 in E Major) Allegro Spring has arrived with joy Welcomed by the birds with happy songs, And the brooks, amidst gentle breezes, Murmur sweetly as they flow. The sky is caped in black, and Thunder and lightning herald a storm When they fall silent, the birds Take up again their delightful songs. Largo e pianissimo sempre And in the pleasant, blossom-filled meadow, To the gentle murmur of leaves and plants, The goatherd sleeps, his faithful dog beside him. Allegro To the merry sounds of a rustic bagpipe, Nymphs and shepherds dance in their beloved spot When Spring appears in splendour. Summer (Concerto No. 2 in G Minor) Allegro non molto Under the merciless sun of the season Languishes man and flock, the pine tree burns. The cuckoo begins to sing and at once Join in the turtledove and the goldfinch. A gentle breeze blows, but Boreas Is roused to combat suddenly with his neighbour, And the shepherd weeps because overhead Hangs the fearsome storm, and his destiny. Adagio His tired limbs are robbed of rest By his fear of the lightning and the frightful thunder And by the flies and hornets in furious swarms. Presto Alas, his fears come true: There is thunder and lightning in the heavens And the hail cuts down the tall ears of grain. Autumn (Concerto No. 3 in F Major) Allegro The peasant celebrates with dancing and singing The pleasure of the rich harvest, And full of the liquor of Bacchus They end their merrymaking with a sleep. Adagio molto All are made to leave off dancing and singing By the air which, now mild, gives pleasure And by the season, which invites many To find their pleasure in a sweet sleep. Allegro The hunters set out at dawn, off to the hunt, With horns and guns and dogs they venture out. The beast flees and they are close on its trail. Already terrified and wearied by the great noise Of the guns and dogs, and wounded as well It tries feebly to escape, but is bested and dies. Winter (Concerto No. 4 in F Minor) Allegro non molto Frozen and shivering in the icy snow, In the severe blasts of a terrible wind To run stamping one&rsquo;s feet each moment, One&rsquo;s teeth chattering through the cold. Largo To spend quiet and happy times by the fire While outside the rain soaks everyone. Allegro To walk on the ice with tentative steps, Going carefully for fear of falling. To go in haste, slide, and fall down to the ground, To go again on the ice and run, In case the ice cracks and opens. To hear leaving their iron-gated house Sirocco, Boreas, and all the winds in battle&mdash; This is winter, but it brings joy. (Author uncertain; English translation by Betsy Schwarm)</p>\r\n\r\n<p>ok oko ok ok ok</p>\r\n', '', 'four-season5', '2018-08-29 09:32:37', 1, 1, 0, 1),
(7, 'The Four Seasons', '<p>The Four Seasons, Italian Le quattro stagioni, group of four violin concerti by Italian composer Antonio Vivaldi, each of which gives a musical expression to a season of the year. They were written about 1720 and were published in 1725 (Amsterdam), together with eight additional violin concerti, as Il cimento dell&rsquo;armonia e dell&rsquo;inventione (&ldquo;The Contest Between Harmony and Invention&rdquo;). The Four Seasons is the best known of Vivaldi&rsquo;s works. Unusually for the time, Vivaldi published the concerti with accompanying poems (possibly written by Vivaldi himself) that elucidated what it was about those seasons that his music was intended to evoke. It provides one of the earliest and most-detailed examples of what was later called program music&mdash;music with a narrative element. Vivaldi took great pains to relate his music to the texts of the poems, translating the poetic lines themselves directly into the music on the page. In the middle section of the Spring concerto, where the goatherd sleeps, his barking dog can be marked in the viola section. Other natural occurrences are similarly evoked. Vivaldi separated each concerto into three movements, fast-slow-fast, and likewise each linked sonnet into three sections. His arrangement is as follows: Spring (Concerto No. 1 in E Major) Allegro Spring has arrived with joy Welcomed by the birds with happy songs, And the brooks, amidst gentle breezes, Murmur sweetly as they flow. The sky is caped in black, and Thunder and lightning herald a storm When they fall silent, the birds Take up again their delightful songs. Largo e pianissimo sempre And in the pleasant, blossom-filled meadow, To the gentle murmur of leaves and plants, The goatherd sleeps, his faithful dog beside him. Allegro To the merry sounds of a rustic bagpipe, Nymphs and shepherds dance in their beloved spot When Spring appears in splendour. Summer (Concerto No. 2 in G Minor) Allegro non molto Under the merciless sun of the season Languishes man and flock, the pine tree burns. The cuckoo begins to sing and at once Join in the turtledove and the goldfinch. A gentle breeze blows, but Boreas Is roused to combat suddenly with his neighbour, And the shepherd weeps because overhead Hangs the fearsome storm, and his destiny. Adagio His tired limbs are robbed of rest By his fear of the lightning and the frightful thunder And by the flies and hornets in furious swarms. Presto Alas, his fears come true: There is thunder and lightning in the heavens And the hail cuts down the tall ears of grain. Autumn (Concerto No. 3 in F Major) Allegro The peasant celebrates with dancing and singing The pleasure of the rich harvest, And full of the liquor of Bacchus They end their merrymaking with a sleep. Adagio molto All are made to leave off dancing and singing By the air which, now mild, gives pleasure And by the season, which invites many To find their pleasure in a sweet sleep. Allegro The hunters set out at dawn, off to the hunt, With horns and guns and dogs they venture out. The beast flees and they are close on its trail. Already terrified and wearied by the great noise Of the guns and dogs, and wounded as well It tries feebly to escape, but is bested and dies. Winter (Concerto No. 4 in F Minor) Allegro non molto Frozen and shivering in the icy snow, In the severe blasts of a terrible wind To run stamping one&rsquo;s feet each moment, One&rsquo;s teeth chattering through the cold. Largo To spend quiet and happy times by the fire While outside the rain soaks everyone. Allegro To walk on the ice with tentative steps, Going carefully for fear of falling. To go in haste, slide, and fall down to the ground, To go again on the ice and run, In case the ice cracks and opens. To hear leaving their iron-gated house Sirocco, Boreas, and all the winds in battle&mdash; This is winter, but it brings joy. (Author uncertain; English translation by Betsy Schwarm)</p>\r\n', '', 'four-season6', '2018-08-29 09:32:37', 1, 0, 0, 1),
(8, 'The Four Seasons', '<p><img alt=\"cool\" src=\"http://localhost/fblog/www/admin/assets/9db8eb4d/plugins/smiley/images/shades_smile.png\" style=\"height:23px; width:23px\" title=\"cool\" />The Four Seasons, Italian Le quattro stagioni, group of four violin concerti by Italian composer Antonio Vivaldi, each of which gives a musical expression to a season of the year. They were written about 1720 and were published in 1725 (Amsterdam), together with eight additional violin concerti, as Il cimento dell&rsquo;armonia e dell&rsquo;inventione (&ldquo;The Contest Between Harmony and Invention&rdquo;). The Four Seasons is the best known of Vivaldi&rsquo;s works. Unusually for the time, Vivaldi published the concerti with accompanying poems (possibly written by Vivaldi himself) that elucidated what it was about those seasons that his music was intended to evoke. It provides one of the earliest and most-detailed examples of what was later called program music&mdash;music with a narrative element. Vivaldi took great pains to relate his music to the texts of the poems, translating the poetic lines themselves directly into the music on the page. In the middle section of the Spring concerto, where th<img alt=\"\" src=\"/fblog/www/admin/../public/files/P6DFBt1HCgmdQ8CF.jpg\" style=\"border-style:solid; border-width:1px; height:250px; margin:5px; width:571px\" />e goatherd sleeps, his barking dog can be marked in the viola section. Other natural occurrences are similarly evoked. Vivaldi separated each concerto into three movements, fast-slow-fast, and likewise each linked sonnet into three sections. His arrangement is as follows: Spring (Concerto No. 1 in E Major) Allegro Spring has arrived with joy Welcomed by the birds with happy songs, And the brooks, amidst gentle breezes, Murmur sweetly as they flow. The sky is caped in black, and Thunder and lightning herald a storm When they fall silent, the birds Take up again their delightful songs. Largo e pianissimo sempre And in the pleasant, blossom-filled meadow, To the gentle murmur of leaves and plants, The goatherd sleeps, his faithful dog beside him. Allegro To the merry sounds of a rustic bagpipe, Nymphs and shepherds dance in their beloved spot When Spring appears in splendour. Summer (Concerto No. 2 in G Minor) Allegro non molto Under the merciless sun of the season Languishes man and flock, the pine tree burns. The cuckoo begins to sing and at once Join in the turtledove and the goldfinch. A gentle breeze blows, but Boreas Is roused to combat suddenly with his neighbour, And the shepherd weeps because overhead Hangs the fearsome storm, and his destiny. Adagio His tired limbs are robbed of rest By his fear of the lightning and the frightful thunder And by the flies and hornets in furious swarms. Presto Alas, his fears come true: There is thunder and lightning in the heavens And the hail cuts down the tall ears of grain. Autumn (Concerto No. 3 in F Major) Allegro The peasant celebrates with dancing and singing The pleasure of the rich harvest, And full of the liquor of Bacchus They end their merrymaking with a sleep. Adagio molto All are made to leave off dancing and singing By the air which, now mild, gives pleasure And by the season, which invites many To find their pleasure in a sweet sleep. Allegro The hunters set out at dawn, off to the hunt, With horns and guns and dogs they venture out. The beast flees and they are close on its trail. Already terrified and wearied by the great noise Of the guns and dogs, and wounded as well It tries feebly to escape, but is bested and dies. Winter (Concerto No. 4 in F Minor) Allegro non molto Frozen and shivering in the icy snow, In the severe blasts of a terrible wind To run stamping one&rsquo;s feet each moment, One&rsquo;s teeth chattering through the cold. Largo To spend quiet and happy times by the fire While outside the rain soaks everyone. Allegro To walk on the ice with tentative steps, Going carefully for fear of falling. To go in haste, slide, and fall down to the ground, To go again on the ice and run, In case the ice cracks and opens. To hear leaving their iron-gated house Sirocco, Boreas, and all the winds in battle&mdash; This is winter, but it brings joy. (Author uncertain; English translation by Betsy Schwarm)</p>\r\n\r\n<p>ok oko ok ok ok</p>\r\n', '', 'four-season7', '2018-08-29 09:32:37', 1, 1, 0, 1),
(9, 'The Four Seasons', '<p>The Four Seasons, Italian Le quattro stagioni, group of four violin concerti by Italian composer Antonio Vivaldi, each of which gives a musical expression to a season of the year. They were written about 1720 and were published in 1725 (Amsterdam), together with eight additional violin concerti, as Il cimento dell&rsquo;armonia e dell&rsquo;inventione (&ldquo;The Contest Between Harmony and Invention&rdquo;). The Four Seasons is the best known of Vivaldi&rsquo;s works. Unusually for the time, Vivaldi published the concerti with accompanying poems (possibly written by Vivaldi himself) that elucidated what it was about those seasons that his music was intended to evoke. It provides one of the earliest and most-detailed examples of what was later called program music&mdash;music with a narrative element. Vivaldi took great pains to relate his music to the texts of the poems, translating the poetic lines themselves directly into the music on the page. In the middle section of the Spring concerto, where the goatherd sleeps, his barking dog can be marked in the viola section. Other natural occurrences are similarly evoked. Vivaldi separated each concerto into three movements, fast-slow-fast, and likewise each linked sonnet into three sections. His arrangement is as follows: Spring (Concerto No. 1 in E Major) Allegro Spring has arrived with joy Welcomed by the birds with happy songs, And the brooks, amidst gentle breezes, Murmur sweetly as they flow. The sky is caped in black, and Thunder and lightning herald a storm When they fall silent, the birds Take up again their delightful songs. Largo e pianissimo sempre And in the pleasant, blossom-filled meadow, To the gentle murmur of leaves and plants, The goatherd sleeps, his faithful dog beside him. Allegro To the merry sounds of a rustic bagpipe, Nymphs and shepherds dance in their beloved spot When Spring appears in splendour. Summer (Concerto No. 2 in G Minor) Allegro non molto Under the merciless sun of the season Languishes man and flock, the pine tree burns. The cuckoo begins to sing and at once Join in the turtledove and the goldfinch. A gentle breeze blows, but Boreas Is roused to combat suddenly with his neighbour, And the shepherd weeps because overhead Hangs the fearsome storm, and his destiny. Adagio His tired limbs are robbed of rest By his fear of the lightning and the frightful thunder And by the flies and hornets in furious swarms. Presto Alas, his fears come true: There is thunder and lightning in the heavens And the hail cuts down the tall ears of grain. Autumn (Concerto No. 3 in F Major) Allegro The peasant celebrates with dancing and singing The pleasure of the rich harvest, And full of the liquor of Bacchus They end their merrymaking with a sleep. Adagio molto All are made to leave off dancing and singing By the air which, now mild, gives pleasure And by the season, which invites many To find their pleasure in a sweet sleep. Allegro The hunters set out at dawn, off to the hunt, With horns and guns and dogs they venture out. The beast flees and they are close on its trail. Already terrified and wearied by the great noise Of the guns and dogs, and wounded as well It tries feebly to escape, but is bested and dies. Winter (Concerto No. 4 in F Minor) Allegro non molto Frozen and shivering in the icy snow, In the severe blasts of a terrible wind To run stamping one&rsquo;s feet each moment, One&rsquo;s teeth chattering through the cold. Largo To spend quiet and happy times by the fire While outside the rain soaks everyone. Allegro To walk on the ice with tentative steps, Going carefully for fear of falling. To go in haste, slide, and fall down to the ground, To go again on the ice and run, In case the ice cracks and opens. To hear leaving their iron-gated house Sirocco, Boreas, and all the winds in battle&mdash; This is winter, but it brings joy. (Author uncertain; English translation by Betsy Schwarm)</p>\r\n', '', 'four-season8', '2018-08-29 09:32:37', 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Music'),
(2, 'Literature');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1534847087),
('m130524_201442_init', 1534847099);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'user', 'wewefwe', '$2y$13$8D9xKrXr.cJacVFLhAscZeuRv9vurEU6fLO.tIXDisrxD8aR/nBNe', 'scwewecwewe', 'admin@example.com', 10, 0, 0),
(2, 'admin', 'KVJsT0ZqyfC5hoAWHQJ0e6VVVmmdY3-o', '$2y$13$8D9xKrXr.cJacVFLhAscZeuRv9vurEU6fLO.tIXDisrxD8aR/nBNe', NULL, 'jamil@example.com', 10, 1537335205, 1537335205),
(3, 'jamil', 'ROGLJq6ZAsQbXfZdQCvLG820Q1ROF44V', '$2y$13$8D9xKrXr.cJacVFLhAscZeuRv9vurEU6fLO.tIXDisrxD8aR/nBNe', NULL, 'jamil2@example.com', 10, 1537508809, 1537508809);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `fk_categories` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
