-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2018 at 10:11 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mycms`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` longtext NOT NULL,
  `slug` text NOT NULL,
  `status` enum('draft','publish','trash') NOT NULL,
  `date_created` datetime NOT NULL,
  `image` text NOT NULL,
  `image_thumb` text NOT NULL,
  `author_id` int(20) NOT NULL,
  `date_published` datetime NOT NULL,
  `last_modified_by` varchar(250) NOT NULL,
  `date_modified` datetime NOT NULL,
  `is_featured` int(5) NOT NULL,
  `featured_end_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `slug`, `status`, `date_created`, `image`, `image_thumb`, `author_id`, `date_published`, `last_modified_by`, `date_modified`, `is_featured`, `featured_end_date`) VALUES
(20, 'Flavors From All Over Asia Awaits You at The Noodle Studio in Ayala Malls The 30th', '<p style=\\\"\\\">Noodles have been a staple in the culinary vernacular of most Asian Countries. In many parts of Asia, it is considered comfort food. While there are numerous places in Manila that offer European renditions of noodles, little has been done to really gather and place emphasis on its various conceptions from around the Asian continent.&nbsp;</p><p style=\\\"\\\"><br></p><p style=\\\"\\\"><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://www.whatshappening.com.ph/uploads/2017/11/23/1511429434.jpg\\\" style=\\\"width: 640px; height: 460px;\\\"></p><p style=\\\"text-align: center;\\\"><strong><em>top L-R: Pad Thai (Thailand) P378 and Fried Salmon Pouches P288</em></strong></p><p style=\\\"text-align: center;\\\"><strong><em>bottom L-R: Laksa Lemak - Curry Coconut Soup (Malaysia) P388 and Mie Goreng (Indonesia) P288&nbsp;</em></strong></p><p style=\\\"\\\"><br></p><p style=\\\"\\\">The Noodle Studio serves as a workshop in exploring Asian palates, gathering a selection of well-known noodle dishes as well as creating new Asian dishes in a modern, sophisticated setting. Each dish is prepared using contemporary techniques in the culinary world, while retaining the heart and flavor of the original recipes to deliver its version of modern Asian comfort food to discerning diners.</p><p style=\\\"\\\"><br></p><p style=\\\"\\\"><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://www.whatshappening.com.ph/uploads/2017/11/23/1511432363.jpg\\\" style=\\\"width: 640px; height: 410px;\\\"></p><p style=\\\"text-align: center;\\\"><strong><em>Nasi Goreng P288</em></strong></p><p style=\\\"\\\"><br></p><p style=\\\"\\\">The Noodle Studio is the brainchild of Executive Chef Gregorio “Gigo” de Guzman. He graduated from the Ateneo de Manila University with a Bachelor’s degree in English Literature, from where he then pursued a culinary course at Enderun Colleges. He was fortunate enough to be chosen for an internship program at the Michelin-starred restaurant Le Jules Verne on the 2nd floor of the Eiffel Tower in Paris, France.</p><p style=\\\"\\\"><br></p><p style=\\\"\\\"><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://www.whatshappening.com.ph/uploads/2017/11/23/1511432380.jpg\\\" style=\\\"width: 640px; height: 410px;\\\"></p><p style=\\\"text-align: center;\\\"><strong><em>Bagoong Fried Rice P348</em></strong></p><p style=\\\"\\\"><br></p><p style=\\\"\\\">His love for noodles began in his childhood, where his favorite memories of his late father, Moises de Guzman, were of their numerous noodle food trips. Some of his many passions are musical theater (appearing in Ateneo Blue Repertory’s High School Musical, Repertory Philippines\\\' The Producers, and Trumpet’s Bluebird of Happiness), and indoor cycling (working as an instructor at Electric Studio, the Philippines first boutique indoor cycling studio).</p><p style=\\\"\\\"><br></p><p style=\\\"\\\"><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://www.whatshappening.com.ph/uploads/2017/11/23/1511429467.png\\\" style=\\\"width: 640px; height: 460px;\\\"></p><p style=\\\"text-align: center;\\\"><strong><em>top L-R: Yan Som O (Thai Pomelo Salad) P398 and Fried Sisig Rolls P238</em></strong></p><p style=\\\"text-align: center;\\\"><strong><em>bottom L-R: Char Kway Teow 2.0 P358 and Yakisoba (Japan) P388&nbsp;</em></strong></p><p style=\\\"\\\"><br></p><p style=\\\"\\\">The concept of the Noodle Studio was inspired by a previous restaurant created by his friend Chef Off, a Thai national who studied at the Culinary Institute of America in Napa Valley, and his mother Claire dela Fuente, the famed singer, entrepreneur, and restaurateur. The 2-year process of creating the Noodle Studio was a collaborative effort between Chef Gigo and Head Chef Alister Sun. An HRIM graduate major in Culinary Arts from De La Salle - College of Saint Benilde, Chef Al garnered his training at the Panorama Hotel in Hongkong and the Starwood Hotel Group in Colorado, Washington, and Arizona. They also had the participation of Chef Off, Claire dela Fuente, and a few friends from around Asia.</p><p style=\\\"\\\"><br></p><p style=\\\"\\\"><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://www.whatshappening.com.ph/uploads/2017/11/23/1511429512.png\\\" style=\\\"width: 640px; height: 460px;\\\"></p><p style=\\\"text-align: center;\\\"><strong><em>top L-R: Mee Goreng 2.0 (Indonesia) P388 and Crab Ragoon P268</em></strong></p><p style=\\\"text-align: center;\\\"><strong><em>bottom L-R: Laksa Lemak - Beef Brisket Noodle Soup (Taiwan) P408 and Thai Green Curry Chicken P388</em></strong></p><p style=\\\"\\\"><br></p><p style=\\\"\\\">The aim of the Noodle Studio is to bring the flavors of various countries in Asia in one place, providing a relaxed, modern upscale setting where these can be enjoyed with friends and family. It wishes to serve as a workshop or “studio,” where various Asia noodle dishes can be explored and recreated to satisfy the ever-growing number of foodies in Manila. But most of all, the Noodle Studio aspires to give Asian Noodle Cuisine the credit it deserves in molding and influencing the culinary world.</p><p style=\\\"\\\"><br></p><p style=\\\"\\\"><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://www.whatshappening.com.ph/uploads/2017/11/23/1511431841.jpg\\\" style=\\\"width: 640px; height: 410px;\\\"></p><p style=\\\"text-align: center;\\\"><strong><em>Owner and Executive Chef of The Noodle Studio: Ms. Claire dela Fuente and Chef Gregorio \\\"Gigo\\\" de Guzman</em></strong></p><p style=\\\"text-align: center;\\\"><br></p><p style=\\\"text-align: center;\\\"><strong><em><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://www.whatshappening.com.ph/uploads/2017/11/23/1511431984.jpg\\\" style=\\\"width: 640px; height: 410px;\\\"></em></strong><strong><em>Executive Chef Gregorio \\\"Gigo\\\" de Guzman and Head Chef Alister \\\"Al\\\" Sun</em></strong></p><p style=\\\"\\\"><br></p><p style=\\\"\\\"><strong>The Noodle Studio&nbsp;</strong>is located at the<strong>&nbsp;</strong>2nd Floor of Ayala Malls the 30th, Meralco Ave. Ortigas, Pasig City.<br>Telephone Number: (+632) 637-6500<br>Mobile Numbers: Smart – (+63) 928-389-8583 / Globe – (+63) 995-271-5465<br>E-mail: thenoodlestudioph@gmail.com<br>Facebook: <a href=\\\"http://www.facebook.com/thenoodlestudioph\\\">http://www.facebook.com/thenoodlestudioph</a><br>Instagram: @thenoodlestudioph</p><p style=\\\"\\\"><br></p><p style=\\\"\\\"><br></p>', 'flavors-from-all-over-asia-awaits-you-at-the-noodle-studio-in-ayala-malls-the-30th', 'draft', '2018-01-11 16:03:07', 'http://localhost/myCMS//uploads/original/1515657778_1511429317.jpg', 'http://localhost/myCMS//uploads/thumbs/1515657778_1511429317.jpg', 1, '0000-00-00 00:00:00', 'admin', '2018-01-16 12:48:29', 0, '0000-00-00 00:00:00'),
(21, 'Stellar Cast Of Suspects In Murder On The Orient Express', '<p style=\\\"\\\">In the most timeless of whodunits, \\\"Murder on the Orient Express\\\" follows renowned detective Hercule Poirot (Kenneth Branagh) as he attempts to solve what would become one of the most infamous crimes in history based on Agatha Christie\\\'s classic and most ingenious novel of the same title.</p><p style=\\\"\\\"><br></p><p style=\\\"\\\"><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://www.whatshappening.com.ph/uploads/2017/11/20/1511169969.jpg\\\" style=\\\"width: 640px; height: 520px;\\\"></p><p style=\\\"\\\"><br></p><p style=\\\"\\\">After a shocking murder of a wealthy businessman on the lavish European train barreling its way west in the dead of winter, private detective Poirot must use every tool of his trade to uncover which of the train\\\'s eclectic passengers is the killer, before he or she strikes again.</p><p style=\\\"\\\">More than 80 years after its publishing, Christie\\\'s novel remains beloved by new generations of readers. Kenneth Branagh\\\'s stunning retelling of the beloved mystery with its acclaimed ensemble and breathtaking visuals invites audiences to take the most suspenseful train ride of their lives. &nbsp;Branagh explains why it was a natural fit for him to direct and play Poirot: &nbsp;\\\"It felt that there was a way in which those two things were very congruent with one person doing the same job. &nbsp;Because, crucially, I think, Hercule Poirot is a director. &nbsp;He directs the characters, and like a director, Poirot intuitively tries to listen to the way in which he can be specific and bespoke about how to create the mood that\\\'s required for each interrogation.\\\"</p><p style=\\\"\\\"><br></p><p style=\\\"\\\"><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://www.whatshappening.com.ph/uploads/2017/11/20/1511170176.jpg\\\" style=\\\"width: 640px; height: 420px;\\\"></p><p style=\\\"text-align: center;\\\"><strong><em>Judi Dench and Olivia Colman in MURDER ON THE ORIENT EXPRESS</em></strong></p><p style=\\\"\\\"><br></p><p style=\\\"\\\">Starring with Branagh in the movie is a stellar cast composed of Johnny Depp, Willem Dafoe, Michelle Pfeiffer, Dame Judi Dench, Derek Jacobi, Josh Gad, Penélope Cruz, Olivia Colman, Daisy Ridley, Sergei Polunin, Leslie Odom, Jr., Tom Bateman and Lucy Boynton.</p><p style=\\\"\\\">Oscar-nominated actor Johnny Depp was intrigued by how the story felt relevant and fresh. \\\"It\\\'s got everything you might expect from Agatha Christie,\\\" said Depp. &nbsp;\\\"Death, murder, interesting characters, an unusual, often glamorous situation - &nbsp;all of those elements, inside a wonderful location and journey, are all there. &nbsp;But I was really impressed to return to it and see how it hadn\\\'t dated, and, in fact, it had reinvented itself, I think, which is a sign of very good storytelling.\\\"</p><p style=\\\"\\\"><br></p><p style=\\\"\\\"><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://www.whatshappening.com.ph/uploads/2017/11/20/1511172012.jpg\\\" style=\\\"width: 640px; height: 420px;\\\"></p><p style=\\\"text-align: center;\\\"><strong><em>Josh Gad and Johnny Depp in MURDER ON THE ORIENT EXPRESS</em></strong></p><p style=\\\"\\\"><br></p><p style=\\\"\\\">Oscar-nominated actor Willem Dafoe was drawn to the script for its character-driven narrative: &nbsp;\\\"For this story, it\\\'s the tone that\\\'s so important, and the role of Poirot is interesting and beautifully written, as are the balance of the characters. &nbsp;It has a nice edge and it\\\'s fun, but it also has a moral dilemma at its center.\\\"</p><p style=\\\"\\\">When Josh Gad first read the script, he immediately knew he wanted to be involved in the project. &nbsp;He explains: \\\"I got about twenty pages into the script and called my agent and I said, \\\'I don\\\'t care if I have to play an usher who\\\'s taking tickets, I need to be a part of this film, it\\\'s extraordinary.\\\' &nbsp;To me, something this smart, something this epic, something that almost harks back to the golden age of Hollywood cinema, as an actor but also as a cinephile, was really exciting.\\\"</p><p style=\\\"\\\"><br></p><p style=\\\"\\\"><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://www.whatshappening.com.ph/uploads/2017/11/20/1511172068.jpg\\\" style=\\\"width: 640px; height: 420px;\\\"></p><p style=\\\"text-align: center;\\\"><strong><em>Kenneth Branagh and Daisy Ripley in MURDER IN THE ORIENT EXPRESS</em></strong></p><p style=\\\"\\\"><br></p><p style=\\\"\\\">Oscar-winning actress Penélope Cruz was also impressed with Branagh\\\'s ability to seamlessly move between directing and playing Poirot. \\\"What he\\\'s doing with the performances and the camera is really powerful and I feel like he\\\'s making a film that will get into our brains in a way that is going to trap us, like some strange magic,\\\" said Cruz.\\\"</p><p style=\\\"\\\">Michelle Pfeiffer dazzles as Caroline Hubbard— a kind of character that Agatha Christie met numerously on her own travels, and is often quite ruthless about describing. &nbsp; \\\"Hubbard is a husband-hunter,\\\" offers Pfeiffer. \\\"Or so she says. &nbsp;In some ways she\\\'s a lonely, and rather sweet, and tender, and often funny woman, but she can be very forceful, and to some people a little irritating and a little intense. It was fun to step into her shoes.\\\"</p><p style=\\\"\\\">\\\"Murder on the Orient Express\\\" opens November 29 in cinemas nationwide from 20th Century Fox.</p>', 'stellar-cast-of-suspects-in-murder-on-the-orient-express', 'publish', '2018-01-11 16:07:34', 'http://localhost/myCMS//uploads/original/1515658049_1511169278.jpg', 'http://localhost/myCMS//uploads/thumbs/1515658049_1511169278.jpg', 1, '2018-01-12 11:14:25', 'admin', '2018-01-12 11:14:25', 0, '0000-00-00 00:00:00'),
(22, 'My Blog Post', '<p>This is the content of my blog post.</p>', 'my-blog-post', 'publish', '2018-01-14 19:54:38', 'http://localhost/myCMS//uploads/original/1515930874_Lighthouse.jpg', 'http://localhost/myCMS//uploads/thumbs/1515930874_Lighthouse.jpg', 1, '2018-01-26 09:36:13', 'admin', '2018-01-26 09:36:13', 0, '0000-00-00 00:00:00'),
(27, 'First Blog Post', '<p style=\\\"\\\">This is the content of my first blog post.</p>', 'first-blog-post', 'draft', '2018-01-17 16:20:23', 'http://localhost/myCMS//uploads/original/1516177203_Golden-Gate-Bridge-HD-Wallpapers-WideScreen_FK1cfem.jpg', 'http://localhost/myCMS//uploads/thumbs/1516177203_Golden-Gate-Bridge-HD-Wallpapers-WideScreen_FK1cfem.jpg', 1, '0000-00-00 00:00:00', 'admin', '2018-01-18 10:27:02', 0, '0000-00-00 00:00:00'),
(28, 'Trump reportedly uses an Indian accent to mimic Modi at meetings', '<p>As the World Economic Forum kicks off in Davos this week, all eyes are on Narendra Modi, reportedly the first Indian prime minister in 20 years to attend the high-profile gathering of business leaders, economists, and journalists. While French president Emmanuel Macron, German chancellor Angela Merkel, and even US president Donald Trump are all scheduled to deliver speeches, it’s Modi who’s going first, delivering the inaugural keynote address on Jan. 23.</p><p>That may be a sign of India’s growing clout, which has helped develop closer relationships with the US and other Western economies in recent years. But a recent report in The Washington Post suggests that the more things change, the more they stay the same—at least for India. In the report, which discusses the US’s plans to increase the number of troops deployed to Afghanistan, writers Greg Jaffe and Missy Ryan say that Trump has a tendency to imitate Modi’s way of speaking.</p><p style=\\\"\\\">“Senior administration officials said that the president has been known to affect an Indian accent and imitate Indian Prime Minister Narendra Modi, who in an Oval Office meeting last year told him, ‘Never has a country given so much away for so little in return’ as the United States in Afghanistan,” the report, published on Jan. 21, says.</p>', 'trump-reportedly-uses-an-indian-accent-to-mimic-modi-at-meetings', 'publish', '2018-01-23 14:45:18', 'http://localhost/myCMS//uploads/original/1516689914_nature-2-26-17.jpg', 'http://localhost/myCMS//uploads/thumbs/1516689914_nature-2-26-17.jpg', 1, '2018-01-26 09:35:43', 'admin', '2018-01-26 09:35:43', 0, '0000-00-00 00:00:00'),
(29, 'The mastermind of China’s economic policy will speak at Davos this week', '<p>Last year in Davos, Chinese president Xi Jinping positioned himself as globalization’s most vocal champion. This year, his right-hand man Liu He will shed light on how China intends to shape the world economy.</p><p style=\\\"\\\">Liu, the highest-ranking Chinese official to attend this year’s World Economic Forum in the Swiss Alps, is slated to give a speech (link in Chinese) about China’s economic policy on the event’s second day (Jan. 24). The fact he was chosen to represent China at the annual gathering of global elites is a further sign of his continued ascent to the top ranks of Beijing’s decision-making circle, after years of working mostly behind the scenes.</p>', 'the-mastermind-of-chinas-economic-policy-will-speak-at-davos-this-week', 'publish', '2018-01-23 14:46:12', 'http://localhost/myCMS//uploads/original/1516689969_spring-tree-flowers-meadow-60006.jpeg', 'http://localhost/myCMS//uploads/thumbs/1516689969_spring-tree-flowers-meadow-60006.jpeg', 1, '2018-01-26 09:31:14', 'admin', '2018-01-26 09:31:14', 0, '0000-00-00 00:00:00'),
(30, 'North Korea is planning a military parade the day before the Winter Olympics', '<p>As South Korea readies for the opening ceremony of the Winter Olympics in Pyeongchang on Feb. 9, its northern neighbor is planning a spectacle of a very different kind just 300 km (186 miles) away.</p><p>North Korea&rsquo;s official news agency said today (Jan. 23) that it will mark Feb. 8 as Army-Building Day, the official anniversary of the Korean People&rsquo;s Army&mdash;an event previously celebrated on April 25. South Korea said earlier that it had detected signs that North Korea was mobilizing around 13,000 troops and 200 pieces of equipment near an airport in Pyongyang for what could be a military parade rehearsal.</p><p>According to NK News, the last time Feb. 8 was used to mark the army anniversary was 1977, after which the date was changed to April 25.</p><p>Pyongyang&rsquo;s announcement comes as the two countries are moving full steam ahead with a detente ahead of the Olympics, which will now include performances by North and South Korea in each other&rsquo;s countries, a joint women&rsquo;s hockey team, and the two sides marching together under a unification flag at the games.</p><p style=\\\"\\\">But the detente, much to the Seoul government&rsquo;s chagrin, hasn&rsquo;t exactly been met with unadulterated support in South Korea. The optics of North Korea holding a military parade just a day before the Winter Olympics opening ceremony isn&rsquo;t likely to boost support for the diplomatic efforts, either. Many South Koreans are already questioning the extent to which the country is accommodating its bellicose neighbor for the Olympics, with its female hockey team, for example, being forced to play with North Korean players. Discontent toward the government&rsquo;s Olympics diplomacy has helped push the popularity of president Moon Jae-in to an all-time low&mdash;until now, he had been registering approval ratings of 70% or above with near-idol status in the country.</p>', 'north-korea-is-planning-a-military-parade-the-day-before-the-winter-olympics', 'publish', '2018-01-23 14:47:27', 'http://localhost/myCMS//uploads/original/1516690043_spring-tree-flowers-meadow-60006.jpeg', 'http://localhost/myCMS//uploads/thumbs/1516690043_spring-tree-flowers-meadow-60006.jpeg', 1, '2018-01-23 14:47:27', 'admin', '2018-01-23 14:47:27', 0, '0000-00-00 00:00:00'),
(31, 'Asia’s favorite bean just got served up as scrambled eggs', '<p>One of Asia’s most familiar food, mung beans, is being reintroduced to the region in a completely reinvented form by a Silicon Valley startup.</p><p>This week (Jan 22), San Francisco-based JUST (formerly known as Hampton Creek) debuted its new plant-derived scrambled “eggs” for the Asian markets in Hong Kong. The product—which the company had been promising since its inception in December 2011—is called “Just Scramble.”</p><p style=\\\"\\\">When the product is poured into a heated pan, it quickly spreads and begins to cook much like real eggs. The company says Just Scramble has a shelf life of eight to 10 days right now, though its food scientists are working to extend that time.</p><p style=\\\"\\\">JUST is sourcing its mung beans from China’s Inner Mongolia, where it has direct relationships with farmers. The beans are then shipped to the US, where they are processed and manufactured. In taking its eggless egg-scramble product to Hong Kong, the company is showing off the fruits of a half-decade of labor in the backyard of two of its more influential investors, Li Ka-shing and Solina Chau, the billionaire tycoons behind the venture-capital firm Horizons Ventures.</p><p style=\\\"\\\"><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://localhost/myCMS//uploads/original/1516690137_just-ceo.jpg\\\" style=\\\"width: 641px; height: 427.654px;\\\"></p><p style=\\\"\\\"><br></p><p>In February 2014, Horizons Ventures put $15.5 million (paywall) into the company. Later that same year, Horizons was the biggest investor in another fundraising round that totalled $90 million. (Horizon’s investment in that round was undisclosed.) Japan’s Mitsui &amp; Co., one of the world’s largest trading and investment companies, invested $15 million in September 2015. Singapore’s biggest state-owned fund was also an investor.</p><p><br></p><p style=\\\"\\\">The company is looking to get Just Scramble into mainland China, Japan, and India as their next launching markets following Hong Kong, according to the food technology’s spokesperson.</p>', 'asias-favorite-bean-just-got-served-up-as-scrambled-eggs', 'publish', '2018-01-23 14:49:31', 'http://localhost/myCMS//uploads/original/1516690166_just-scramble-hong-kong-2018.jpg', 'http://localhost/myCMS//uploads/thumbs/1516690166_just-scramble-hong-kong-2018.jpg', 1, '2018-02-02 11:35:53', 'admin', '2018-02-02 11:35:53', 0, '0000-00-00 00:00:00'),
(32, 'test', '<p style=\\\"\\\">test</p>', 'test', 'trash', '2018-01-24 13:17:59', 'http://localhost/myCMS//uploads/original/1516771075_just-ceo.jpg', 'http://localhost/myCMS//uploads/thumbs/1516771075_just-ceo.jpg', 1, '2018-01-24 13:17:59', 'admin', '2018-01-24 13:17:59', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `blog_id`, `category_id`) VALUES
(38, 20, 6),
(40, 21, 6),
(43, 22, 2),
(50, 27, 3),
(51, 28, 2),
(52, 29, 2),
(53, 30, 1),
(54, 31, 6),
(55, 32, 6),
(56, 29, 1),
(57, 28, 3),
(58, 22, 9);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `slug` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `type`, `parent_id`, `slug`) VALUES
(1, 'World News', 'This is the description of world news.', '', 'blog', 0, 'world-news'),
(2, 'Politics', 'This is the description of politics.', '', 'blog', 0, 'politics'),
(3, 'Healthy Living', 'This is the description of healthy living.', '', 'blog', 0, 'healthy-living'),
(5, 'Love and Relationship', 'This is the description.', '', 'blog', 0, 'love-and-relationship'),
(6, 'Food', '', '', 'blog', 0, 'food'),
(9, 'Travel', '', '', 'blog', 0, 'travel'),
(10, 'Uncategorized', '', '', 'blog', 0, 'uncategorized');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `date_sent` datetime NOT NULL,
  `date_opened` datetime NOT NULL,
  `status` enum('new','read','trash') NOT NULL,
  `opened_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `name`, `subject`, `email`, `contact`, `message`, `date_sent`, `date_opened`, `status`, `opened_by`) VALUES
(1, 'Vincent Abella', 'What is lorem ipsum?', 'snowflakes.abella@gmail.com', '0926 889 2949', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2018-02-20 00:00:00', '2018-02-02 16:04:47', 'read', 'admin'),
(2, 'John Doe', 'Why do we use it?', 'johndoe@gmail.com', '0915 821 2133', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2018-02-02 16:03:20', '2018-02-02 16:03:55', 'trash', 'admin'),
(4, 'Mary Jane Rodriguez', 'Where does it come from?', 'mjrodriguez@gmail.com', '0917 823 3242', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '2018-02-02 16:23:11', '2018-02-02 16:41:25', 'read', 'admin'),
(5, 'Samantha Borne', 'Where can I get some?', 'samantha_borne@gmail.com', '0916 782 1213', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2018-02-02 16:24:39', '2018-02-02 16:39:27', 'read', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) NOT NULL,
  `title` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `class` varchar(250) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `menu_type_id` int(10) NOT NULL,
  `parent` int(10) NOT NULL,
  `position` int(10) NOT NULL,
  `date_added` datetime NOT NULL,
  `added_by` varchar(250) NOT NULL,
  `target` enum('parent','blank') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `url`, `class`, `icon`, `keyword`, `menu_type_id`, `parent`, `position`, `date_added`, `added_by`, `target`) VALUES
(6, 'Home', 'http://localhost/myCMS', '', '', '', 7, 0, 0, '2018-01-12 16:14:01', 'admin', 'parent'),
(9, 'Blog', '/blog', '', '', 'blogs', 7, 0, 1, '2018-01-12 17:55:30', 'admin', 'blank'),
(29, 'Dashboard', 'admin/dashboard', '', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/1.png\" />', 'dashboard', 4, 0, 0, '2018-01-15 16:37:51', 'admin', 'parent'),
(30, 'Blog', 'blog/admin/blog', '', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/001-editing.png\" />', 'blogs', 4, 0, 1, '2018-01-15 16:37:58', 'admin', 'parent'),
(32, 'Menus', 'menus/admin/menus', '', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/4.png\">', 'menus', 4, 0, 6, '2018-01-15 16:38:14', 'admin', 'parent'),
(33, 'Users', 'admin/users', '', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/2.png\">', 'users', 4, 0, 8, '2018-01-15 16:38:22', 'admin', 'parent'),
(34, 'Logout', 'admin/logout', '', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/020-locked.png\">', '', 4, 0, 9, '2018-01-15 16:38:33', 'admin', 'parent'),
(35, 'All Posts', 'admin/blogs', '', '', 'blogs', 4, 30, 2, '2018-01-16 12:06:29', 'admin', 'parent'),
(36, 'Add New Post', 'admin/blogs/add', '', '', 'blogs', 4, 30, 3, '2018-01-16 12:07:04', 'admin', 'parent'),
(37, 'Blog Categories', 'admin/blogs/categories', '', '', 'blogs', 4, 30, 4, '2018-01-16 12:07:23', 'admin', 'parent'),
(51, 'Healthy Living', 'http://localhost/myCMS/category/post/healthy-living', '', '', 'healthy-living', 7, 9, 2, '2018-01-24 11:34:17', 'admin', 'parent'),
(52, 'Travel', 'http://localhost/myCMS/category/post/travel', '', '', 'travel', 7, 9, 3, '2018-01-24 11:37:09', 'admin', 'parent'),
(53, 'Politics', 'http://localhost/myCMS/category/post/politics', '', '', 'politics', 7, 9, 4, '2018-01-24 11:38:36', 'admin', 'parent'),
(57, 'Advertise with Us', 'http://localhost/myCMS/page/11/advertise-with-us', '', '', 'advertise-with-us', 7, 0, 5, '2018-01-24 12:10:41', 'admin', 'parent'),
(59, 'About Us', 'http://localhost/myCMS/page/14/about-us', '', '', 'about-us', 7, 0, 6, '2018-01-24 12:28:45', 'admin', 'parent'),
(61, 'Pages', 'admin/pages', '', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/005-forms.png\">', 'pages', 4, 0, 5, '2018-01-24 12:34:51', 'admin', 'parent'),
(67, 'Dashboard', 'admin/dashboard', '', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/1.png\" />', 'dashboard', 5, 0, 0, '2018-01-26 09:41:57', 'admin', 'parent'),
(69, 'Logout', 'admin/logout', '', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/020-locked.png\">', 'users', 5, 0, 2, '2018-01-26 09:44:37', 'admin', 'parent'),
(70, 'Blog', 'admin/blogs', '', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/001-editing.png\" />', 'blog', 5, 0, 1, '2018-01-26 09:47:46', 'admin', 'parent'),
(73, 'World News', 'http://localhost/myCMS/category/post/world-news', '', '', 'world-news', 7, 0, 7, '2018-01-30 17:31:18', 'admin', 'parent'),
(74, 'Inquiries', 'admin/inquiries', '', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/006-letter.png\">', 'inquiries', 4, 0, 7, '2018-02-02 13:44:02', 'admin', 'parent');

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE `menu_type` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `user_role_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id`, `name`, `user_role_id`) VALUES
(4, 'Admin Menu', 1),
(5, 'Editor Menu', 2),
(6, 'User Menu', 3),
(7, 'Main Menu', 4),
(8, 'Footer Menu', 4);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `uri_string` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `parent` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `uri_string`, `keyword`, `icon`, `parent`) VALUES
(1, 'Blog', 'admin/blogs', 'blog', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/001-editing.png\" />', 0),
(2, 'Dashboard', 'admin/dashboard', 'dashboard', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/1.png\" />', 0),
(3, 'Pages', 'admin/pages', 'pages', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/005-forms.png\">', 0),
(4, 'Menus', 'admin/menus', 'menus', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/4.png\">', 0),
(5, 'Users', 'admin/users', 'users', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/2.png\">', 0),
(6, 'Logout', 'admin/logout', 'users', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/020-locked.png\">', 0),
(7, 'All Post', 'admin/blogs', 'blogs', '', 1),
(8, 'Add New Post', 'admin/blogs/add', 'blog_add', '', 1),
(9, 'Blog Categories', 'admin/blogs/categories', 'blog_categories', '', 1),
(10, 'Inquiries', 'admin/inquiries', 'inquiries', '<img src=\"http://localhost/myCMS/assets/themes/images/icons/006-letter.png\">', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` text NOT NULL,
  `content` longtext NOT NULL,
  `author_id` int(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `status` enum('draft','publish','trash') NOT NULL,
  `image` text NOT NULL,
  `image_thumb` text NOT NULL,
  `date_published` datetime NOT NULL,
  `last_modified_by` varchar(250) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `author_id`, `date_created`, `status`, `image`, `image_thumb`, `date_published`, `last_modified_by`, `date_modified`) VALUES
(3, 'Hello World', 'hello-world', '<p><strong>Where can I get some?</strong></p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&apos;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&apos;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 1, '2018-01-14 20:11:55', 'publish', 'http://localhost/myCMS//uploads/original/1515981046_5676305-hd-picture.jpg', 'http://localhost/myCMS//uploads/thumbs/1515981046_5676305-hd-picture.jpg', '2018-01-22 17:16:45', 'admin', '2018-01-22 17:16:45'),
(7, 'Privacy Policy', 'privacy-policy', '<p style=\\\"\\\">This is the privacy policy page.</p>', 1, '2018-01-16 12:49:59', 'draft', '', '', '0000-00-00 00:00:00', 'admin', '2018-01-16 12:49:59'),
(10, 'My Page', 'my-page', '<p><strong>Where does it come from?</strong></p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, '2018-01-17 13:34:57', 'publish', '', '', '2018-01-22 17:16:00', 'admin', '2018-01-22 17:16:00'),
(11, 'Advertise with Us', 'advertise-with-us', '<p><strong>Why do we use it?</strong></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &apos;Content here, content here&apos;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &apos;lorem ipsum&apos; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 1, '2018-01-17 13:35:46', 'publish', '', '', '2018-01-22 17:15:31', 'admin', '2018-01-22 17:15:31'),
(14, 'About Us', 'about-us', '<p><strong>What is Lorem Ipsum?</strong></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&apos;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '2018-01-22 17:14:46', 'publish', '', '', '2018-01-22 17:14:46', 'admin', '2018-01-22 17:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `password` varchar(300) NOT NULL,
  `role_id` int(10) NOT NULL,
  `last_login` datetime NOT NULL,
  `last_login_ip` varchar(250) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `date_created` datetime NOT NULL,
  `modified_by` varchar(250) NOT NULL,
  `date_modified` datetime NOT NULL,
  `image` text NOT NULL,
  `hash` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `role_id`, `last_login`, `last_login_ip`, `status`, `date_created`, `modified_by`, `date_modified`, `image`, `hash`) VALUES
(1, 'admin', 'snowflakes.abella@gmail.com', 'Vincent', 'Abella', '21232f297a57a5a743894a0e4a801fc3', 1, '2018-02-02 11:18:31', '::1', 'active', '0000-00-00 00:00:00', 'admin', '2018-01-12 11:14:36', 'http://localhost/myCMS//uploads/original/1517456799_avatar-3.jpg', ''),
(2, 'jamesdeiken', 'jamesdeiken@gmail.com', 'James', 'Deiken', '827ccb0eea8a706c4c34a16891f84e7b', 2, '2018-01-07 20:24:09', '::1', 'inactive', '2018-01-07 02:07:06', 'admin', '2018-01-16 18:22:49', 'http://localhost/myCMS/assets/images/default-profile-pic.png', ''),
(3, 'darkweb', 'johndoe@gmail.com', 'John', 'Doe', '81dc9bdb52d04dc20036dbd8313ed055', 2, '2018-01-31 10:06:00', '::1', 'active', '2018-01-17 18:08:11', 'admin', '2018-01-26 09:39:15', 'http://localhost/myCMS//uploads/original/1517217368_avatar-3.jpg', ''),
(4, 'dummyme', 'lorem_ipsum@gmail.com', 'Jane', 'Jane', '81dc9bdb52d04dc20036dbd8313ed055', 3, '0000-00-00 00:00:00', '', 'inactive', '2018-01-17 18:09:12', 'admin', '2018-01-17 18:20:02', 'http://localhost/myCMS/assets/images/default-profile-pic.png', ''),
(5, 'kennyrogers', 'kennyrogers@gmail.com', 'Kenny', 'Kenny', '827ccb0eea8a706c4c34a16891f84e7b', 3, '0000-00-00 00:00:00', '', 'inactive', '2018-01-17 18:13:59', 'admin', '2018-02-01 18:07:55', 'http://localhost/myCMS/assets/images/default-profile-pic.png', ''),
(6, 'dannyduck', 'dannyduck@gmail.com', 'Danny', 'Danny', '827ccb0eea8a706c4c34a16891f84e7b', 3, '0000-00-00 00:00:00', '', 'inactive', '2018-01-22 14:54:30', 'admin', '2018-02-01 18:08:05', 'http://localhost/myCMS/assets/images/default-profile-pic.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `module_permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `module_permissions`) VALUES
(1, 'Administrator', 'a:10:{i:0;a:2:{s:7:\"keyword\";s:9:\"dashboard\";s:12:\"user_role_id\";s:1:\"1\";}i:1;a:2:{s:7:\"keyword\";s:5:\"blogs\";s:12:\"user_role_id\";s:1:\"1\";}i:2;a:2:{s:7:\"keyword\";s:5:\"menus\";s:12:\"user_role_id\";s:1:\"1\";}i:3;a:2:{s:7:\"keyword\";s:5:\"users\";s:12:\"user_role_id\";s:1:\"1\";}i:4;a:2:{s:7:\"keyword\";s:0:\"\";s:12:\"user_role_id\";s:1:\"1\";}i:5;a:2:{s:7:\"keyword\";s:5:\"blogs\";s:12:\"user_role_id\";s:1:\"1\";}i:6;a:2:{s:7:\"keyword\";s:5:\"blogs\";s:12:\"user_role_id\";s:1:\"1\";}i:7;a:2:{s:7:\"keyword\";s:5:\"blogs\";s:12:\"user_role_id\";s:1:\"1\";}i:8;a:2:{s:7:\"keyword\";s:5:\"pages\";s:12:\"user_role_id\";s:1:\"1\";}i:9;a:2:{s:7:\"keyword\";s:9:\"inquiries\";s:12:\"user_role_id\";s:1:\"1\";}}'),
(2, 'Editor', 'a:3:{i:0;a:2:{s:7:\"keyword\";s:9:\"dashboard\";s:12:\"user_role_id\";s:1:\"2\";}i:1;a:2:{s:7:\"keyword\";s:5:\"users\";s:12:\"user_role_id\";s:1:\"2\";}i:2;a:2:{s:7:\"keyword\";s:4:\"blog\";s:12:\"user_role_id\";s:1:\"2\";}}'),
(3, 'User', ''),
(4, 'Visitor', 'a:8:{i:0;a:2:{s:7:\"keyword\";s:0:\"\";s:12:\"user_role_id\";s:1:\"4\";}i:1;a:2:{s:7:\"keyword\";s:5:\"blogs\";s:12:\"user_role_id\";s:1:\"4\";}i:2;a:2:{s:7:\"keyword\";s:14:\"healthy-living\";s:12:\"user_role_id\";s:1:\"4\";}i:3;a:2:{s:7:\"keyword\";s:6:\"travel\";s:12:\"user_role_id\";s:1:\"4\";}i:4;a:2:{s:7:\"keyword\";s:8:\"politics\";s:12:\"user_role_id\";s:1:\"4\";}i:5;a:2:{s:7:\"keyword\";s:17:\"advertise-with-us\";s:12:\"user_role_id\";s:1:\"4\";}i:6;a:2:{s:7:\"keyword\";s:8:\"about-us\";s:12:\"user_role_id\";s:1:\"4\";}i:7;a:2:{s:7:\"keyword\";s:10:\"world-news\";s:12:\"user_role_id\";s:1:\"4\";}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
