-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 06:32 PM
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
-- Database: `cuoi_ky`
--
CREATE DATABASE IF NOT EXISTS `cuoi_ky` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cuoi_ky`;

-- --------------------------------------------------------

--
-- Table structure for table `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id_binh_luan` int(11) NOT NULL,
  `id_phim` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `noi_dung` text NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `binh_luan`
--

INSERT INTO `binh_luan` (`id_binh_luan`, `id_phim`, `id_user`, `noi_dung`, `rate`) VALUES
(1, 1, 1, 'Superhero extravaganza! Spider-Man NWH didn\'t meet my expectations, it exceeded them. The most emotionally resonant MCU film so far. This movie is worth every excruciating moment we had to wait. The visuals, the score, the emotions, the story, and ofc the fan-service. This film understands spider-man fans like no other spider-man film before it. Truly a celebration of the most beloved character in the best way possible!', 9),
(2, 1, 2, 'They did it! A Spider-Man trilogy finally stuck the landing! Spider-Man: No Way Home is an impressive culmination of the films that came before it, with an engaging storyline, exciting action, laugh out loud moments, and dramatic consequences. The beginning climb is a little slow, but it\'s an exhilarating ride once things get swinging. I don\'t exactly know how this movie will hold up after multiple viewings, as there are some plot points that don\'t quite make sense when you start to think about them, but I thoroughly enjoyed myself this first time.', 8),
(3, 1, 3, 'I\'m unsure of why this has received a high IMDb rating. It\'s rubbish and slow and nonsensical. Instead this film rakes in all past cast members for some obscure reminiscent feelgood film. Trash at its Hollywood best. You\'ve been warned.', 1),
(4, 2, 1, 'I saw in RPX which is great way to see most movies kinda helped this but sill mediocre. To me only a little bit is great like the action, humor is still great, and the music is awesome in several parts! The flaws really stood out maybe more bearable for others but the acting is worse, the entire vibe of part 1 was so much better especially the Billy Batson buildup where as this he\'s basically a god but with worse acting and a lot more of the characters are annoying like the villains are all over the place. Some of the humor was great other times its awkward mostly a lot of the acting is really bad unlike part 1 where so much of it was really good. The heroic vibe is worthy greatness above everything else, I wanted to like more but a rare occasion for me I didn\'t like a lot of it and I\'m sure financially it\'ll not do to well like other DC films; I\'m sorry for my review regardless of anything!', 4),
(5, 2, 2, 'Okay, so it is almost as bad as Wonder Woman 1984. Which is still pretty bad. The best thing to do is wait for this to come out on TV if you really want to watch it. You will just be upset if you pay money to watch this. The story is dumb, the action is rushed, the actors look bored (at least the ones who knows how to act. ) If you work for DC and you are reading this review, please just reboot this mess. Reboot DC and just use \"The Batman\" movie as your jumping off point. All the DC fans around the world are sick of taking an L to the Marvel cinematic universe. This trash is just hurting all the rest of the universe.', 2),
(6, 3, 3, 'Half of the movie is what we have already seen, the other half is the first two episodes of the new season, there was no action like mugen train movie, weird decision to put this up at the movie theatres. I was expecting much more as a die hard fan, I forced my friends to go see it with me and we were all left confused. It was very disappointing. I wouldn\'t recommend it to anyone, just wait for the second season to come out and binge watch it, you won\'t miss anything from going to this movie, everything is used in regular episodes and there is no action, just a recap and post fight stuff, all talk.', 5),
(7, 3, 1, 'A lot of you dislike about the movie because it\'s mostly recap and poorly edited together. Yes, that is true, but holy the new episode makes up for it. The cgi animation completely blows every other anime out of the water. The camera controls and large scale shots were immaculate, and the comedy afterwards was great too. And some of you may say it\'s bad because there were no action scenes, but I think it would be weird to expect another fight right after the last season ended. So overall, this is a great movie, but it should have been edited together more seamlessly. I did find sitting through credits 2 times midway through the movie a bit weird.', 8),
(8, 4, 2, 'I just found this anime on Tik Tok the other day and thought nothing of it, just to be surprised by the BEST introduction to Character and the series in the entire world of cinematic masterpieces. Not only could they create a binding between the viewer and the characters in a short time of an hour, they put you through a whole roller coaster of emotions. I don\'t want to spoil anything, but if you want to watch this series, then be prepared for EVERYTHING. I personally wished, I wouldn\'t have been spoiled and that I could watch this episode again like I did the first time, because it was just so unbelievable good.', 10),
(9, 4, 3, 'I can\'t think how should I explain it but it has everything of everything it is loving, entertaining, eye opening, lil bit of shonen vibes, daily life, slice of life, thriller, mystery, it also depicts the reality of the entertainment industry and how idols are made and what problems they face. I have how everything is show so smoothly I never felt bored even for a second as if I was hooked to it and there is also about how peaceful are babies life. The whole episode had a meaning means even though in the middle we forget about what the story is and get engaged in other stuff but the end really pulls us back and shows us the big picture.', 9),
(10, 5, 1, 'Being new to this Anime genre, I am amazed by the artwork, uniqueness of characters & fantastic world. Of course my favourite is Tanjiro - just pure good soul in dark world. Awesomeness.', 10),
(11, 5, 3, 'I just finished the second season of this so called \"Masterpiece.\" I wanted to give it up after four episodes but my friend insisted it would get better.. I took his word for it.. It didn\'t get any better. Just random stuff with cheesy dialogue, characters screaming and going crazy over absolutely nothing.. Only thing good about it is the visuals.. I will truly never understand anime fans.', 6),
(12, 6, 1, 'I read the manga so I knew what would happen but seeing it animated just brought another level of heartbreak to me. With the amazing animation and background music, I was engrossed in this movie. Also, the final fight scene between Rengoku and the Upper Rank Three demon was probably one of the best fight scenes I\'ve watched so far. Granted, I haven\'t watched many fight scenes. Still, it was such a pleasure to watch.', 10),
(13, 6, 3, 'This movie isn\'t enjoyable if you are not already watching the enemy. It is not a bad movie but if you want to enjoy it go watch the enemy first.', 6),
(14, 7, 2, 'I don\'t know why they made this movie, they cut some really important scenes and just let the action scenes.\r\n\r\nIt\'s way better to watch the TV series, and cut a lot of the story that demon slayer already don\'t have much.', 5),
(15, 7, 3, 'I\'m my opinion Demon Slayer is better in the movies, they cut all the unnecessary scenes and let only the best part. But my biggest issue whit This show is the main characters they are very unilaterally just funny and kinda dumb.\r\n\r\nBut it\'s very cool.', 5),
(16, 8, 1, 'no cap!', 6),
(17, 9, 2, 'By now you know what to expect from a John Wick movie. I thought the franchise was losing a little momentum in chapter 3 so I was worried this could be disappointing. It\'s not. It\'s even more on steroids than any Wick before! Even close to 3 hours it doesn\'t feel to long which is very special for a action movie. This franchise has set new standards. If anybody says a movie is good like John Wick, it better f\'n be! The set pieces as everyone mentioned before are really insane this time. The Tokyo sceney with illuminated cherry blossoms was beautiful. The only super illogical thing that bothered me was that nobody flinched at the nightclub, eventually they did but after a whole 10 minute beatdown through the whole club, but then again it\'s a shady nightclub for high table people. If you liked the first three movies, get your ass to the cinema. Yeah.', 9),
(18, 9, 3, 'Indiana jones, terminator, predator, Jurassic park, the matrix, Jason bourne, etc. All amazing franchises but all share a common trait of having a bad or forgettable movie or 2 at some point. This is why john wick is the best action action movie franchise of all time; The movies just keep getting better and better. In john wick 4, when the action starts in Osaka Japan, it never let\'s up despite it\'s almost 3 hour running time. What I really enjoyed the most about JW4 is the cast of characters. Great villains and allies really keep this movie interesting as john trots the globe for 3 hours. The sound engineering, editing, direction, cinematography are excellent as always. The color schemes throughout this franchise (more john wick 2, 3 and especially 4) are such a treat for the eyeballs. Best action franchise EVER. And the shotgun fight in Paris with the \"dragons breath\" is the best action sequence I\'ve probably ever seen in my life.', 10),
(19, 10, 2, 'There is a reason Aristotle placed \"spectacle\" last behind plot, character, etc., in the elements of drama. This movie is nothing but empty spectacle and cliched thought. A literal trope fest. BUT THE DIALOG! Jeez? A few humans stay on the planet after the previous incursion, and a few years later, the entire native culture speaks, thinks, and behaves like US high-schoolers. Isn\'t part of settler colonism inflicting foreign culture on the natives? Who would have thought that foreign culture would be American high-school attitudes. It was a struggle to make it to the end. I had to keep fast forwarding through painful dialog scenes.', 3),
(20, 10, 3, 'There is not much to say about Avatar 2. The story is banal and fits on a cinema ticket. This time it is set in water, as the title suggests. Those who have seen part 1 don\'t necessarily have to watch this again, it\'s almost the same film only with children. Things like this rarely go well, we remember The Mummy ( from 1999). I\'m not really looking forward to part 3 at all, because part 2 set the bar so low. It\'s an underwater documentary with a few explosions and the usual drama-inducing scenes as the standard Hollywood film script dictates. If you haven\'t succumbed to the schmaltzy-looking CGI adventure after 1h, you might want to pop back in Terminator 2, a much better action film and even with a plot that really moves forward based on Part1.', 3),
(21, 11, 1, 'As a huge fan of the first one, and almost as big a fan of the second one, I decided to go all out and see this one in 3D with the 4DX motion and sensory seats. What a let down; sure, sitting in the nicest seats for the best visual, motion and sensory experience was great, but I felt like I was watching a Looney Tunes story, instead of any type of story that is part, or compliments the MCU timeline. This was literally one of Marvel\'s dullest and most unnecessary movies to date. The entire story was cliched and predictable, and there was more CGI than there was any type of interesting story, let alone one with any substance. Even the normally awesome and hilarious humor in the previous installments was absent in this one. Almost the entire film is taking place inside a CGI story, so there was no need for any movie sets or locations... this was all green-screen nonsense. It\'s a very generous 6/10 from me, only because I still enjoyed the fun ride in my upgraded seats, although the money spent would\'ve been more fun at an amusement park.', 6),
(22, 11, 3, 'New Ant-Man is not a bad movie, but it\'s repeating current trend that been plaguing new Marvel productions. Main character is just an excuse to introduce few new characters that are definitely going to have their own stories. That makes Paul Rudd\'s character less important. You don\'t feel that this is his story. He is just there. And the story is not even that good. You can feel the lack of great characters from previous movies. They were setting the tone of story and we don\'t even know what happened to them after previous movie. It\'s hard to believe that the director is the same person who made two prior movies. Adding Kang definitely made this into Kang movie that have Ant-Man in it.', 3),
(23, 12, 2, 'I\'m feeling so heartbroken to see everyone criticising my favourite show of all time. And yes of course that\'s because of the bad making of the season finale, I can totally understand that. After all these years hardwork, creating and developing each and every character from bottom to top, memories, emotions throughout the process all went to vain for one bad making. It\'s so painful to accept it for the audience who invested lots of time watching the show from the starting and then finishing it like this! It\'s a long long journey. I don\'t even remember the day I started watching it and since then I waited the next year to come for the new season. I can\'t say anything more. Only one last request, could you please delete the whole season 8 and make a new version of it? Please?', 10),
(24, 12, 3, 'This is the first series i would recommend to anybody , it is an amazing piece of work , the most stunning TV series you will ever watch. Why i gave it 9/10 because of the last season, it\'s still good but very disappointing compared to all the seasons. YOU will enjoy every episode', 9),
(25, 13, 1, 'Avengers infinity war is an emotional roller coaster. Using the strength of its powerful and interesting villain, the movie successfully brings together the past 10 years of Marvel movies into a largely effective cocktail of super-heroic dramatics. Joe and Anthony Russo create a superhero movie that it\'s every bit the epic that it needs to be. However prepared you feel, you are not ready for Thanos. Infinity war is stunning, hilarious and heartbreaking.', 9),
(26, 13, 3, 'Infinity war seemed much better than endgame to be honest.', 10),
(27, 14, 3, 'I\'m 44 and don\'t remember another show that was overrated as much as this is!! Based on its IMDB rating, I was under the impression that Last of Us is the next thing and I waited for weeks in order to watch the entire season. What I got in return was that another post-apocalyptic journey that was artificially extended just to tell a story which basically can be told merely in 2 episodes! I could notice nothing original, nothing untold or not done in the whole season! There are many shows streaming now that are -I\'m not exaggerating- at least twice as better than this show. What a disappointment and letdown!', 6),
(28, 15, 1, 'A love at first sight, seeking past, fifty thousand people used to live here now it\'s a ghost town, unlikely villain, phenomenon driven mystery, parkour, a race against time and chance, past meet future, today\'s sacrifice tomorrow\'s keep, great humor timing, strong voice acting, magical, captivating visual art animation & a music to fall in love, with nostalgia sure to hit a Makoto Shinkai\'s masterpiece ! When I left the theater I feel like wanting more I regretted for not having watch Kimi no Nawa and Weathering with you on cinema but not this time and I am so glad I captured this one. Ittekimasu Itterasshai.', 9),
(29, 16, 2, 'This film is an emotional rollercoaster with some of the coolest superhero plot lines ever drawn up. It\'s straight up the most epic Marvel film that will probably ever be created. I don\'t see how Marvel could ever top this, but getting to see these characters all together at least one last time was a reward all on its own.', 10),
(30, 16, 3, 'After watching Infinity war, I was looking forward to much more this time, still a perfect ending.', 10),
(31, 17, 3, 'I\'m a fan of the John Wick films. The action sequences are of the highest order and there is quite a bit that feels unique in each action scene. By half way through JW3I started to long for a plot line or a human relationship. There needs to be more to a movie than just fighting.', 6),
(32, 17, 1, 'Another significant increase in body count contribution, not including the injured and\\or maimed, as John inserts his wickedness into the flesh and bones of those whose aim is unworthy of their role in organised crime, either that, or they\'ve never handled a weapon or are visually impaired or only shoot blanks or all three.', 7),
(33, 18, 1, 'The first 4 seasons were genuinely great! Mostly interesting characters with depth and good archs. Season 5 was okay but became a bit messy. Following seasons became a who\' who of human stockpiles. Way too many characters, descisions that made no sense, blurry storylines and no character development.', 5),
(34, 18, 2, 'Prepare for each season to be worse than the last.', 4),
(35, 19, 2, 'A beautiful movie for me, the best movies from Studio Ghibli, the drawing, animation and animation were great, the story of the film was good, I recommend watching it', 7),
(36, 19, 3, 'One of the best movies I\'ve ever watched and is still stuck with me til this day.', 10),
(37, 20, 1, '\"Spider-Man: Far from Home\" is a typical film for youngsters or fans of Marvel, CGI and explosions. The storyline is silly, the screenplay is not as funny as the writer intended to be and the hero is annoying. Anyway entertains if the viewer has lower expectation and does not have a better option. The cliffhanger in the credits is one of the best scenes. My vote is six.\r\n', 6),
(38, 21, 3, 'I really Enjoyed this, highly Entertaining sequel and a satisfying continuation of the Marvel Cinematic Universe.', 8),
(104, 20, 2, 'Phim này hay, rate phim này 6/10', 6);

-- --------------------------------------------------------

--
-- Table structure for table `danhsach_phim`
--

CREATE TABLE `danhsach_phim` (
  `ID` int(11) NOT NULL,
  `de_muc` text NOT NULL,
  `ten_phim` text NOT NULL,
  `ma_quoc_gia` int(11) DEFAULT NULL,
  `nam_phat_hanh` varchar(50) NOT NULL,
  `thoi_luong` varchar(50) NOT NULL,
  `the_loai` text NOT NULL,
  `dien_vien` text NOT NULL,
  `chi_tiet` text DEFAULT NULL,
  `trailer` text NOT NULL,
  `rate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhsach_phim`
--

INSERT INTO `danhsach_phim` (`ID`, `de_muc`, `ten_phim`, `ma_quoc_gia`, `nam_phat_hanh`, `thoi_luong`, `the_loai`, `dien_vien`, `chi_tiet`, `trailer`, `rate`) VALUES
(1, 'chieu_rap,phim_le', 'Người Nhện: Không Nhà', 239, '2021', '120', 'Hành động,Giật gân,Siêu anh hùng,Viễn tưởng,Phiêu lưu', 'Tom Holland,Tobey Maguire,Andrew Garfield', 'Danh tính bí mật của Peter Parker được tiết lộ cho toàn thế giới. Tuyệt vọng được giúp đỡ, Peter tìm đến Doctor Strange để khiến thế giới quên rằng anh ta là Người Nhện. Câu thần chú sai lầm khủng khiếp và phá vỡ đa vũ trụ, mang đến những kẻ hung ác quái dị có thể hủy diệt thế giới.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/JfVOs4VSpmA\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '8.2'),
(2, 'chieu_rap,phim_le', 'Shazam! Cơn thịnh nộ của các vị thần', 239, '2023', '130', 'Hành động,Phiêu lưu,Hài,Viễn tưởng,Kỳ ảo,Siêu anh hùng,Tội phạm,Giật gân', 'Zachary Levi,Asher Angel,Jack Dylan Grazer', 'Bộ phim tiếp tục câu chuyện về cậu thiếu niên Billy Batson, khi đọc thuộc lòng từ ma thuật \'SHAZAM!\' được biến thành Siêu anh hùng thay thế bản ngã trưởng thành của anh ấy, Shazam.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/AIc671o9yCI\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '6.1'),
(3, 'phim_bo,truyen_hinh', 'Thanh gươm diệt quỷ: Làng thợ rèn', 112, '2023', '23', 'Anime,Hành động,Siêu nhiên,Kỳ ảo,Phiêu lưu', 'Hanae Natsuki,Kitou Akari', 'Tất cả các Thượng Huyền tập hợp tại Vô Hạn Thành sau thất bại của Thượng Huyền Lục.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/PUeB0qbisq0\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '6.6'),
(4, 'phim_bo,truyen_hinh', 'Oshi no Ko', 112, '2023', '23', 'Kịch,Giả tưởng,Tâm lý,Lãng mạn,Đời thường', 'Rie Takahashi,Takeo Ootsuka,Yurie Igoma', 'Một bác sĩ và bệnh nhân vừa qua đời của anh ta được tái sinh thành anh em sinh đôi với một thần tượng âm nhạc nổi tiếng của Nhật Bản và trải qua những thăng trầm của ngành công nghiệp giải trí Nhật Bản khi họ lớn lên cùng nhau trong suốt cuộc đời.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/zntY4A4GPU0\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '9.0'),
(5, 'phim_bo,truyen_hinh', 'Thanh gươm diệt quỷ', 112, '2022', '23', 'Anime,Hành động,Phiêu lưu,Kì ảo', 'Hanae Natsuki,Kitou Akari', 'Một gia đình bị quỷ tấn công và chỉ có hai thành viên sống sót - Tanjiro và em gái Nezuko, người đang dần biến thành quỷ. Tanjiro bắt đầu trở thành một thành viên của Sát Quỷ Đoàn để trả thù cho gia đình và chữa trị cho em gái mình.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/VQGCKyvzIM4\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '8.7'),
(6, 'chieu_rap,phim_le,phim_bo', 'Thanh gươm diệt quỷ: Chuyến tàu vô tận', 112, '2022', '23 ', 'Anime,Hành động,Phiêu lưu,Kỳ ảo', 'Hanae Natsuki,Kitou Akari', 'Sau khi gia đình anh bị sát hại dã man và em gái anh biến thành quỷ, hành trình giết quỷ của Tanjiro Kamado bắt đầu. Tanjiro và các đồng đội của mình bắt tay vào một nhiệm vụ mới trên tàu Mugen, trên con đường tuyệt vọng.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/ATJYac_dORw\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '8.2'),
(7, 'phim_bo,truyen_hinh', 'Thanh gươm diệt quỷ: Kĩ viện trấn', 112, '2021', '23', 'Anime,Hành động,Phiêu lưu,Kỳ ảo', 'Hanae Natsuki,Kitou Akari', 'Tanjiro mạo hiểm đến phía nam-đông nam, nơi anh gặp một chàng trai trẻ hèn nhát tên là Zenitsu Agatsuma. Anh ta là một người sống sót từ Lựa chọn cuối cùng và con chim sẻ của anh ta yêu cầu Tanjiro giúp anh ta xếp hàng.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/Jd_B6ox3qGc\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '8.9'),
(8, 'truyen_hinh', 'Thanh gươm diệt quỷ đặc biệt', 112, '2023', '4', 'Hài', 'Hanae Natsuki,Kitou Akari', 'Ngoại truyện kể về việc Zenitsu và Tanjirou đi xin lời khuyên các giáo viên để được nhận sô-cô-la trong ngày Valentine.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/dQw4w9WgXcQ\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '6.8'),
(9, 'chieu_rap,truyen_hinh,phim_le', 'John Wick: Phần 4', 239, '2023', '169', 'Hành động,Tội phạm,Giật gân', 'Keanu Reeves,Laurence Fishburne,George Georgiou', 'John Wick khám phá ra con đường đánh bại The High Table. Nhưng trước khi có thể giành được tự do, Bấc phải đối mặt với một kẻ thù mới với các liên minh hùng mạnh trên toàn cầu và các thế lực biến bạn cũ thành kẻ thù.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/qEVUtrk8_B4\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '8.2'),
(10, 'chieu_rap,phim_le', 'Avatar: Dòng chảy của nước', 239, '2022', '192', 'Hành động,Giật gân,Kịch,Kỳ ảo,Phiêu lưu,Viễn tưởng', 'Sam Worthington,Zoe Saldana,Sigourney Weaver', 'Jake Sully sống với gia đình mới tìm thấy của mình được hình thành trên mặt trăng ngoài hệ mặt trời Pandora. Khi một mối đe dọa quen thuộc quay trở lại để kết thúc những gì đã bắt đầu trước đó, Jake phải hợp tác với Neytiri và đội quân của chủng tộc Na\'vi để bảo vệ ngôi nhà của họ.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/d9MyW72ELq0\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '7.7'),
(11, 'chieu_rap', 'Người Kiến và Chiến binh Ong: Thế giới Lượng tử', 14, '2023', '125', 'Hành động,Viễn tưởng,Hài,Thần bí,Siêu anh hùng,Kỳ ảo,Phiêu lưu,Giật gân', 'Kathryn Newton,Jonathan Majors,Michelle Pfeiffer', 'Scott Lang và Hope Van Dyne bị kéo vào Vương quốc lượng tử, cùng với cha mẹ của Hope và con gái của Scott là Cassie. Họ phải cùng nhau tìm cách trốn thoát, nhưng mẹ của Hope đang che giấu bí mật gì? Và Kang bí ẩn là ai?', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/ZlNFpri-Y40\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '6.3'),
(12, 'phim_bo,truyen_hinh', 'Trò chơi vương quyền', 239, '2011', '73', 'Hành động,Phiêu lưu,Viễn tưởng,Kịch,Bi kịch,Trung cổ,Giật gân,Kỳ ảo', 'Emilia Clarke,Pedro Pascal,Bella Ramsey', 'Chín gia đình quý tộc chiến đấu để kiểm soát vùng đất Westeros, trong khi một kẻ thù cổ xưa trở lại sau khi không hoạt động trong nhiều thiên niên kỷ.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/KPLWWIOCOOQ\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '9.2'),
(13, 'chieu_rap,phim_le', 'Avengers: Cuộc chiến vô cực', 239, '2018', '149', 'Hành động,Kỳ ảo,Siêu anh hùng,Viễn tưởng,Phiêu lưu', 'Robert Downey,Josh Brolin,Scarlett Johansson', 'Các Avengers và đồng minh của họ phải sẵn sàng hy sinh tất cả trong nỗ lực đánh bại Thanos mạnh mẽ trước khi sự tàn phá và hủy hoại chớp nhoáng của hắn đặt dấu chấm hết cho vũ trụ.', '<iframe width=\"1280\" height=\"532\" src=\"https://www.youtube.com/embed/6ZfuNTqbHE8\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '8.4'),
(14, 'phim_bo,truyen_hinh', 'The Last of Us', 239, '2021', '9', 'Hành động,Phiêu lưu,Kinh dị', 'Pedro Pascal,Bella Ramsey,Ashley Johnson', 'Sau khi một đại dịch toàn cầu phá hủy nền văn minh, một người sống sót cứng rắn chịu trách nhiệm về một cô gái 14 tuổi, người có thể là hy vọng cuối cùng của nhân loại.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/uLtkt8BonwM\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '8.8'),
(15, 'chieu_rap,phim_bo', 'Suzume no Tojimari', 112, '2022', '122', 'Anime,Phiêu lưu,Kỳ ảo,Viễn tưởng', 'Nanoka Hara,Hokuto Matsumura,Kana Hanazawa', 'Một câu chuyện phiêu lưu hành động hiện đại, nơi một cô gái 17 tuổi tên là Suzume giúp một chàng trai trẻ bí ẩn đóng cửa từ phía bên kia đang phát hành thảm họa trên khắp Nhật Bản.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/5pTcio2hTSw\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '7.8'),
(16, 'chieu_rap,phim_le', 'Avengers: Hồi kết', 239, '2019', '181', 'Hành động,Kỳ ảo,Siêu anh hùng,Viễn tưởng,Phiêu lưu', 'Robert Downey,Scarlett Johansson,Chris Evans', 'Sau những sự kiện tàn khốc của Avengers: Infinity War (2018), vũ trụ đang bị hủy hoại. Với sự giúp đỡ của các đồng minh còn lại, các Avengers tập hợp lại một lần nữa để đảo ngược hành động của Thanos và khôi phục lại sự cân bằng cho vũ trụ.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/TcMBFSGVi1c\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '8.4'),
(17, 'chieu_rap,phim_le', 'John Wick: Phần 3', 239, '2019', '130', 'Hành động,Giật gân,Tội phạm', 'Keanu Reeves,Laurence Fishburne,Halle Berry', 'John Wick đang chạy trốn sau khi giết một thành viên của hội sát thủ quốc tế, và với mức giá 14 triệu đô la trên đầu, anh ta là mục tiêu của những người đàn ông và phụ nữ bị sát hại ở khắp mọi nơi.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/M7XM597XO94\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '7.4'),
(18, 'phim_bo,truyen_hinh', 'The Walking Dead', 239, '2010', '177', 'Kinh dị,Tận thế,Viễn tưởng,Kịch,Giật gân', 'Norman Reedus,Andrew Lincoln,Melissa McBride', 'Phó cảnh sát trưởng Rick Grimes tỉnh dậy sau cơn hôn mê và biết thế giới đang bị hủy hoại và phải dẫn đầu một nhóm người sống sót để sống sót.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/sfAc2U20uyg\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '8.1'),
(19, 'chieu_rap,truyen_hinh', 'Vùng đất linh hồn', 112, '2001', '125', 'Anime,Kỳ ảo,Thần bí,Phiêu lưu', 'Rumi Hiiragi,Daveigh Chase,Mari Natsuki', 'Trong thời gian gia đình chuyển đến vùng ngoại ô, một cô bé 10 tuổi ủ rũ lang thang vào một thế giới được cai trị bởi các vị thần, phù thủy và linh hồn, một thế giới nơi con người bị biến thành quái thú.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/ByXuk9QqQkk\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '8.6'),
(20, 'chieu_rap,phim_le', 'Người Nhện: Về Nhà', 239, '2017', '133', 'Hành động,Phiêu lưu,Hài,Kỳ ảo,Siêu anh hùng,Viễn tưởng', 'Tom Holland,Zendaya,Robert Downey', 'Peter Parker cân bằng cuộc sống của mình khi còn là một học sinh trung học bình thường ở Queens với bản ngã thay thế siêu anh hùng Người Nhện, và thấy mình đang đi theo dấu vết của một mối đe dọa mới rình mò bầu trời thành phố New York.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/rk-dF1lIbIg\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '7.4'),
(21, 'chieu_rap,phim_le', 'Người Nhện: Xa Nhà', 239, '2019', '129', 'Hành động,Hài,Siêu anh hùng,Viễn tưởng', 'Tom Holland,Zendaya,Jake Gyllenhaal', 'Sau các sự kiện của Avengers: Endgame (2019), Người Nhện phải bước lên để đối mặt với những mối đe dọa mới trong một thế giới đã thay đổi mãi mãi.', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/Nt9L1jCKGnE\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '7.4'),
(22, 'phim_le,chieu_rap', 'Captain America: Nội chiến siêu anh hùng', 239, '2016', '147', 'Hành động,Giật gân,Siêu anh hùng,Viễn tưởng, Phiêu lưu', 'Chris Evans,Robert Downey,Scarlett Johansson', 'Sự tham gia chính trị vào các vấn đề của Avengers gây ra rạn nứt giữa Captain America và Iron Man.', '<iframe width=\"1280\" height=\"532\" src=\"https://www.youtube.com/embed/dKrVegVI0Us\" title=\"PHIM KHONG HAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '7.8');

-- --------------------------------------------------------

--
-- Table structure for table `dien_vien`
--

CREATE TABLE `dien_vien` (
  `ID` int(11) NOT NULL,
  `ten_dien_vien` text NOT NULL,
  `anh_dien_vien` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dien_vien`
--

INSERT INTO `dien_vien` (`ID`, `ten_dien_vien`, `anh_dien_vien`) VALUES
(1, 'Diễn viên', 'https://atlasfamilyhealthcenter.com/wp-content/uploads/2017/12/blank-avatar.png'),
(2, 'Zachary Levi', 'https://flxt.tmsimg.com/assets/272823_v9_bb.jpg'),
(3, 'Rie Takahashi ', 'https://static.tvtropes.org/pmwiki/pub/images/takahashi_rie.jpg'),
(4, 'Hanae Natsuki', 'https://m.media-amazon.com/images/M/MV5BNDYxNGM5MDktMGRjOC00ZTRlLTllNDgtMDkyMTUzZWQ4Y2U3XkEyXkFqcGdeQXVyNDQxNjcxNQ@@._V1_.jpg'),
(5, 'Kitou Akari', 'https://static.wikia.nocookie.net/residentevil/images/1/13/Akari_Kito_Profile.jpg/revision/latest?cb=20230307084540'),
(6, 'Tom Holland', 'https://flxt.tmsimg.com/assets/733885_v9_bb.jpg'),
(7, 'Keanu Reeves', 'https://m.media-amazon.com/images/M/MV5BNGJmMWEzOGQtMWZkNS00MGNiLTk5NGEtYzg1YzAyZTgzZTZmXkEyXkFqcGdeQXVyMTE1MTYxNDAw._V1_.jpg'),
(8, 'Laurence Fishburne', 'https://m.media-amazon.com/images/M/MV5BMTc0NjczNDc1MV5BMl5BanBnXkFtZTYwMDU0Mjg1._V1_FMjpg_UX1000_.jpg'),
(9, 'George Georgiou', 'https://m.media-amazon.com/images/M/MV5BYTZhY2JmYjMtZTMxOS00YTFkLTlmMWQtNTZlMGEwNmNjOWIxXkEyXkFqcGdeQXVyMTUwNTI4NzE@._V1_.jpg'),
(10, 'Sam Worthington', 'https://m.media-amazon.com/images/M/MV5BZWUwNmEwZTUtYzMxMS00ODg5LTlmYjItMGU4ZjNmN2Q1NjkwXkEyXkFqcGdeQXVyMTM1MjAxMDc3._V1_.jpg'),
(11, 'Zoe Saldana', 'https://m.media-amazon.com/images/M/MV5BMGNhNzdlMTAtZGE2NS00MmU5LWIzNmYtMjVlNThiNmU1ZWY4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg'),
(12, 'Sigourney Weaver', 'https://m.media-amazon.com/images/M/MV5BMTk1MTcyNTE3OV5BMl5BanBnXkFtZTcwMTA0MTMyMw@@._V1_.jpg'),
(13, 'Kathryn Newton', 'https://m.media-amazon.com/images/M/MV5BMDM5YjI2NDItYWY1My00ZmUyLTgyZjMtOGQzMmEyNjk0ODU5XkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_FMjpg_UX1000_.jpg'),
(14, 'Jonathan Majors', 'https://m.media-amazon.com/images/M/MV5BYTQ0ZDkzZmYtYzAzZC00YTUwLWJhZmEtZGRjZTQyYWUwYWI0XkEyXkFqcGdeQXVyMjU2Nzg3NzM@._V1_.jpg'),
(15, 'Michelle Pfeiffer', 'https://m.media-amazon.com/images/M/MV5BMTUzNjI0Njc5NF5BMl5BanBnXkFtZTYwOTM2MjYz._V1_FMjpg_UX1000_.jpg'),
(16, 'Emilia Clarke', 'https://m.media-amazon.com/images/M/MV5BNjg3OTg4MDczMl5BMl5BanBnXkFtZTgwODc0NzUwNjE@._V1_.jpg'),
(17, 'Pedro Pascal', 'https://m.media-amazon.com/images/M/MV5BMGNlYTVlYTMtMjRhMC00YjY5LTkwMzMtZDE4MWQzMzgwYmUzXkEyXkFqcGdeQXVyMjI0OTExNzk@._V1_FMjpg_UX1000_.jpg'),
(18, 'Bella Ramsey', 'https://m.media-amazon.com/images/M/MV5BMWJkZWEyMWYtYWI1MS00ZTY0LTg2MTAtYjUzMWIwZDhjNmViXkEyXkFqcGdeQXVyNzI5MjUxNjE@._V1_FMjpg_UX1000_.jpg'),
(19, 'Zendaya', 'https://m.media-amazon.com/images/M/MV5BMjAxZTk4NDAtYjI3Mi00OTk3LTg0NDEtNWFlNzE5NDM5MWM1XkEyXkFqcGdeQXVyOTI3MjYwOQ@@._V1_.jpg'),
(20, 'Jake Gyllenhaal', 'https://m.media-amazon.com/images/M/MV5BNjA0MTU2NDY3MF5BMl5BanBnXkFtZTgwNDU4ODkzMzE@._V1_.jpg'),
(21, 'Asher Angel', 'https://m.media-amazon.com/images/M/MV5BNzhlMDc2NDMtMmM4MC00NWFiLTg2ZTgtMDg3MWNmNmZkOWUwXkEyXkFqcGdeQXVyNDc2MTMxOTY@._V1_FMjpg_UX1000_.jpg'),
(22, 'Jack Dylan Grazer', 'https://m.media-amazon.com/images/M/MV5BNzI3ZWRmMjUtMTcxYS00ODE1LTk0MTQtMjUzMzViZTlkYjM3XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg'),
(23, 'Robert Downey', 'https://m.media-amazon.com/images/M/MV5BNzg1MTUyNDYxOF5BMl5BanBnXkFtZTgwNTQ4MTE2MjE@._V1_.jpg'),
(24, 'Josh Brolin', 'https://m.media-amazon.com/images/M/MV5BMTQ1MzYyMjQ0Nl5BMl5BanBnXkFtZTcwMTA0ODkyMg@@._V1_FMjpg_UX1000_.jpg'),
(25, 'Scarlett Johansson', 'https://m.media-amazon.com/images/M/MV5BMTM3OTUwMDYwNl5BMl5BanBnXkFtZTcwNTUyNzc3Nw@@._V1_FMjpg_UX1000_.jpg'),
(26, 'Ashley Johnson', 'https://m.media-amazon.com/images/M/MV5BMTk3NTQxMjYxMF5BMl5BanBnXkFtZTgwMTc5MTY3OTE@._V1_.jpg'),
(27, 'Nanoka Hara', 'https://i.mydramalist.com/XD4Zx_5f.jpg'),
(28, 'Hokuto Matsumura', 'https://i.mydramalist.com/QeEQ6_5f.jpg'),
(29, 'Kana Hanazawa', 'https://m.media-amazon.com/images/M/MV5BOGNlY2VlMTUtN2VhNS00MTMzLTk2YjctODc5MjYzNjhhYmRhXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg'),
(30, 'Chris Evans', 'https://m.media-amazon.com/images/M/MV5BMTU2NTg1OTQzMF5BMl5BanBnXkFtZTcwNjIyMjkyMg@@._V1_FMjpg_UX1000_.jpg'),
(31, 'Halle Berry', 'https://m.media-amazon.com/images/M/MV5BMjIxNzc5MDAzOV5BMl5BanBnXkFtZTcwMDUxMjMxMw@@._V1_FMjpg_UX1000_.jpg'),
(32, 'Norman Reedus', 'https://m.media-amazon.com/images/M/MV5BMTQ5ODE4NTgzMl5BMl5BanBnXkFtZTcwODI0MjAwMw@@._V1_FMjpg_UX1000_.jpg'),
(33, 'Andrew Lincoln', 'https://m.media-amazon.com/images/M/MV5BMjI2NDYyNjg4NF5BMl5BanBnXkFtZTcwMjI5OTMwNA@@._V1_.jpg'),
(34, 'Melissa McBride', 'https://flxt.tmsimg.com/assets/397746_v9_bc.jpg'),
(35, 'Rumi Hiiragi', 'https://m.media-amazon.com/images/M/MV5BMjdmMzRhODYtMWI1OC00MjlmLWI3ZDktZjc4ZDlhNjQxNmY1XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg'),
(36, 'Daveigh Chase', 'https://m.media-amazon.com/images/M/MV5BMTcyMDAyMjA4NF5BMl5BanBnXkFtZTcwNjg1ODkzMg@@._V1_.jpg'),
(37, 'Mari Natsuki', 'https://www.japantimes.co.jp/wp-content/uploads/2018/02/p10-ito-mari-natsuki-a-20180225-e1519459588144.jpg'),
(38, 'Tobey Maguire', 'https://m.media-amazon.com/images/M/MV5BMTYwMTI5NTM2OF5BMl5BanBnXkFtZTcwODk3MDQ2Mg@@._V1_FMjpg_UX1000_.jpg'),
(39, 'Andrew Garfield', 'https://m.media-amazon.com/images/M/MV5BMjE2MjI2OTk1OV5BMl5BanBnXkFtZTgwNTY1NzM4MDI@._V1_.jpg'),
(40, 'Takeo Ootsuka', 'https://cdn.myanimelist.net/images/voiceactors/1/74450.jpg'),
(41, 'Yurie Igoma', 'https://www.animenewsnetwork.com/images/encyc/P224869-2043310772.1656789931.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `quoc_gia`
--

CREATE TABLE `quoc_gia` (
  `id_quocgia` int(11) NOT NULL,
  `ten_quocgia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quoc_gia`
--

INSERT INTO `quoc_gia` (`id_quocgia`, `ten_quocgia`) VALUES
(1, 'Afghanistan'),
(2, 'Quần đảo Aland'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Nam Cực'),
(10, 'Antigua và Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Châu Úc'),
(15, 'Áo'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'nước Bỉ'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bonaire, Sint Eustatius và Saba'),
(29, 'Bosnia và Herzegovina'),
(30, 'Botswana'),
(31, 'Đảo Bouvet'),
(32, 'Brazil'),
(33, 'Lãnh thổ Ấn Độ Dương thuộc Anh'),
(34, 'Vương quốc Bru-nây'),
(35, 'Bungari'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Campuchia'),
(39, 'Cameroon'),
(40, 'Canada'),
(41, 'Cape Verde'),
(42, 'Quần đảo Cayman'),
(43, 'Cộng hòa trung phi'),
(44, 'Chad'),
(45, 'Chile'),
(46, 'Trung Quốc'),
(47, 'Đảo giáng sinh'),
(48, 'Quần đảo Cocos (Keeling)'),
(49, 'Colombia'),
(50, 'Comoros'),
(51, 'Congo'),
(52, 'Congo, Cộng hòa Dân chủ Congo'),
(53, 'Quần đảo Cook'),
(54, 'Costa Rica'),
(55, 'Cote Ivoire'),
(56, 'Croatia'),
(57, 'Cuba'),
(58, 'rượu cam bì'),
(59, 'Síp'),
(60, 'Cộng hòa Séc'),
(61, 'Đan mạch'),
(62, 'Djibouti'),
(63, 'Dominica'),
(64, 'Cộng hòa Dominica'),
(65, 'Ecuador'),
(66, 'Ai cập'),
(67, 'El Salvador'),
(68, 'Equatorial Guinea'),
(69, 'Eritrea'),
(70, 'Estonia'),
(71, 'Ethiopia'),
(72, 'Quần đảo Falkland (Malvinas)'),
(73, 'Quần đảo Faroe'),
(74, 'Fiji'),
(75, 'Phần Lan'),
(76, 'Nước pháp'),
(77, 'Guiana thuộc Pháp'),
(78, 'Polynesia thuộc Pháp'),
(79, 'Lãnh thổ phía Nam của Pháp'),
(80, 'Gabon'),
(81, 'Gambia'),
(82, 'Georgia'),
(83, 'nước Đức'),
(84, 'Ghana'),
(85, 'Gibraltar'),
(86, 'Hy Lạp'),
(87, 'Greenland'),
(88, 'Grenada'),
(89, 'Guadeloupe'),
(90, 'Guam'),
(91, 'Guatemala'),
(92, 'Guernsey'),
(93, 'Guinea'),
(94, 'Guinea-Bissau'),
(95, 'Guyana'),
(96, 'Haiti'),
(97, 'Đảo Heard và Quần đảo McDonald'),
(98, 'Tòa thánh (Nhà nước thành phố Vatican)'),
(99, 'Honduras'),
(100, 'Hồng Kông'),
(101, 'Hungary'),
(102, 'Nước Iceland'),
(103, 'Ấn Độ'),
(104, 'Indonesia'),
(105, 'Iran (Cộng hòa Hồi giáo'),
(106, 'I-rắc'),
(107, 'Ireland'),
(108, 'Đảo Man'),
(109, 'Người israel'),
(110, 'Nước Ý'),
(111, 'Jamaica'),
(112, 'Nhật Bản'),
(113, 'Jersey'),
(114, 'Jordan'),
(115, 'Kazakhstan'),
(116, 'Kenya'),
(117, 'Kiribati'),
(118, 'Hàn Quốc, Cộng hòa Dân chủ Nhân dân'),
(119, 'Hàn Quốc, Cộng hòa'),
(120, 'Kosovo'),
(121, 'Kuwait'),
(122, 'Kyrgyzstan'),
(123, 'Cộng hòa Dân chủ nhân dân Lào'),
(124, 'Latvia'),
(125, 'Lebanon'),
(126, 'Lesotho'),
(127, 'Liberia'),
(128, 'Libyan Arab Jamahiriya'),
(129, 'Liechtenstein'),
(130, 'Lithuania'),
(131, 'Luxembourg'),
(132, 'Macao'),
(133, 'Macedonia, Cộng hòa Nam Tư cũ của'),
(134, 'Madagascar'),
(135, 'Malawi'),
(136, 'Malaysia'),
(137, 'Maldives'),
(138, 'Mali'),
(139, 'Malta'),
(140, 'đảo Marshall'),
(141, 'Martinique'),
(142, 'Mauritania'),
(143, 'Mauritius'),
(144, 'Mayotte'),
(145, 'Mexico'),
(146, 'Micronesia, Liên bang'),
(147, 'Moldova, Cộng hòa'),
(148, 'Monaco'),
(149, 'Mông Cổ'),
(150, 'Montenegro'),
(151, 'Montserrat'),
(152, 'Maroc'),
(153, 'Mozambique'),
(154, 'Myanmar'),
(155, 'Namibia'),
(156, 'Nauru'),
(157, 'Nepal'),
(158, 'nước Hà Lan'),
(159, 'Đảo Antilles của Hà Lan'),
(160, 'New Caledonia'),
(161, 'New Zealand'),
(162, 'Nicaragua'),
(163, 'Niger'),
(164, 'Nigeria'),
(165, 'Niue'),
(166, 'Đảo Norfolk'),
(167, 'Quần đảo Bắc Mariana'),
(168, 'Na Uy'),
(169, 'Oman'),
(170, 'Pakistan'),
(171, 'Palau'),
(172, 'Lãnh thổ Palestine, bị chiếm đóng'),
(173, 'Panama'),
(174, 'Papua New Guinea'),
(175, 'Paraguay'),
(176, 'Peru'),
(177, 'Phi-líp-pin'),
(178, 'Pitcairn'),
(179, 'Ba lan'),
(180, 'Bồ Đào Nha'),
(181, 'Puerto Rico'),
(182, 'Qatar'),
(183, 'Sum họp'),
(184, 'Romania'),
(185, 'Liên bang Nga'),
(186, 'Rwanda'),
(187, 'Saint Barthelemy'),
(188, 'Saint Helena'),
(189, 'Saint Kitts và Nevis'),
(190, 'Saint Lucia'),
(191, 'Saint martin'),
(192, 'Saint Pierre và Miquelon'),
(193, 'Saint Vincent và Grenadines'),
(194, 'Samoa'),
(195, 'San Marino'),
(196, 'Sao Tome và Principe'),
(197, 'Ả Rập Saudi'),
(198, 'Senegal'),
(199, 'Xéc-bi-a'),
(200, 'Serbia và Montenegro'),
(201, 'Seychelles'),
(202, 'Sierra Leone'),
(203, 'Singapore'),
(204, 'St Martin'),
(205, 'Xlô-va-ki-a'),
(206, 'Slovenia'),
(207, 'Quần đảo Solomon'),
(208, 'Somalia'),
(209, 'Nam Phi'),
(210, 'Nam Georgia và Quần đảo Nam Sandwich'),
(211, 'phía nam Sudan'),
(212, 'Tây ban nha'),
(213, 'Sri Lanka'),
(214, 'Sudan'),
(215, 'Suriname'),
(216, 'Svalbard và Jan Mayen'),
(217, 'Swaziland'),
(218, 'Thụy Điển'),
(219, 'Thụy sĩ'),
(220, 'Cộng Hòa Arab Syrian'),
(221, 'Đài Loan, tỉnh của Trung Quốc'),
(222, 'Tajikistan'),
(223, 'Tanzania, Cộng hòa Thống nhất'),
(224, 'nước Thái Lan'),
(225, 'Timor-Leste'),
(226, 'Đi'),
(227, 'Tokelau'),
(228, 'Tonga'),
(229, 'Trinidad và Tobago'),
(230, 'Tunisia'),
(231, 'gà tây'),
(232, 'Turkmenistan'),
(233, 'Quần đảo Turks và Caicos'),
(234, 'Tuvalu'),
(235, 'Uganda'),
(236, 'Ukraine'),
(237, 'các Tiểu Vương Quốc Ả Rập Thống Nhất'),
(238, 'Vương quốc Anh'),
(239, 'Hoa Kỳ'),
(240, 'Các đảo nhỏ xa xôi hẻo lánh của Hoa Kỳ'),
(241, 'Uruguay'),
(242, 'U-dơ-bê-ki-xtan'),
(243, 'Vanuatu'),
(244, 'Venezuela'),
(245, 'Việt Nam'),
(246, 'Quần đảo Virgin thuộc Anh'),
(247, 'Quần đảo Virgin, Hoa Kỳ'),
(248, 'Wallis và Futuna'),
(249, 'Phía tây Sahara'),
(250, 'Yemen'),
(251, 'Zambia'),
(252, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `reset_token`
--

CREATE TABLE `reset_token` (
  `id_reset_token` int(11) NOT NULL,
  `email` text NOT NULL,
  `token` text NOT NULL,
  `expire_on` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `liked_movies` text NOT NULL,
  `activated` int(11) NOT NULL,
  `activate_token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `email`, `password`, `liked_movies`, `activated`, `activate_token`) VALUES
(1, 'Thinh Tu', 'user1@gmail.com', '$2y$10$WOKW1JD0m5oX8gRaq6uzUO.KozKHpty3FKUa0TwkcHhopM7dnMxJG', '3, 2, 4,5', 1, ''),
(2, 'npc002', 'user2@gmail.com', '$2y$10$4nzFhtF/vntRfAQK3LoPEe4jxvcWWNyy6m3ZyLffXdAV6BYw9h/zi', '', 1, ''),
(3, 'ăn Dưn quá ác', 'user3@gmail.com', '$2y$10$4nzFhtF/vntRfAQK3LoPEe4jxvcWWNyy6m3ZyLffXdAV6BYw9h/zi', '', 1, ''),
(4, 'Admin', 'admin@gmail.com', '$2y$10$4nzFhtF/vntRfAQK3LoPEe4jxvcWWNyy6m3ZyLffXdAV6BYw9h/zi', '', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id_binh_luan`);

--
-- Indexes for table `danhsach_phim`
--
ALTER TABLE `danhsach_phim`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dien_vien`
--
ALTER TABLE `dien_vien`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `quoc_gia`
--
ALTER TABLE `quoc_gia`
  ADD PRIMARY KEY (`id_quocgia`);

--
-- Indexes for table `reset_token`
--
ALTER TABLE `reset_token`
  ADD PRIMARY KEY (`id_reset_token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `id_binh_luan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `danhsach_phim`
--
ALTER TABLE `danhsach_phim`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `dien_vien`
--
ALTER TABLE `dien_vien`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `quoc_gia`
--
ALTER TABLE `quoc_gia`
  MODIFY `id_quocgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `reset_token`
--
ALTER TABLE `reset_token`
  MODIFY `id_reset_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
