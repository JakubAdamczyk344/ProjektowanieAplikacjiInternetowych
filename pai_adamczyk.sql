-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Gru 2016, 19:24
-- Wersja serwera: 10.1.16-MariaDB
-- Wersja PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pai_adamczyk`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `administratorzy`
--

CREATE TABLE `administratorzy` (
  `id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `haslo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `administratorzy`
--

INSERT INTO `administratorzy` (`id`, `login`, `haslo`) VALUES
(1, 'root', 'toor');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `artykuly`
--

CREATE TABLE `artykuly` (
  `id` int(11) NOT NULL,
  `bohaterowie_id` int(11) DEFAULT NULL,
  `nazwa` varchar(150) NOT NULL,
  `tekst1` text NOT NULL,
  `tekst2` text NOT NULL,
  `tekst3` text NOT NULL,
  `podpis1` text NOT NULL,
  `podpis2` text NOT NULL,
  `img1` text NOT NULL,
  `img2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `artykuly`
--

INSERT INTO `artykuly` (`id`, `bohaterowie_id`, `nazwa`, `tekst1`, `tekst2`, `tekst3`, `podpis1`, `podpis2`, `img1`, `img2`) VALUES
(1, NULL, 'Strona Główna', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget rhoncus mi, in vestibulum lorem. Nulla urna mauris, egestas nec erat vel, tempus ullamcorper dolor. Maecenas eu mattis arcu. Aliquam dapibus quis risus eget consequat. Curabitur eu convallis urna, vitae scelerisque est. Nunc eget posuere urna. Nulla facilisi. Phasellus blandit eleifend aliquet. Curabitur porttitor pharetra pretium. Nam ac eros laoreet, consequat felis at, auctor metus.</p>', '', '', '', '', '', ''),
(2, 1, 'Sherlock Holmes', '<p>Praesent sodales felis ac magna posuere, quis sodales urna condimentum. Sed ut nisi id odio feugiat euismod id id nisl. Curabitur sit amet odio a tortor iaculis elementum. Nullam hendrerit dapibus mattis. Pellentesque interdum hendrerit nisi id sodales. Phasellus tincidunt nulla dolor, id sodales velit tristique nec. Nulla fermentum nisl et imperdiet vulputate. Ut in orci odio. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In et elit pharetra, accumsan tellus at, euismod risus. Nulla eget ipsum ac augue fermentum lacinia et id enim. Sed vel blandit eros. Donec malesuada commodo diam, eu lobortis quam blandit non. Phasellus suscipit mauris lectus, in sollicitudin arcu efficitur vel. Duis vitae volutpat odio. </p>', '<p>Etiam condimentum sed lectus at laoreet. Fusce pellentesque porta purus a venenatis. Quisque erat augue, malesuada nec ultrices vitae, consequat sed metus. Donec at ipsum viverra mauris feugiat euismod. Morbi ultrices tellus libero, et gravida tortor laoreet eget. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi auctor interdum ornare. Praesent vel urna volutpat, accumsan erat at, pharetra urna. Pellentesque egestas sodales nibh vitae sodales. Suspendisse laoreet risus neque, viverra dictum leo condimentum vitae. Sed sem diam, blandit eu vestibulum in, tempor nec lacus. Nullam lacinia commodo elit, sed euismod leo. Suspendisse porttitor sem mi, fringilla viverra diam tincidunt ut.</p>\r\n			\r\n			<p>Sed non luctus diam. Vivamus porttitor urna in libero molestie, ultrices rhoncus elit imperdiet. Nullam eros ipsum, lobortis a venenatis a, pellentesque eget sem. Sed ut quam at nulla aliquam ornare ut et tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum purus justo, posuere vitae nisl a, malesuada porta magna. Nunc posuere elementum lorem, congue vehicula mauris posuere ac. Quisque ut arcu lacus. Suspendisse id mi nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum pharetra risus non nibh suscipit vestibulum. Etiam cursus condimentum bibendum. Suspendisse feugiat velit purus, lacinia ultricies tortor rutrum et. </p>', '<p>Cras sed augue non nunc gravida blandit sit amet a ipsum. Sed aliquam eros eu erat varius, non placerat nisl tristique. Cras porttitor dui vel nibh tempus, vitae scelerisque augue aliquet. Donec quam ante, consectetur sed nulla ut, tempus porta augue. Maecenas fringilla diam nec erat pulvinar, vitae tincidunt velit blandit. Ut porttitor vestibulum urna, sed dictum enim rhoncus ac. Fusce vestibulum viverra dolor, in egestas elit lacinia in. Cras feugiat magna nec enim sagittis, vel gravida felis consequat. </p>\r\n			\r\n			<p>Ut ante ligula, ultrices eget lacus sit amet, laoreet sollicitudin felis. Aliquam varius, erat sit amet vulputate ultrices, ipsum nulla bibendum ligula, ut vehicula magna lacus ac odio. In viverra, tortor eu eleifend malesuada, orci libero viverra odio, et condimentum sem elit ut dolor. Sed pretium magna mauris, ut tempor metus posuere non. Etiam tempus sodales tincidunt. Vestibulum risus purus, dapibus at erat accumsan, ullamcorper lacinia enim. Mauris interdum, elit eu iaculis euismod, mauris augue cursus velit, euismod tempus risus enim eu sapien. Nullam ultricies finibus dolor non auctor. Donec faucibus, velit eu consequat suscipit, risus nisi ultricies neque, vel convallis ex sapien ac diam. Etiam quis porttitor massa. Aliquam aliquam dignissim fringilla. Vivamus pulvinar ligula ac iaculis vestibulum. Praesent id molestie arcu. Morbi in neque finibus, facilisis metus in, porta nisi. Sed vel erat elementum, laoreet dolor ac, tincidunt arcu. </p>', '<div class="legend">Douglas Wilmer jako Sherlock Holmes w serialu TV Sherlock Holmes z 1965 roku</div>', '<div class="legend">Robert Downey Jr. jako SherlockHolmes w filmie pod tym samym tytułem z roku 2009</div>', '<a href="../IMG/SherlockHolmes1.jpg" data-lightbox="SherlockHolmes" data-title="Douglas Wilmer jako Sherlock Holmes w serialu TV Sherlock Holmes z 1965 roku">\n				<img class="image" src="../IMG/SherlockHolmes1.jpg" alt="Douglas Wilmer jako Sherlock Holmes w serialu TV Sherlock Holmes z 1965 roku">\n			</a>', '<a href="../IMG/SherlockHolmes2.jpg" data-lightbox="SherlockHolmes" data-title="Robert Downey Jr. jako SherlockHolmes w filmie pod tym samym tytułem z roku 2009">\n				<img class="image" src="../IMG/SherlockHolmes2.jpg" alt="Robert Downey Jr. jako SherlockHolmes w filmie pod tym samym tytułem z roku 2009">\n			</a>'),
(3, 2, 'Herkules Poirot', '<p>In dui turpis, varius nec neque id, mollis cursus neque. Pellentesque eget laoreet nulla. Nam lectus ex, vehicula ut euismod et, rhoncus in lectus. Donec luctus, sapien a venenatis vulputate, sapien ante condimentum lectus, ut molestie enim velit vitae magna. Suspendisse varius neque pulvinar enim ornare, nec lobortis enim lobortis. Ut eu ex neque. Vestibulum feugiat ligula et arcu rhoncus, quis maximus mauris pellentesque. Vivamus fermentum ultrices lacus vel vulputate. Morbi ultrices dolor nulla, ac lobortis nisl vestibulum sed. Vestibulum iaculis, lectus eget condimentum sodales, lorem nulla fermentum tellus, volutpat congue lacus dolor et quam. Phasellus ac risus blandit nisi rutrum suscipit non eu mauris. Vestibulum fringilla non neque vitae vestibulum.</p>', '<p>Etiam condimentum sed lectus at laoreet. Fusce pellentesque porta purus a venenatis. Quisque erat augue, malesuada nec ultrices vitae, consequat sed metus. Donec at ipsum viverra mauris feugiat euismod. Morbi ultrices tellus libero, et gravida tortor laoreet eget. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi auctor interdum ornare. Praesent vel urna volutpat, accumsan erat at, pharetra urna. Pellentesque egestas sodales nibh vitae sodales. Suspendisse laoreet risus neque, viverra dictum leo condimentum vitae. Sed sem diam, blandit eu vestibulum in, tempor nec lacus. Nullam lacinia commodo elit, sed euismod leo. Suspendisse porttitor sem mi, fringilla viverra diam tincidunt ut.</p>\r\n			\r\n			<p>Integer sed sagittis leo. Proin posuere, turpis vel congue maximus, orci nulla pellentesque purus, id imperdiet nibh dui vel sem. Duis id magna ante. Nullam ultricies odio maximus, faucibus massa maximus, porta tellus. Donec nec ante libero. Suspendisse id orci enim. Fusce sodales hendrerit nibh sed maximus. Nunc non vehicula augue. Maecenas dapibus iaculis ligula non cursus. Maecenas iaculis massa at neque lacinia convallis. Nulla ac ultrices augue, ac ornare erat. Duis blandit fermentum ante vel tincidunt. </p>', '<p>In dui turpis, varius nec neque id, mollis cursus neque. Pellentesque eget laoreet nulla. Nam lectus ex, vehicula ut euismod et, rhoncus in lectus. Donec luctus, sapien a venenatis vulputate, sapien ante condimentum lectus, ut molestie enim velit vitae magna. Suspendisse varius neque pulvinar enim ornare, nec lobortis enim lobortis. Ut eu ex neque. Vestibulum feugiat ligula et arcu rhoncus, quis maximus mauris pellentesque. Vivamus fermentum ultrices lacus vel vulputate. Morbi ultrices dolor nulla, ac lobortis nisl vestibulum sed. Vestibulum iaculis, lectus eget condimentum sodales, lorem nulla fermentum tellus, volutpat congue lacus dolor et quam. Phasellus ac risus blandit nisi rutrum suscipit non eu mauris. Vestibulum fringilla non neque vitae vestibulum.</p>', '<div class="legend">Po prawej David Suchet - najsłynniejszy odtwórca roli Poirot. Po lewej Hugh Fraser jako Kapitan Arthur Hastings</div>', '<div class="legend">Nasz mały detektyw bywa czasem zbyt skrupulatny :)</div>', '<a href="../IMG/HerkulesPoirot1.jpg" data-lightbox="HerkulesPoirot" data-title="Po prawej David Suchet - najsłynniejszy odtwórca roli Poirot. Po lewej Hugh Fraser jako Kapitan Arthur Hastings">\r\n				<img class="image" src="../IMG/HerkulesPoirot1.jpg" alt="Po prawej David Suchet - najsłynniejszy odtwórca roli Poirot. Po lewej Hugh Fraser jako Kapitan Arthur Hastings">\r\n			</a>', '<a href="../IMG/HerkulesPoirot2.jpg" data-lightbox="HerkulesPoirot" data-title="Nasz mały detektyw bywa czasem zbyt skrupulatny :)">\r\n				<img class="image" src="../IMG/HerkulesPoirot2.jpg" alt="Nasz mały detektyw bywa czasem zbyt skrupulatny :)">\r\n			</a>'),
(4, 3, 'Stanisław Wokulski', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget rhoncus mi, in vestibulum lorem. Nulla urna mauris, egestas nec erat vel, tempus ullamcorper dolor. Maecenas eu mattis arcu. Aliquam dapibus quis risus eget consequat. Curabitur eu convallis urna, vitae scelerisque est. Nunc eget posuere urna. Nulla facilisi. Phasellus blandit eleifend aliquet. Curabitur porttitor pharetra pretium. Nam ac eros laoreet, consequat felis at, auctor metus.</p>', '<p>Etiam condimentum sed lectus at laoreet. Fusce pellentesque porta purus a venenatis. Quisque erat augue, malesuada nec ultrices vitae, consequat sed metus. Donec at ipsum viverra mauris feugiat euismod. Morbi ultrices tellus libero, et gravida tortor laoreet eget. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi auctor interdum ornare. Praesent vel urna volutpat, accumsan erat at, pharetra urna. Pellentesque egestas sodales nibh vitae sodales. Suspendisse laoreet risus neque, viverra dictum leo condimentum vitae. Sed sem diam, blandit eu vestibulum in, tempor nec lacus. Nullam lacinia commodo elit, sed euismod leo. Suspendisse porttitor sem mi, fringilla viverra diam tincidunt ut.</p>\r\n			\r\n			<p>Vivamus arcu lectus, mattis ac mattis et, tempor sit amet nisi. Mauris elementum finibus mauris vitae ultrices. Mauris ullamcorper, nisi aliquet elementum elementum, elit arcu ullamcorper eros, nec ullamcorper turpis dui quis mauris. Nulla facilisi. Ut placerat ultrices velit, a sagittis purus rutrum at. Integer ex velit, varius quis odio eu, dictum iaculis eros. Nulla facilisi. </p>', '<p>Mauris volutpat odio et nibh pellentesque venenatis. Etiam vestibulum sollicitudin mi, sed molestie ex fermentum at. Aenean lectus nibh, rhoncus in justo a, eleifend aliquet metus. Mauris eleifend enim at dolor pellentesque, nec sagittis diam interdum. Pellentesque sit amet viverra nisl. Nunc vel magna pulvinar, lobortis nulla quis, malesuada quam. Vestibulum et enim nulla. Aliquam ornare ex non elit blandit dapibus lacinia sed risus. Praesent faucibus nec nisl ac maximus. Quisque neque justo, rhoncus scelerisque tempor eu, aliquet sed felis. </p>\r\n			\r\n			<p>In dui turpis, varius nec neque id, mollis cursus neque. Pellentesque eget laoreet nulla. Nam lectus ex, vehicula ut euismod et, rhoncus in lectus. Donec luctus, sapien a venenatis vulputate, sapien ante condimentum lectus, ut molestie enim velit vitae magna. Suspendisse varius neque pulvinar enim ornare, nec lobortis enim lobortis. Ut eu ex neque. Vestibulum feugiat ligula et arcu rhoncus, quis maximus mauris pellentesque. Vivamus fermentum ultrices lacus vel vulputate. Morbi ultrices dolor nulla, ac lobortis nisl vestibulum sed. Vestibulum iaculis, lectus eget condimentum sodales, lorem nulla fermentum tellus, volutpat congue lacus dolor et quam. Phasellus ac risus blandit nisi rutrum suscipit non eu mauris. Vestibulum fringilla non neque vitae vestibulum.</p>', '<div class="legend">Mariusz Dmochowski jako Stanisław Wokulski w filmie Lalka z 1968 roku</div>', '<div class="legend">Ach ci romantycy...</div>', '<a href="../IMG/StanislawWokulski1.jpg" data-lightbox="StanislawWokulski" data-title="Mariusz Dmochowski jako Stanisław Wokulski w filmie Lalka z 1968 roku">\r\n				<img class="image" src="../IMG/StanislawWokulski1.jpg" alt="Mariusz Dmochowski jako Stanisław Wokulski w filmie Lalka z 1968 roku">\r\n			</a>', '<a href="../IMG/StanislawWokulski2.jpg" data-lightbox="StanislawWokulski" data-title="Ach ci romantycy...">\r\n				<img class="image" src="../IMG/StanislawWokulski2.jpg" alt="Ach ci romantycy...">\r\n			</a>'),
(5, 4, 'Geralt z Rivii', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam facilisis ultricies libero ut euismod. Sed neque purus, feugiat id euismod ac, condimentum id elit. Morbi vitae consectetur odio, vel congue mi. Aliquam congue justo eu sapien suscipit dapibus. Donec ut justo ac orci feugiat euismod. Sed id tortor urna. Suspendisse malesuada a diam eu efficitur. Vivamus dignissim est nec orci porta faucibus. Integer ac urna mattis, vehicula lectus at, faucibus nisl. </p>', '<p>Ut vehicula rutrum fringilla. Sed hendrerit ornare lacus id iaculis. Mauris pretium lobortis nisl a eleifend. Cras placerat, dolor sit amet laoreet tristique, nibh nulla ultricies nulla, et auctor quam enim id est. Vestibulum elementum diam sagittis massa ullamcorper laoreet id non felis. Fusce sit amet massa condimentum mauris maximus consequat. In ac tristique nisi. Ut eget rhoncus orci, ut sagittis ante. Proin quis velit est. Pellentesque non libero a diam dignissim vestibulum. Etiam fringilla scelerisque malesuada. Fusce velit justo, ultrices nec fermentum ac, tempus vitae risus. Pellentesque commodo nulla mauris, vitae bibendum risus semper ac. Aenean in purus vel eros malesuada lobortis. </p>\r\n			\r\n			<p>Pellentesque vel fringilla tortor. Phasellus auctor varius orci. Vestibulum ligula tellus, semper volutpat euismod in, mattis id lorem. Fusce sit amet sapien mattis, pretium nunc finibus, ullamcorper turpis. Fusce maximus lorem id urna elementum tempor. Mauris sit amet lorem nunc. Nam eu mi vel ligula posuere ornare facilisis sit amet lorem. Nam fringilla ut sem id placerat. Nunc sed gravida lacus. </p>', '<p>Quisque vestibulum leo commodo, cursus purus et, interdum diam. Praesent viverra egestas malesuada. Maecenas quis leo eget felis fermentum rhoncus ac eu metus. Vivamus facilisis lectus a venenatis dapibus. Vivamus vel quam tempor, ullamcorper mi et, placerat ipsum. Vivamus faucibus laoreet dapibus. Nulla vel ipsum eu nulla commodo placerat. Etiam ipsum arcu, volutpat ut vestibulum ut, pellentesque non est. Ut varius neque in facilisis sagittis. Fusce vitae tincidunt purus, posuere ultricies elit. Etiam at erat eget est tincidunt tempor vitae vitae libero. Nam consectetur pretium eleifend. Fusce consectetur a nisi a dapibus. Duis sed risus dui. Vestibulum nec libero dignissim, ullamcorper arcu laoreet, viverra nibh. </p>', '<div class="legend">Michał Żebrowski jako Geralt</div>', '<div class="legend">Geralt w grze Wiedźmin 3 - Dziki Gon</div>', '<a href="../IMG/Geralt1.jpg" data-lightbox="Geralt" data-title="Michał Żebrowski jako Geralt">\r\n				<img class="image" src="../IMG/Geralt1.jpg" alt="Michał Żebrowski jako Geralt">\r\n			</a>', '<a href="../IMG/Geralt2.jpg" data-lightbox="Geralt" data-title="Geralt w grze Wiedźmin 3 - Dziki Gon">\r\n				<img class="image" src="../IMG/Geralt2.jpg" alt="Geralt w grze Wiedźmin 3 - Dziki Gon">\r\n			</a>'),
(6, 5, 'Śmierć', '<p>Quisque libero ante, viverra quis justo id, vehicula feugiat lectus. Curabitur in quam et ipsum mattis suscipit. Donec malesuada est nec velit tincidunt congue. Sed a tellus blandit, maximus enim sit amet, tempor sapien. Donec pharetra hendrerit tortor, vel sagittis risus cursus sed. Quisque vitae egestas dui, sit amet tincidunt dui. Donec rhoncus massa ante. Sed ultricies sem nec iaculis rutrum. Donec luctus tellus ut tortor semper malesuada. Duis laoreet, neque in consectetur bibendum, mi augue bibendum eros, at consectetur nunc sapien vel enim. </p>\r\n			\r\n			<p>Cras pharetra dolor vitae lacus egestas accumsan. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sagittis pretium lectus, vel aliquet diam condimentum non. Duis velit augue, volutpat et nunc laoreet, faucibus faucibus tellus. Nulla dignissim condimentum neque, id feugiat magna consectetur eu. Sed pretium tortor eu suscipit condimentum. Aliquam pulvinar nec urna elementum cursus. </p>', '<p>Vestibulum elementum elementum nisl, at ullamcorper ligula rutrum vitae. Etiam quis ligula dapibus, interdum augue vel, sollicitudin mauris. Nunc laoreet arcu id nibh sollicitudin vulputate. Vivamus dignissim diam et nisl ultrices, non faucibus dui condimentum. Ut accumsan urna quis leo ultrices eleifend. Donec justo nisi, finibus sit amet venenatis et, elementum sit amet sem. Donec eu porttitor sapien. Morbi metus elit, dictum et maximus a, eleifend aliquam mi. Nullam laoreet in orci ac fringilla. In sagittis, enim eu iaculis semper, urna neque posuere neque, eu gravida ante nunc quis nulla. Etiam ultricies ante turpis, ut feugiat ipsum varius laoreet. Cras et nulla felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus suscipit eleifend tellus id mattis.</p>\r\n			\r\n			<p>Integer tristique orci massa, a porta turpis ullamcorper vel. Nunc lectus elit, maximus nec purus ac, mollis facilisis elit. Proin iaculis quam vel erat feugiat, vitae ultricies tellus commodo. Integer nec ultricies ante, id placerat lectus. Aliquam vulputate orci ut tellus luctus, a bibendum sapien ultricies. Maecenas hendrerit tempor aliquet. Etiam pharetra tincidunt purus id vehicula. Duis ultricies eros a mauris ultrices vulputate. Praesent vestibulum nisi ut pretium tempor. </p>', '<p>In dui turpis, varius nec neque id, mollis cursus neque. Pellentesque eget laoreet nulla. Nam lectus ex, vehicula ut euismod et, rhoncus in lectus. Donec luctus, sapien a venenatis vulputate, sapien ante condimentum lectus, ut molestie enim velit vitae magna. Suspendisse varius neque pulvinar enim ornare, nec lobortis enim lobortis. Ut eu ex neque. Vestibulum feugiat ligula et arcu rhoncus, quis maximus mauris pellentesque. Vivamus fermentum ultrices lacus vel vulputate. Morbi ultrices dolor nulla, ac lobortis nisl vestibulum sed. Vestibulum iaculis, lectus eget condimentum sodales, lorem nulla fermentum tellus, volutpat congue lacus dolor et quam. Phasellus ac risus blandit nisi rutrum suscipit non eu mauris. Vestibulum fringilla non neque vitae vestibulum.</p>', '<div class="legend">Kto powiedział, że Śmierć nie może mieć zwierzątka domowego?</div>', '<div class="legend">W Świecie Dysku nie tylko ludzie mają swoją Śmierć :)</div>', '<a href="../IMG/Smierc1.jpg" data-lightbox="Smierc" data-title="Kto powiedział, że Śmierć nie może mieć zwierzątka domowego?">\r\n				<img class="image" src="../IMG/Smierc1.jpg" alt="Kto powiedział, że Śmierć nie może mieć zwierzątka domowego?">\r\n			</a>', '<a href="../IMG/Smierc2.jpg" data-lightbox="Smierc" data-title="W Świecie Dysku nie tylko ludzie mają swoją Śmierć :)">\r\n				<img class="image" src="../IMG/Smierc2.jpg" alt="W Świecie Dysku nie tylko ludzie mają swoją Śmierć :)">\r\n			</a>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bohaterowie`
--

CREATE TABLE `bohaterowie` (
  `id` int(11) NOT NULL,
  `bohater` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `bohaterowie`
--

INSERT INTO `bohaterowie` (`id`, `bohater`) VALUES
(1, 'Sherlock Holmes'),
(2, 'Herkules Poirot'),
(3, 'Stanisław Wokulski'),
(4, 'Geralt z Rivii'),
(5, 'Śmierć');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `administratorzy`
--
ALTER TABLE `administratorzy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artykuly`
--
ALTER TABLE `artykuly`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bohaterowie_id` (`bohaterowie_id`);

--
-- Indexes for table `bohaterowie`
--
ALTER TABLE `bohaterowie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `administratorzy`
--
ALTER TABLE `administratorzy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `artykuly`
--
ALTER TABLE `artykuly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `bohaterowie`
--
ALTER TABLE `bohaterowie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `artykuly`
--
ALTER TABLE `artykuly`
  ADD CONSTRAINT `artykuly_ibfk_1` FOREIGN KEY (`bohaterowie_id`) REFERENCES `bohaterowie` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
