-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2026 at 02:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'staff',
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `cpassword`, `profile`, `role`, `status`) VALUES
(1, 'Joshua', 'joshua@gmail.com', 'jess134', 'jess134', '../img/1752548325_3c7a24f6a0b53153493e6dd3845582a9.jpg', 'admin', 'active'),
(2, 'Aung', 'aung@gmail.com', '741258', '741258', '../img/1747842902_photo_2025-02-09_22-27-11.jpg', 'staff', 'inactive'),
(3, 'Sai', 'sai@cafe.com', 'yy123', 'yy123', '../img/1750427727_c9a30c66c622eddc9fe2b7de435279e9.jpg', 'staff', 'active'),
(4, 'Aki Tanaka', 'aki@cafe.com', 'aki321', 'aki321', '../img/ventage.jpg', 'staff', 'inactive'),
(5, 'Yuna Mori', 'yuna@cafe.com', 'yuna456', 'yuna456', '../img/IMG_20250210_150631_182.jpg', 'staff', 'active'),
(6, 'Hiro Yamada', 'hiro@cafe.com', 'hiro789', 'hiro789', '../img/profilePhoto.webp', 'staff', 'active'),
(7, 'Sora Arai', 'sora@cafe.com', 'sora111', 'sora111', '../img/IMG_20250210_150631_182.jpg', 'staff', 'active'),
(8, 'Kenta Sato', 'kenta@cafe.com', 'kenta222', 'kenta222', '../img/Lake.png', 'staff', 'active'),
(9, 'Mika Fuji', 'mika@cafe.com', 'mika333', 'mika333', '../img/ventage.jpg', 'staff', 'active'),
(10, 'Ren Kobayashi', 'ren@cafe.com', 'ren444', 'ren444', '../img/girl.jpg', 'staff', 'active'),
(11, 'Aya Suzuki', 'aya@cafe.com', 'aya555', 'aya555', '../img/lady.jpg', 'staff', 'active'),
(12, 'Tomo Nishimura', 'tomo@cafe.com', 'tomo666', 'tomo666', '../img/sth.jpg', 'staff', 'active'),
(13, 'Tsukiko Saito', 'Tsuki@cafe.com', 'tsuki123', 'tsuki123', '../img/68431889dacaf_f7ef702c048f1d1075f1186f407a350d.jpg', 'staff', 'active'),
(14, 'Haru', 'haru@cafe.com', 'haru456', 'haru456', '../img/6843198f0f28c_IMG_20250210_150631_182.jpg', 'staff', 'active'),
(15, 'Tanaka', 'tanaka@cafe.com', 'tanaka123', 'tanaka123', '../img/68431a21b1da6_anime.jpg', 'staff', 'active'),
(16, 'Sayaka', 'saya@cafe.com', 'saka345', 'saka345', '../img/68431b16a527f_chibi.jpg', 'staff', 'active'),
(17, 'Yamata', 'yama@cafe.com', 'yama345', 'yama345', '../img/68431b79729ed_666cef33089db06d5232069b03940dcb.jpg', 'staff', 'active'),
(18, 'Saru', 'saru@gmail.com', 'sasa345', 'sasa345', '../img/68431c04e1fbe_7c54ec134ae6dda37f46b95087d1b272.jpg', 'staff', 'active'),
(19, 'Mary', 'mary@cafe.com', 'mary567', 'mary567', '../img/68431c51371a5_23214976d661b547a410b4cf9efd1aa5.jpg', 'staff', 'inactive'),
(20, 'Sakura', 'sakura@cafe.com', 'saku678', 'saku678', '../img/68431cc8aa7f5_c9a30c66c622eddc9fe2b7de435279e9.jpg', 'staff', 'active'),
(21, 'Melisa', 'melisa@cafe.com', '12345', '12345', '../img/6846c8cd38a18_0baf0ad70ac48e7a94c243b7396387bc.jpg', 'staff', 'active'),
(22, 'Aiko', 'aiko123@cafe.com', '12345', '12345', '../img/6846c95ea6e95_photo_2025-05-25_21-27-53.jpg', 'staff', 'active'),
(23, 'saito', 'saito123@cafe.com', '12345', '12345', '../img/6846c9a561c80_anime.jpg', 'staff', 'active'),
(24, 'Julia', 'juli@cafe.com', '12345', '12345', '../img/6846ca2d599bd_chibi.jpg', 'staff', 'active'),
(25, 'Sakiko', 'sakiko@cafe.com', 'sakiko123', 'sakiko123', '../img/684adc6c92c50_68305dface723_photo_2025-02-09_22-27-11.jpg', 'staff', 'inactive'),
(26, 'Izzell', 'izz@cafe.com', '12345', '12345', '../img/68502aabc5fdb_05332c13b3a381443aa312df2fbd869c.jpg', 'staff', 'active'),
(27, 'cafe', 'cafe@cafe.com', 'cafe12345', 'cafe12345', '../img/6850e97f97d4c_666cef33089db06d5232069b03940dcb.jpg', 'staff', 'inactive'),
(28, 'Saru', 'sasa123@gmail.com', 'saru123', 'saru123', '../img/685409287f0dc_chocolatell.jpg', 'staff', 'inactive'),
(29, 'Izel', 'iss@cafe.com', '12345', '12345', '../img/68555f6026cc7_173b98edda290e016bf384e79058af0d.jpg', 'staff', 'active'),
(30, 'Melody', 'melody@gmail.com', 'melody123', 'melody123', '../img/68594f679a1e0_68431c04e1fbe_7c54ec134ae6dda37f46b95087d1b272.jpg', 'staff', 'active'),
(31, 'Melisa', 'meli123@cafe.com', '12345', '12345', '../img/6875b3d3433c1_685b5b9d61bf3_hus.jpg', 'staff', 'active'),
(32, 'Jessica', 'Jess13@gmail.com', 'jess123', 'jess123', '../img/6875c3b3c0774_7c54ec134ae6dda37f46b95087d1b272.jpg', 'staff', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `upload_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_new` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `admin_id`, `title`, `content`, `image`, `upload_time`, `is_new`) VALUES
(1, 1, 'Why Matcha is More Than a Trend', 'Discover the roots of this vibrant green tea and why it’s taking over cafés around the world.In today’s fast-paced world of trends and fads, matcha stands out as a tradition-rich drink that has earned its rightful place in both history and modern wellness. But what makes matcha so much more than just another green latte?\r\n                Behind every cup of matcha lies centuries of tradition, craftsmanship, and purpose. What began as a ceremonial drink for monks and nobility has grown into a global favorite — not just for its flavor, but for the clarity and calm it brings to modern life.\r\n                At Café Midori, we honor those roots. From handpicked leaves to the final frothy pour, we treat each matcha moment with care.\r\n                So next time you sip your matcha latte, remember — you’re not just enjoying a trendy green drink; you’re tasting history, culture, and wellness in one cup.\r\n                Whether you\'re a longtime lover or just starting your matcha journey, one thing is certain: this vibrant green tea is here to stay. So next time you sip your Midori Matcha, remember — you’re part of something truly timeless.', '6875260334392_684848a750b59_whyMacha.jpg', '2025-07-14 15:45:07', 0),
(2, 1, '☕ 5 Tips for the Perfect Brew at Home', 'Brewing the perfect cup of tea or coffee at home doesn’t require a barista degree — just a bit of care and the right method. Whether you’re sipping matcha, steeping loose-leaf tea, or making a rich espresso, here are five tips to take your home brews to the next level.\r\n\r\n1. 🔥 Use the Right Water Temperature\r\nWater that\'s too hot can burn your tea leaves or coffee grounds.\r\n\r\nGreen tea/matcha: 70–80°C (158–176°F)\r\n\r\nBlack tea: 90–95°C (194–203°F)\r\n\r\nCoffee: 90–96°C (195–205°F)\r\n\r\nTip: Let boiling water sit for 30–60 seconds before pouring over your leaves or grounds.\r\n\r\n2. 🧪 Measure Precisely\r\nA great brew is all about balance. Use a scale for accuracy.\r\n\r\nFor tea: 2–3g per 200ml cup\r\n\r\nFor coffee: A golden ratio is 1g coffee to 15–18g water\r\n\r\nPro tip: Too strong or too weak? Adjust your dose instead of just brewing longer.\r\n\r\n3. 🕰️ Time It Right\r\nOver- or under-steeping can ruin your brew.\r\n\r\nGreen tea: 1–2 minutes\r\n\r\nBlack tea: 3–5 minutes\r\n\r\nCoffee (pour-over): 2.5–4 minutes\r\n\r\nMatcha: Whisk immediately and drink fresh\r\n\r\nSet a timer — your taste buds will thank you.\r\n\r\n4. 🍃 Choose Quality Leaves or Beans\r\nYour final flavor starts with the ingredient.\r\nAlways choose:\r\n\r\nLoose-leaf teas or ceremonial-grade matcha\r\n\r\nFreshly roasted coffee beans, ground just before brewing\r\n\r\nSkip instant. Embrace fresh.\r\n\r\n5. 🧘 Practice a Ritual\r\nBrewing is more than technique — it’s a mindful moment.\r\nSet the tone with:\r\n\r\nCalm surroundings\r\n\r\nA beautiful cup\r\n\r\nSlow, intentional movements\r\n\r\nLet brewing be your daily pause for peace.\r\n\r\n✨ Brew It the Midori Way\r\nAt Café Midori, we believe every cup brewed at home should feel like a café experience. With the right water, ingredients, and care, your kitchen can become your new favorite café corner.', '../img/684706d5a4158_brew.jpg', '2025-06-13 04:36:42', 0),
(3, 1, 'Behind the Midori Counter article', '🍵 Behind the Midori Counter\r\nWhere tradition meets heart in every cup.\r\nStep into Café Midori, and you’ll sense it right away — a warm hum, the quiet swirl of steamed milk, the soft clink of ceramic, and the gentle aroma of matcha rising through the air. But what truly makes Midori special isn’t just what’s in the cup — it’s the story behind the counter.\r\n🌿 A Ritual, Not Just a Routine\r\nBehind the counter, every action is intentional. From scooping ceremonial-grade matcha to whisking it into a smooth froth, our baristas perform more than tasks — they honor a ritual. Inspired by Japanese tea ceremonies, we bring mindfulness into every step, whether it’s preparing a classic latte or pouring a perfect cold brew.\r\n\r\n💬 Real Conversations Happen Here\r\nMore than just drinks, Café Midori serves connection. Our team knows regulars by name — their orders, their stories, their moods. A coffee shop should feel like a neighborhood pause button — a place to be seen, heard, and recharged. And that’s what we aim for every single day.\r\n\r\n🌸 Inspired by Nature, Rooted in Care\r\nThe green hues you see all around Midori aren’t just aesthetic — they reflect our values. Sustainability matters to us. We choose eco-friendly cups, locally sourced ingredients where possible, and compost our waste with intention. Every leaf, every bean, every pour — it all counts.\r\n\r\n☕ More Than a Drink, It’s an Experience\r\nFrom the perfectly pulled espresso to the swirl of caramel on a macchiato, we believe that small details create big feelings. Behind the counter, there’s not just a team — there’s a family. Each one of us brings passion, curiosity, and creativity into the drink you hold in your hands.\r\n\r\nSo next time you step into Café Midori, take a moment to peek behind the counter.\r\nThere’s a little bit of magic being made — one cup at a time.', '../img/684706f2698c5_behindCounter.jpg', '2025-06-13 04:36:56', 0),
(4, 1, 'A Sip of Calm: The Story Behind Café Midori', 'Nestled in the heart of the city, Café Midori is more than just a coffee shop — it’s a retreat for the soul. From the moment you step through our doors, you’re enveloped in the gentle aroma of ceremonial-grade matcha, warm wood tones, and a feeling of quiet comfort. But behind every cup is a deeper story — one brewed with passion, patience, and purpose.\r\n\r\nThe Meaning of “Midori”\r\n“Midori” (緑) means “green” in Japanese — a symbol of life, tranquility, and nature. Inspired by the serenity of traditional Japanese tea culture and the vibrant energy of modern café life, Café Midori was born from a dream to create a space where old-world tea rituals meet contemporary taste.\r\n\r\nFrom Leaves to Love\r\nWe source our matcha from small, sustainable farms in Uji and Nishio, where tea masters have spent generations perfecting their craft. Each vibrant green powder we whisk into your cup tells the story of early morning harvests, shaded tea fields, and hands that have nurtured leaves with love.\r\n\r\nBut Café Midori isn’t only about matcha. It’s about community. It’s about that first sip in the morning that resets your day, the laughter shared over mochi waffles, the quiet moments with a book by the window. It’s about finding green in a gray world.\r\n\r\nThe Art of Slowing Down\r\nIn a world that moves fast, Café Midori invites you to slow down. Whether you’re here for a silky matcha latte, a warm hojicha with oat milk, or our bestselling “Yuzu Bloom” cake, every visit is a gentle reminder: pause, breathe, and enjoy.\r\n\r\nLet’s Brew Stories Together\r\nWe believe every guest brings their own story, and we’re here to add a gentle note of joy to it. Follow our journey here on the Midori Journal, where we’ll share café secrets, seasonal highlights, tea wisdom, and the faces behind the counter.\r\n\r\nHere’s to cozy corners, green days, and stories worth steeping.', '../img/6847070eda619_logo1.jpg', '2025-06-13 04:37:04', 0),
(5, 1, 'From Beans to Bakery: A Peek Into Our Pastry Lab', 'At Café Midori, our pastries aren’t an afterthought — they’re part of the experience. Just like our carefully sourced teas and coffees, our baked goods are crafted with story, soul, and a little bit of magic.\r\n\r\nBaking with Intention\r\nEvery morning, before the café opens, our kitchen is alive with the scent of toasted matcha, melting butter, and fresh yuzu zest. Our pastry team starts early, measuring, folding, tasting — creating treats that are just as thoughtful as your favorite latte.\r\n\r\nWe don’t believe in shortcuts. From the flakiness of our matcha croissants to the chewiness of our black sesame cookies, everything is made in-house with fresh ingredients and seasonal inspiration.\r\n\r\nSignature Bakes You’ll Only Find at Midori\r\nHere are a few customer favorites that keep our display case glowing:\r\n\r\nMatcha Mochi Waffles – Crispy on the outside, chewy on the inside. Best served warm with whipped cream and kinako syrup.\r\n\r\nYuzu Bloom Cake – A soft sponge cake layered with citrus cream and a floral glaze. Light, bright, unforgettable.\r\n\r\nRed Bean Butter Toast – Inspired by Japanese kissaten cafés. Thick-cut milk bread with sweet anko paste and salted butter. Simple and nostalgic.\r\n\r\nEarl Grey Milk Buns – Pillow-soft and steeped in tea leaves. A quiet companion to your cup.\r\n\r\nThe Heart Behind the Oven\r\nOur head pastry chef, Aiko, brings years of experience from Kyoto and a passion for blending East and West. “Every dessert should tell a story,” she says, “even if it’s just a sweet one.”\r\n\r\nHer philosophy shows in every batch — humble ingredients elevated with care and creativity. No artificial colors. No factory-made frostings. Just real food, made by real hands.\r\n\r\nSeasonal Surprises\r\nWe love experimenting with flavors throughout the year. In spring, you might find Sakura Cheesecake. In summer, maybe a Mango Matcha Swiss Roll. Fall brings chestnuts and hojicha, and winter? That’s when our famous Black Sesame Hot Chocolate Cake returns.\r\n\r\nSo next time you visit, don’t just come for the drinks. Come for the bakes. Come for the warmth. Come hungry.\r\n\r\n', '../img/68470739563a7_bakery.jpg', '2025-06-13 04:37:14', 0),
(6, 1, '☕ Welcome to Café Midori: Where Nature Meets Taste', 'At Café Midori, we believe that a perfect cup of coffee begins with care, nature, and a little creativity. Our name “Midori,” meaning green in Japanese, reflects our deep love for freshness, calm, and a peaceful environment.\r\n\r\n🌿 A Taste of Tranquility\r\nStep inside and feel the cozy atmosphere inspired by nature. Whether you\'re working, studying, catching up with friends, or simply taking a break, Café Midori offers a space where you can unwind with a drink that soothes your soul.\r\n\r\n☕ What We Serve\r\nOur menu is curated with passion. Here’s a quick look at what you can enjoy:\r\n\r\nCoffee: Hot & Iced, from bold espresso to creamy lattes\r\n\r\nDrinks: Refreshers, teas, smoothies, hot chocolate, and more\r\n\r\nBakery: Croissants, cookies, cake pops, muffins, danishes\r\n\r\nFast Food: Crispy fries, juicy burgers, and fresh pizza\r\n\r\nBreakfast Specials: Pancakes, waffles, toast, omelets, burritos\r\n\r\nHealthy Picks: Salads, smoothie bowls, plant-based milk options\r\n\r\nRetail Items: Take home our signature coffee blends and gifts\r\n\r\n💚 Why Choose Us?\r\nLocally roasted coffee beans\r\n\r\nFresh, organic ingredients\r\n\r\nEco-friendly cups and packaging\r\n\r\nFree Wi-Fi & peaceful ambiance\r\n\r\nFriendly baristas who love what they do\r\n\r\n📍 Come Visit Us\r\nFind your calm, taste the green, and sip with joy at Café Midori.\r\nBecause life’s too short for boring coffee.', '../img/68470751b3cd4_cafeMidori.webp', '2025-06-13 04:38:20', 0),
(7, 1, 'The Magic of Matcha: Why Green is the New Gold', 'In a world filled with caffeine fixes and fast sips, matcha stands out — not just for its vibrant green color, but for the calm energy it brings to every cup.\r\n\r\nAt Midori Café, matcha isn\'t just a trendy drink. It\'s a tradition, a mindful moment, and a gift from nature. Made from finely ground green tea leaves, matcha is rich in antioxidants, especially EGCG, known to boost metabolism and support health. But more than its benefits, matcha gives a feeling — a soft, earthy comfort that gently wakes you up without the crash.\r\n\r\nWe prepare our matcha with love: whisked carefully, served warm or iced, and blended just right to balance the natural umami flavor with the perfect touch of sweetness.\r\n\r\nWhether you\'re sipping in silence, working through the day, or catching up with friends, matcha is more than a drink — it’s a peaceful pause in your busy life.\r\n\r\nCome discover why so many say: green is the new gold.', '../img/newgold.jpg', '2025-06-13 04:38:20', 0),
(8, 1, 'Sweet, Soft, and Strong: The Power of Strawberry Lattes\r\n', 'There’s something magical about the first sip of a strawberry latte — the way the sweetness lingers, the softness soothes, and yet, it leaves you feeling strong and refreshed.\r\n\r\nAt Midori Café, our strawberry latte is more than just a pretty pink drink. It\'s a mix of ripe strawberries, fresh milk, and a touch of care. Whether served iced or warm, this latte tells a story: one of gentle sweetness and quiet strength — like a comforting hug in a cup.\r\n\r\nWe craft each drink with hand-blended strawberry puree, no artificial flavoring, and smooth, creamy milk to give you that authentic fruity flavor that makes every sip unforgettable.\r\n\r\nIt’s perfect for a heart that’s healing, a soul that’s glowing, or just someone who loves a beautiful drink with a bold taste.\r\n\r\nSo next time you visit, try the Strawberry Latte. It’s not just cute — it’s courage in a cup.', '../img/strawberry.jpg', '2025-06-13 04:38:20', 0),
(10, 1, 'From Bean to Cup: Our Coffee Story\r\n', 'Every cup of coffee has a story — and at Midori Café, it begins long before the first sip.\r\n\r\nOur journey starts with carefully selected beans, ethically sourced from farms where passion meets tradition. These beans are grown under the warm sun, hand-picked at peak ripeness, and roasted to perfection — bringing out their natural depth, aroma, and flavor.\r\n\r\nBut coffee is more than just beans. It’s about connection, craft, and care. From the gentle grind to the precise pour, each step in our brewing process is done with purpose. Whether it’s a strong espresso shot or a creamy latte, we believe every brew should awaken your senses and warm your heart.\r\n\r\nAt Midori Café, we don’t just serve coffee — we share a moment, a memory, a little spark of joy in your busy day.\r\n\r\nSo when you take a sip, know that it’s not just a drink. It’s a journey — from bean to cup — and now, to you.\r\n', '../img/cafestory.jpg', '2025-06-13 04:38:20', 0),
(13, 1, 'Sip the Calm: Why We Love Matcha Moments', 'In the fast rhythm of modern life, where everything demands your attention, there\'s something deeply comforting about slowing down. That’s what matcha offers — not just a drink, but a moment of stillness. At Midori Café, we believe in the magic of matcha moments. From the way the vibrant green powder swirls into hot water to the smooth, creamy sip that follows — matcha is a ritual, a pause, a breath of peace. Unlike regular green tea, matcha is made from finely ground whole leaves, giving you more nutrients and a richer, deeper flavor. It contains L-theanine, an amino acid that calms the mind without causing drowsiness, and natural caffeine that energizes without the crash. It’s focus without frenzy, clarity without chaos. When you sip matcha, you’re not just enjoying a drink. You’re choosing presence. You’re choosing peace. It’s perfect for quiet mornings, thoughtful afternoons, or any moment where you need to reset. At Midori Café, we whisk every matcha latte with care — not just for flavor, but for feeling. Because we know that in a cup of matcha, you’ll find more than warmth. You’ll find calm. You’ll find balance. You’ll find a little green joy in a world that moves too fast. So the next time you need a gentle escape, come sip the calm with us. Your matcha moment is waiting.\r\n\r\n', '../img/6846eed39145e_matchamoment.jpg', '2025-06-13 04:38:20', 0),
(15, 1, 'Chocolate Lattes & Midnight Thoughts', 'There’s something magical about midnight. While the world slows down, and the noise dims into a soft hum, that’s when the real thoughts come alive — the ones we hide behind daily routines and social smiles. And in these quiet hours, nothing pairs better with reflection than a warm, rich chocolate latte.\r\n\r\nChocolate lattes are more than just a drink — they’re comfort in a cup. Sweet, soothing, a little indulgent, and unapologetically bold. The way the velvety cocoa meets the creamy milk, with a subtle espresso kiss, feels like a warm hug for the soul. It’s the kind of drink that listens. It doesn’t rush. It lets you be.\r\n\r\nMaybe it’s just us, but chocolate lattes are made for deep thinking. For journaling dreams, replaying memories, or imagining all the versions of ourselves we’ve yet to become. They’re for letting go of what didn’t work out and holding space for what still could. They’re a companion when sleep doesn’t come and clarity is still miles away.\r\n\r\nSo next time you find yourself wide awake past midnight, pull out your favorite mug. Pour in some chocolate warmth. Light a candle. Let the silence speak. Let your heart wander.\r\n\r\nBecause sometimes, the best conversations happen when it’s just you, a chocolate latte, and your midnight thoughts.', '../img/6846ff587a843_chocolatell.jpg', '2025-06-13 04:38:20', 0),
(16, 1, 'Morning Light & First Brews', 'Mornings carry a kind of magic that no other time of day can offer. It’s the hush before the world fully wakes, the golden slant of light through the window, the promise of something new. And in the heart of it all — the first brew.\r\n\r\nWhether it\'s a smooth pour-over, a bold espresso shot, or a gentle latte with a swirl of steamed milk, that very first cup sets the tone. It’s not just about caffeine — it’s a ritual. A moment carved out just for you. A breath. A beginning.\r\n\r\nAt Midori Café, we believe that the first brew of the day should be more than just functional. It should be soulful. That’s why we select beans with care, roast with intention, and pour with love. Because we know it’s not just coffee — it’s your first pause, your reset, your gentle nudge into the day.\r\n\r\nAs the sunlight slowly spills across your table, and the warmth of your cup meets your hands, something shifts inside. The thoughts become clearer. The heart softens. The possibilities unfold.\r\n\r\nHere’s to quiet mornings, golden light, and coffee that understands.\r\n\r\nYour day starts here.', '../img/684700b3a8d83_6846fffcbfe1e_morning.jpg', '2025-06-13 04:38:20', 0),
(17, 1, '🫖 A Hug in a Cup: The Comfort of Milk Tea', 'There’s something deeply soothing about milk tea — the way it warms your hands, slows your heartbeat, and softens the edges of a long day. It’s not just a drink. It’s a hug in a cup.\r\n\r\nWhether you sip it warm on a rainy afternoon or over ice on a sunny day, milk tea has a way of finding you exactly where you are. Maybe it’s the gentle blend of strong black tea and creamy milk, or the subtle sweetness that reminds you to be kind to yourself. Whatever it is, it feels like home.\r\n\r\nAt Midori Café, we craft our milk tea with care. Each cup begins with finely brewed tea — strong enough to speak, but smooth enough to comfort. We blend it with silky milk and just the right touch of sweetness, creating a balanced flavor that lingers like a good memory.\r\n\r\nFor some, milk tea is a nostalgic taste of childhood. For others, it’s a daily ritual — a calm corner in a fast-moving world. And for many, it’s both: tradition and treat.\r\n\r\nWhen the world feels heavy, or the evening feels too quiet, we invite you to pause — to hold a warm cup between your palms and let it remind you that comfort is often simple, and always within reach.\r\n\r\nBecause sometimes, all you need is a quiet corner, a gentle sip, and a little warmth to carry on.', '../img/684701a436ea6_ComfortofMilkTea.jpg', '2025-06-13 04:38:20', 0),
(18, 1, '🍓 Strawberry Season, Every Day', 'At Midori Café, we believe in holding on to the little joys that make life sweet—like the first bite of a sun-ripened strawberry or the warmth of a memory wrapped in pink. That’s why our strawberry latte isn’t just a seasonal item. It’s a year-round celebration of softness, sweetness, and that nostalgic feeling of springtime love.\r\n\r\nEach cup is crafted with care, blending the creamy comfort of milk with the fruity brightness of real strawberry essence. It’s a color you can taste—rosy and cheerful, like a blush on a shy smile. And whether you sip it in the warmth of summer or the chill of winter, the feeling is always the same: gentle, comforting, and undeniably delightful.\r\n\r\nBecause here, it’s always strawberry season. And every day is worth a little sweetness.', '../img/684702765f71b_straw.jpg', '2025-06-13 04:38:20', 0),
(19, 1, '☕ Café Corners & Quiet Thoughts', 'There’s something sacred about a quiet corner in a café. It’s where ideas are born, where hearts rest, and where the world slows down just enough for you to catch your breath.\r\n\r\nAt Midori Café, these corners are more than just seats and tables—they’re havens. Whether you’re curled up with a book, scribbling in a journal, or simply gazing out the window with your latte in hand, our café corners invite you to simply be.\r\n\r\nNo rush. No noise. Just the gentle hum of life around you, the comforting aroma of coffee and tea, and the space to gather your thoughts.\r\n\r\nSome call it a coffee break. We call it a moment of peace—found only in the corners where quiet thoughts bloom.', '../img/6847030756fdb_CaféCorn.jpg', '2025-06-13 04:38:20', 0),
(20, 1, '☕ Iced or Hot — Coffee is a Love Language', 'They say love speaks in many ways—through words, touch, gestures. But at Midori Café, we believe it can also be served in a cup.\r\n\r\nSome love their coffee iced—cool, bold, refreshing. A quiet confidence in every sip. Others crave it hot—warm, rich, and comforting, like a gentle embrace in the early morning light. No matter the temperature, the message is the same: “I see you. I care.”\r\n\r\nIt’s the thoughtful order you remember.\r\nThe way someone knows just how much sugar you like.\r\nOr how your favorite cup is always waiting.\r\nIt’s sharing a drink in silence, where no words are needed.\r\n\r\nCoffee isn’t just a drink. It’s connection. It’s presence.\r\nIt’s a moment that says, “You matter.”\r\n\r\nSo whether you sip slowly from a steaming mug or take quick gulps through a straw—remember: coffee, in all its forms, is a love language. And we’re fluent.', '../img/684703774cbcc_love.jpg', '2025-06-13 04:38:20', 0),
(21, 1, '🌧️ Rainy Days & Hot Cocoa Dreams', 'There’s a kind of magic that only happens when the sky turns gray and the rain begins to fall. The world slows down, the streets shimmer, and your heart whispers for something warm, something sweet — something like hot cocoa.\r\n\r\nAt Midori Café, we know that rainy days aren\'t gloomy. They\'re gentle invitations to pause, reflect, and savor. Wrapped in a cozy corner by the window, hands cradling a mug of rich cocoa, life suddenly feels softer.\r\n\r\nEvery sip tells a story —\r\nof melted chocolate swirled with cream,\r\nof childhood memories,\r\nof fireplaces, fuzzy socks, and whispers shared between raindrops.\r\n\r\nThere’s comfort in the stillness,\r\nin the sound of water dancing on the roof,\r\nin the warmth of a drink that feels like a blanket for your soul.\r\n\r\nOn rainy days, we don’t rush. We dream.\r\nAnd our dreams taste like cocoa.', '../img/68470402e600c_rain.jpg', '2025-06-13 04:38:20', 0),
(22, 1, '🍵 Why Matcha Tastes Like Peace', 'Matcha isn’t just a drink — it’s a moment of calm captured in a cup. From the vibrant green color to its delicate, earthy flavor, matcha invites you to slow down and savor the simple pleasures of life.\r\n\r\nUnlike your typical coffee rush, matcha gently wraps you in a blanket of serenity. The process itself is almost meditative: the gentle whisking of the fine powder into hot water, creating a frothy surface that feels like a soft green cloud. It’s an experience that demands your full attention, a brief pause in the busyness of everyday life.\r\n\r\nMore than just taste, matcha offers a unique blend of calm energy. Thanks to its natural caffeine combined with L-theanine, a soothing amino acid, matcha stimulates your mind without the jitters or crashes that come from other caffeinated drinks. This balance helps you feel alert yet relaxed — a perfect harmony of focus and peace.\r\n\r\nEvery sip feels like a small act of mindfulness, a moment to reconnect with yourself and the present. It’s why many have embraced matcha as more than a beverage; it’s a ritual, a way to invite tranquility into the day.\r\n\r\nAt Midori Café, we celebrate this magic with every cup we serve. Whether you’re here for a quiet morning or a mindful afternoon break, let our matcha be your peaceful companion — a green sip of calm in a hectic world.\r\n\r\n', '../img/684704e27f4c7_matchtaste.jpg', '2025-06-13 04:38:20', 0),
(23, 1, '🌅 Sunrise Sips: Why Morning Coffee Hits Different', 'There’s something truly magical about that first cup of coffee in the morning—the way the warm steam curls up to greet you, the rich aroma filling the air like a gentle promise that the day ahead holds possibility. Morning coffee isn’t just a habit; it’s a ritual, a sacred pause before the world wakes up in full.\r\n\r\nWhen the sun peeks over the horizon, casting soft golden light through your window, that first sip feels like a quiet celebration. It’s the taste of comfort and potential all wrapped in one. The bittersweet notes awaken your senses, while the caffeine gently nudges you into alertness, setting the tone for the hours to come.\r\n\r\nMorning coffee is more than just a drink—it’s a mindset. It tells your brain that it’s time to switch gears, to focus, to create. The calm and clarity it brings makes even the busiest days feel manageable. Whether it’s the creamy swirl of a latte or the bold strength of an espresso shot, that first cup is a personal sunrise, a daily ritual that renews your energy and spirit.\r\n\r\nAt Midori Café, we cherish these morning moments. Our freshly brewed coffee is crafted to be the perfect companion to your sunrise sips, inviting you to savor peace, inspiration, and a fresh start—one cup at a time.', '../img/6847051e2d81e_sth (1).jpg', '2025-06-13 04:38:20', 0),
(24, 1, ' 🎨 Latte Art: More Than Just a Pretty Face', 'At first glance, latte art might seem like just a decorative flourish — pretty swirls and delicate hearts that make your coffee Instagram-worthy. But latte art is so much more than aesthetics; it’s a celebration of craftsmanship, connection, and care in every cup.\r\n\r\nCreating latte art requires skill, precision, and a deep understanding of coffee and milk. The barista carefully steams the milk to the perfect velvety texture, then expertly pours it into the espresso, forming intricate patterns that dance atop the surface. Each design is unique, a fleeting masterpiece made to delight your eyes and elevate your coffee experience.\r\n\r\nBut latte art isn’t just about impressing—it’s about enhancing the moment. That little heart or rosette reminds you that your drink was made thoughtfully, with attention to detail and love. It’s a silent invitation to slow down and savor, turning an ordinary coffee break into a mindful ritual.\r\n\r\nAt Midori Café, our baristas take pride in every pour, treating each cup as a canvas and every customer as a friend. Because for us, latte art is a language—a way to say “welcome,” “enjoy,” and “this moment is for you.”\r\n\r\nSo next time you see that swirl atop your latte, remember: it’s more than just a pretty face. It’s a symbol of passion, creativity, and the simple joy that coffee brings to our lives.', '../img/6847056a53815_latteart.jpg', '2025-06-13 04:38:20', 0),
(25, 1, '🏡 Meet Me at Midori: The Café That Feels Like Home', 'There’s something special about a place where you instantly feel at ease — a warm, welcoming spot that wraps you in comfort the moment you walk through the door. That’s exactly the feeling you get at Midori Café.\r\n\r\nFrom the soft hum of friendly chatter to the rich aroma of freshly brewed coffee, Midori is more than just a café. It’s a community, a refuge, and a second home all rolled into one. Whether you’re here to catch up with friends, get some work done, or simply escape the hustle and bustle of daily life, Midori offers a cozy nook just for you.\r\n\r\nOur carefully crafted drinks and homemade treats are made with love and a touch of creativity, inviting you to slow down and savor each sip and bite. The warm green tones and natural wood accents create a soothing atmosphere, designed to make you feel grounded and relaxed.\r\n\r\nAt Midori, every visitor becomes part of our family. It’s where stories are shared over steaming cups, friendships blossom, and moments are cherished. No matter who you are or where you come from, you’re always welcome here.\r\n\r\nSo next time you need a place to unwind, to connect, or just to be yourself — come meet us at Midori. Because here, you’re not just a customer; you’re home.', '../img/684705a2045f2_cafeMidori.webp', '2025-06-13 04:38:20', 0),
(41, 1, 'The Art of the Perfect Latte: Tips from Our Baristas', 'At Latte Lullaby, every cup we serve is crafted with care, passion, and a little bit of magic. Whether you’re a seasoned coffee lover or just beginning your latte journey, mastering the art of the perfect latte can make your daily coffee ritual even more special.\r\n\r\nHere are some insider tips from our baristas to help you create that smooth, creamy, soul-soothing latte right at home:\r\n\r\n1. Choose Quality Beans\r\nGreat lattes start with great espresso. Use fresh, high-quality coffee beans with a medium to dark roast for rich flavor.\r\n\r\n2. Perfect Your Espresso Shot\r\nPull a shot that’s neither too bitter nor too weak. Aim for a balanced, slightly sweet espresso with a beautiful crema on top.\r\n\r\n3. Steam the Milk Properly\r\nThe secret to a creamy latte is silky microfoam. Use cold milk and steam it to about 140–150°F (60–65°C), creating tiny, velvety bubbles.\r\n\r\n4. Pour with Care\r\nPour your steamed milk slowly into the espresso, allowing the foam to rest on top. For an extra touch, try simple latte art!\r\n\r\n5. Experiment with Flavors\r\nAdd a dash of vanilla, caramel, or spices like cinnamon to make your latte your own. Or try our signature Lavender Honey Latte for a floral twist.\r\n\r\nAt Latte Lullaby, we believe coffee is more than a drink—it’s a comforting melody that lifts your spirits. With these tips, you can bring a little bit of our cozy café magic into your home.', '../img/68594b7c91cd5_latteart (1).jpg', '2025-06-23 12:42:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`) VALUES
(1, 'Coffee'),
(2, 'Drinks'),
(3, 'Bakery'),
(4, 'Fast Food'),
(5, 'Breakfast'),
(6, 'Healthy'),
(7, 'Combo Set');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'new',
  `contact_date` datetime NOT NULL DEFAULT current_timestamp(),
  `reply_message` text DEFAULT NULL,
  `is_read_by_user` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `user_id`, `message`, `status`, `contact_date`, `reply_message`, `is_read_by_user`) VALUES
(1, 2, 'Hello! We love your Coffee~', 'new', '2025-04-08 06:24:36', NULL, 0),
(2, 2, 'hello', 'new', '2025-06-07 06:14:19', NULL, 0),
(5, 2, 'hiii', 'new', '2025-05-04 09:13:07', NULL, 0),
(7, 2, 'hiii', 'new', '2025-02-12 08:21:30', NULL, 0),
(8, 2, 'ooo', 'replied', '2025-02-09 10:20:14', 'oooo', 1),
(10, 7, 'Hi Midori Café team, I placed an order this morning but haven’t received a confirmation email. Could you please check if my order went through? Thanks!', 'new', '2025-04-23 07:16:00', NULL, 0),
(11, 7, 'Hello! I love your matcha latte 🍵. Have you ever considered adding oat milk or seasonal flavors? I think it would be a big hit!', 'new', '2025-03-27 18:18:39', NULL, 0),
(12, 3, 'Just wanted to say thank you! The atmosphere, the drinks, and the staff are always amazing. Midori Café is my favorite place to relax and study! 💚', 'replied', '2025-04-22 11:31:00', 'welcome sir!', 1),
(13, 3, 'Hi, I tried to register on your website but the page kept loading and didn’t submit. Could you help me with this? I’d love to get my free drink!', 'replied', '2025-06-07 17:48:00', 'sorry for the delay', 1),
(14, 3, 'Hi, I visited Midori Café last weekend and really loved the Matcha Latte! I’d like to know if you offer any gift cards or bulk discounts.', 'replied', '2025-06-08 10:04:50', 'we will', 1),
(15, 1, 'Hello, I have a problem with my order not arriving.', 'replied', '2025-06-08 12:32:06', 'sorrry sir we will delivered right away', 0),
(16, 2, 'Can I change my shipping address?', 'replied', '2025-06-08 12:32:06', 'yes sure~', 1),
(17, 3, 'Your café design is beautiful! Just sharing my thoughts.', 'replied', '2025-06-08 12:32:06', 'thanks', 1),
(18, 4, 'The payment didn’t go through, but money was deducted.', 'new', '2025-06-08 12:32:06', NULL, 0),
(19, 5, 'I forgot my password. Can you help me reset it?', 'new', '2025-06-08 12:32:06', NULL, 0),
(20, 3, 'Do you have vegan more options on the menu?', 'replied', '2025-06-08 12:32:41', 'yes! we have lot of vegan option on our menu', 1),
(21, 3, 'My reward points didn’t apply on my last order.\r\n', 'replied', '2025-06-08 12:32:55', 'sorry for that our false', 1),
(22, 3, 'Can I schedule a pickup for tomorrow morning?', 'replied', '2025-06-08 12:33:11', 'sorry we can\'t sell like that', 1),
(23, 3, 'The matcha latte was too bitter. Just feedback.', 'replied', '2025-06-08 12:33:26', 'Thank for the feedback', 1),
(24, 3, 'How can I become a member of your loyalty program?', 'replied', '2025-06-08 12:33:36', 'sorry we don\'t have that recently', 1),
(25, 2, 'Do you have birthday cake more options on the menu?', 'replied', '2025-06-08 12:46:22', 'sorry we only have cake slice!', 1),
(26, 2, 'hello', 'replied', '2025-06-08 12:49:41', 'hi', 1),
(27, 2, 'hi', 'replied', '2025-06-08 12:51:52', 'hi', 1),
(28, 2, 'hi', 'replied', '2025-06-08 12:52:04', 'hi', 1),
(29, 2, 'i like your matcha latte\r\n', 'replied', '2025-06-08 12:54:30', 'thank for the feedback', 1),
(30, 2, 'hi', 'replied', '2025-06-08 13:00:08', 'hi', 1),
(31, 2, 'gg', 'replied', '2025-06-08 13:08:05', 'gg', 1),
(32, 2, 'yy', 'replied', '2025-06-08 13:09:13', 'yy', 1),
(33, 2, 'hello', 'replied', '2025-06-08 13:10:05', 'hi', 1),
(35, 3, 'please help me for that', 'replied', '2025-06-12 18:33:45', 'for what?!', 1),
(37, 37, 'Hello admin please help me i forget my password', 'replied', '2025-06-20 19:00:07', 'we will contact the customer help', 1),
(38, 37, 'hello', 'replied', '2025-06-20 19:00:41', 'hi', 1),
(39, 37, 'My order got cancelled', 'replied', '2025-06-20 20:31:02', 'yes we got no delivery here sorry my apology', 1),
(40, 39, 'Hi Midori Café Team,\r\n\r\nI just wanted to say I love the vibe of your website — it\'s cozy and beautiful! The menu section is easy to navigate, and the blog posts are really heartwarming. One small suggestion: it would be great to have a search bar for drinks or blogs.\r\n\r\nKeep up the amazing work!', 'replied', '2025-06-23 19:23:14', 'Thank you so much for your kind words and thoughtful feedback! We’re thrilled to hear that you enjoy the cozy vibe of our website and find the menu and blog easy to use.\r\n\r\nYour suggestion about adding a search bar is fantastic, and we’ll definitely look into implementing that to make your experience even better.\r\n\r\nThanks again for taking the time to reach out and support Café Midori. We hope to see you back soon!\r\n\r\nWarm wishes,\r\nThe Midori Café Team 💚', 1),
(45, 51, 'hi', 'replied', '2025-10-13 18:21:56', 'hello', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_address` text NOT NULL,
  `region_id` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` date NOT NULL DEFAULT current_timestamp(),
  `order_status` varchar(50) NOT NULL DEFAULT 'pending',
  `cancel_reason` text DEFAULT NULL,
  `is_read_by_user` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `user_phone`, `user_address`, `region_id`, `total_price`, `order_date`, `order_status`, `cancel_reason`, `is_read_by_user`) VALUES
(1, 2, '09428620190', 'Lanmadaw', 2, 17500.00, '2025-05-29', 'delivered', NULL, 0),
(2, 2, '09428620190', 'Lanmadaw', 2, 17500.00, '2025-05-29', 'delivered', NULL, 0),
(3, 2, '09428620190', 'Takayta', 8, 17500.00, '2025-05-29', 'delivered', NULL, 0),
(4, 2, '09123456789', 'Latha', 1, 3000.00, '2025-05-29', 'cancelled', 'out of stock', 1),
(6, 2, '12345678901', 'Latha', 1, 6000.00, '2025-05-29', 'delivered', NULL, 0),
(7, 7, '12345671233', 'Latha', 1, 13500.00, '2025-05-29', 'delivered', NULL, 0),
(9, 14, '12345671233', 'San Chaung', 10, 17500.00, '2024-03-07', 'delivered', NULL, 0),
(10, 2, '12345671233', 'Lanmadaw', 2, 5500.00, '2024-07-03', 'cancelled', 'too many customers', 1),
(11, 2, '09428620190', 'Latha', 1, 16000.00, '2025-05-29', 'delivered', NULL, 0),
(12, 2, '09428620190', 'Latha', 1, 5500.00, '2025-05-29', 'delivered', NULL, 0),
(13, 2, '09428620190', 'A lone', 3, 16500.00, '2025-05-30', 'delivered', NULL, 0),
(14, 2, '09428620190', 'A lone', 3, 8500.00, '2025-05-30', 'delivered', NULL, 0),
(15, 2, '12345671233', 'San Chaung', 10, 17000.00, '2025-05-30', 'delivered', NULL, 0),
(16, 3, '12345671233', 'A lone', 3, 18500.00, '2025-05-30', 'delivered', NULL, 0),
(17, 2, '09428620190', 'Latha', 1, 6500.00, '2025-06-04', 'delivered', NULL, 0),
(18, 2, '09428620190', 'Lanmadaw', 2, 13000.00, '2025-06-05', 'cancelled', 'out of stock', 1),
(19, 7, '09123456789', 'A lone', 3, 35000.00, '2025-06-07', 'delivered', NULL, 0),
(20, 3, '09428620190', 'A lone', 3, 49400.00, '2025-06-08', 'delivered', NULL, 0),
(21, 3, '09428620190', 'San Chaung', 10, 81400.00, '2025-06-08', 'delivered', NULL, 0),
(22, 3, '09428620190', 'Latha', 1, 86300.00, '2025-06-08', 'delivered', NULL, 0),
(23, 3, '09428620190', 'Takayta', 8, 109600.00, '2025-06-08', 'delivered', NULL, 0),
(24, 3, '09876543212', 'Takayta', 8, 44400.00, '2025-06-09', 'delivered', NULL, 0),
(25, 3, '88888888888', 'Takayta', 8, 125000.00, '2025-06-09', 'delivered', NULL, 0),
(26, 3, '88888888888', 'Latha', 1, 5500.00, '2025-06-10', 'delivered', NULL, 0),
(27, 3, '88888888888', 'Latha', 1, 64500.00, '2025-06-10', 'delivered', NULL, 0),
(28, 3, '88888888888', 'San Chaung', 10, 2500.00, '2025-06-10', 'cancelled', 'out of stock', 1),
(29, 3, '88888888888', 'Latha', 1, 16500.00, '2025-06-11', 'cancelled', 'delivery no aviable', 1),
(30, 3, '12345671233', 'Lanmadaw', 2, 109700.00, '2025-06-11', 'delivered', NULL, 0),
(31, 3, '12345671233', 'Lanmadaw', 2, 63700.00, '2025-06-11', 'delivered', NULL, 0),
(32, 3, '12345671233', 'Lanmadaw', 2, 45000.00, '2025-06-11', 'cancelled', 'too many customers', 1),
(33, 3, '09428620190', 'Lanmadaw', 2, 6500.00, '2025-06-12', 'delivered', NULL, 0),
(34, 3, '88888888888', 'Lanmadaw', 2, 32000.00, '2025-06-12', 'delivered', NULL, 0),
(35, 3, '88888888888', 'Lanmadaw', 2, 6500.00, '2025-06-12', 'cancelled', 'delivery no available', 1),
(36, 3, '88888888888', 'Lanmadaw', 2, 102200.00, '2025-06-12', 'delivered', NULL, 0),
(37, 3, '12345671233', 'Lanmadaw', 2, 49900.00, '2025-06-12', 'cancelled', 'out of stock', 1),
(38, 3, '12345671233', 'Latha', 1, 2500.00, '2025-06-12', 'cancelled', 'delivery no available', 1),
(39, 3, '12345671233', 'Latha', 1, 26000.00, '2025-06-13', 'delivered', NULL, 0),
(40, 3, '12345671233', 'Lanmadaw', 2, 6000.00, '2025-06-14', 'preparing', NULL, 0),
(41, 3, '12345671233', 'Latha', 1, 15400.00, '2025-06-14', 'ready', NULL, 0),
(42, 3, '12345678901', 'Lanmadaw', 2, 50500.00, '2025-06-18', 'delivered', NULL, 0),
(43, 37, '88888888888', 'Latha', 1, 28500.00, '2025-06-20', 'delivered', NULL, 0),
(44, 37, '88888888888', 'Latha', 1, 55000.00, '2025-06-20', 'cancelled', 'delivery no available', 1),
(45, 3, '12345671233', 'Latha', 1, 40000.00, '2025-06-23', 'pending', NULL, 0),
(46, 39, '09428620190', 'Lanmadaw', 2, 25700.00, '2025-06-23', 'delivered', NULL, 0),
(47, 3, '12345671233', 'Latha', 1, 22400.00, '2025-06-24', 'delivered', NULL, 0),
(48, 41, '09788438696', 'Yangon/ yangon golf club street 10/114', 11, 29400.00, '2025-06-25', 'delivered', NULL, 0),
(49, 41, '09788438696', 'Yangon/Yangon Golf Club Street,10/114', 11, 30000.00, '2025-06-25', 'cancelled', 'delivery no available', 1),
(50, 42, '09-767676086', 'Metro Japanese Language Center', 8, 23500.00, '2025-06-25', 'delivered', NULL, 0),
(51, 42, '09-767676086', 'Metro Japanese Language Center', 8, 15000.00, '2025-06-25', 'cancelled', 'delivery no available', 1),
(52, 40, '09969789554', 'Yangon', 2, 5000.00, '2025-06-25', 'delivered', NULL, 0),
(53, 43, '09457891235', 'tharkayta township,Yangon', 8, 16000.00, '2025-06-25', 'delivered', NULL, 0),
(54, 44, '09788438696', 'Insein', 11, 54900.00, '2025-06-25', 'delivered', NULL, 0),
(55, 37, '12345671233', 'Latha', 1, 151400.00, '2025-06-25', 'delivered', NULL, 0),
(56, 37, '12345671233', 'Latha', 1, 950000.00, '2025-06-25', 'delivered', NULL, 0),
(57, 37, '12345671233', '12/15 street yangon', 2, 2500.00, '2025-06-25', 'delivered', NULL, 0),
(58, 37, '12345671233', 'yangon', 2, 18000.00, '2025-06-25', 'delivered', NULL, 0),
(59, 37, '12345671233', '12/12 yangon', 13, 21000.00, '2025-06-25', 'delivered', NULL, 0),
(60, 37, '12345671233', 'yangon', 6, 27500.00, '2025-06-25', 'delivered', NULL, 0),
(61, 37, '12345671233', 'yangon', 9, 14000.00, '2025-06-25', 'delivered', NULL, 0),
(62, 37, '09251861870', 'yangon 12/134', 15, 12000.00, '2025-06-25', 'delivered', NULL, 0),
(63, 37, '09251861870', 'yangon 12/134', 20, 2500.00, '2025-06-25', 'delivered', NULL, 0),
(64, 37, '09251861870', '12/14 east ', 22, 6000.00, '2025-06-25', 'delivered', NULL, 0),
(65, 37, '09251861870', '12/14 yangon ', 25, 18500.00, '2025-06-25', 'delivered', NULL, 0),
(66, 37, '09428620190', 'yangon', 7, 2500.00, '2025-06-25', 'delivered', NULL, 0),
(67, 37, '09428620190', 'yangon', 17, 13600.00, '2025-06-25', 'delivered', NULL, 0),
(68, 37, '09428620190', 'yangon 12/134', 27, 25500.00, '2025-06-25', 'delivered', NULL, 0),
(69, 37, '09428620190', 'yangon 12/134', 12, 20000.00, '2025-06-25', 'delivered', NULL, 0),
(70, 37, '09428620190', '12/14 yangon  ', 21, 17800.00, '2025-06-26', 'delivered', NULL, 0),
(71, 37, '0989898989', 'my koko heart', 22, 14000.00, '2025-06-27', 'delivered', NULL, 0),
(72, 37, '0989898989', 'yangon 12/134', 22, 33900.00, '2025-06-29', 'delivered', NULL, 0),
(73, 37, '0989898989', 'yangon 12/134', 22, 11900.00, '2025-06-29', 'cancelled', 'too many customers', 1),
(74, 37, '0989898989', 'yangon 12/134', 22, 83200.00, '2025-06-29', 'cancelled', 'too many customers', 1),
(75, 37, '0989898989', 'yangon 12/134', 20, 23500.00, '2025-06-29', 'delivered', NULL, 0),
(76, 37, '0989898989', 'yangon 12/134', 20, 6000.00, '2025-07-03', 'delivered', NULL, 0),
(77, 37, '0989898989', 'yangon 12/134', 20, 13600.00, '2025-07-05', 'delivered', NULL, 0),
(78, 46, '09924739520', 'Takayta', 8, 10000.00, '2025-07-07', 'delivered', NULL, 0),
(79, 46, '09924739520', 'Dagon', 6, 23500.00, '2025-07-07', 'cancelled', 'delivery no available', 0),
(80, 45, '09797922456', 'metro It & japanese', 8, 1141500.00, '2025-07-07', 'delivered', NULL, 0),
(81, 45, '09797922456', 'metro', 8, 3000.00, '2025-07-07', 'cancelled', 'delivery no available', 1),
(82, 37, '0989898989', 'yangon 12/134', 5, 104500.00, '2025-07-12', 'delivered', NULL, 0),
(83, 48, '09428620190', 'yangon 12/134', 16, 21600.00, '2025-07-13', 'pending', NULL, 0),
(84, 48, '09428620190', 'yangon 12/134', 3, 38500.00, '2025-07-13', 'pending', NULL, 0),
(85, 37, '09428620190', 'yangon 12/134', 3, 40500.00, '2025-07-14', 'cancelled', 'too many customers', 1),
(86, 37, '09428620190', 'yangon 12/134', 3, 89500.00, '2025-07-14', 'pending', NULL, 0),
(87, 37, '09428620190', 'yangon 12/134', 4, 18400.00, '2025-07-14', 'pending', NULL, 0),
(88, 37, '09428620190', 'yangon 12/134', 4, 10000.00, '2025-07-14', 'preparing', NULL, 0),
(89, 37, '09428620190', 'yangon 12/134', 7, 8900.00, '2025-07-14', 'cancelled', 'too many customers', 1),
(90, 37, '09428620190', 'yangon 12/134', 2, 3500.00, '2025-07-14', 'delivered', NULL, 0),
(91, 50, '09428620190', 'yangon 12/134', 3, 76000.00, '2025-07-15', 'delivered', NULL, 0),
(92, 50, '91234567891', 'yangon 12/134', 2, 14000.00, '2025-07-15', 'cancelled', 'delivery no available', 1),
(93, 51, '09428620190', 'No 81, 15th street, Lanmadaw Township, Yangon', 2, 215000.00, '2025-10-13', 'delivered', NULL, 0),
(94, 51, '09428620190', 'No 81, 15th street, Lanmadaw Township, Yangon', 2, 8900.00, '2025-10-13', 'cancelled', 'too many customers', 1),
(95, 2, '096757464478', 'ssfdsfsdgfgfdg', 2, 41900.00, '2026-03-02', 'pending', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `user_id`, `orders_id`, `product_id`, `quantity`, `price`) VALUES
(1, 2, 3, 3, 1, 2500.00),
(2, 2, 3, 25, 2, 7500.00),
(3, 2, 4, 5, 1, 3000.00),
(4, 2, 6, 5, 1, 3000.00),
(5, 7, 6, 2, 2, 3000.00),
(11, 14, 9, 1, 1, 2500.00),
(12, 14, 9, 2, 1, 3000.00),
(13, 14, 9, 12, 1, 5000.00),
(14, 14, 9, 21, 1, 7000.00),
(15, 2, 10, 1, 1, 2500.00),
(16, 2, 10, 4, 1, 3000.00),
(17, 2, 11, 2, 1, 3000.00),
(18, 2, 11, 4, 1, 3000.00),
(19, 2, 11, 5, 1, 3000.00),
(20, 2, 11, 20, 1, 7000.00),
(21, 2, 12, 1, 1, 2500.00),
(22, 2, 12, 5, 1, 3000.00),
(23, 2, 13, 1, 1, 2500.00),
(24, 2, 13, 12, 1, 5000.00),
(25, 2, 13, 26, 1, 9000.00),
(26, 2, 14, 1, 1, 2500.00),
(27, 2, 14, 4, 2, 3000.00),
(28, 2, 15, 2, 1, 3000.00),
(29, 2, 15, 16, 1, 7000.00),
(30, 2, 15, 20, 1, 7000.00),
(31, 3, 16, 29, 1, 3000.00),
(32, 3, 16, 30, 1, 3500.00),
(33, 3, 16, 33, 1, 9500.00),
(34, 3, 16, 31, 1, 2500.00),
(35, 2, 17, 177, 1, 6500.00),
(36, 2, 18, 177, 1, 6500.00),
(37, 2, 18, 126, 1, 3000.00),
(38, 2, 18, 104, 1, 3500.00),
(39, 7, 19, 175, 1, 5500.00),
(40, 7, 19, 127, 1, 5000.00),
(41, 7, 19, 105, 1, 5000.00),
(42, 7, 19, 70, 2, 6000.00),
(43, 7, 19, 25, 1, 7500.00),
(44, 3, 20, 36, 1, 4700.00),
(45, 3, 20, 122, 1, 3000.00),
(46, 3, 20, 101, 2, 3500.00),
(47, 3, 20, 172, 3, 8900.00),
(48, 3, 20, 77, 1, 8000.00),
(49, 3, 21, 40, 2, 7000.00),
(50, 3, 21, 172, 2, 8900.00),
(51, 3, 21, 26, 1, 9000.00),
(52, 3, 21, 104, 2, 3500.00),
(53, 3, 21, 127, 2, 5000.00),
(54, 3, 21, 151, 4, 5900.00),
(55, 3, 22, 177, 1, 6500.00),
(56, 3, 22, 3, 2, 2500.00),
(57, 3, 22, 20, 1, 7000.00),
(58, 3, 22, 21, 2, 7000.00),
(59, 3, 22, 157, 3, 5900.00),
(60, 3, 22, 55, 1, 8600.00),
(61, 3, 22, 135, 1, 3500.00),
(62, 3, 22, 164, 2, 6500.00),
(63, 3, 22, 70, 1, 6000.00),
(64, 3, 22, 108, 2, 2500.00),
(65, 3, 23, 175, 1, 5500.00),
(66, 3, 23, 172, 4, 8900.00),
(67, 3, 23, 127, 2, 5000.00),
(68, 3, 23, 48, 2, 6000.00),
(69, 3, 23, 130, 4, 3500.00),
(70, 3, 23, 104, 5, 3500.00),
(71, 3, 23, 174, 3, 5000.00),
(72, 3, 24, 177, 1, 6500.00),
(73, 3, 24, 176, 1, 6000.00),
(74, 3, 24, 172, 1, 8900.00),
(75, 3, 24, 127, 2, 5000.00),
(76, 3, 24, 92, 2, 6500.00),
(77, 3, 25, 144, 5, 2500.00),
(78, 3, 25, 100, 5, 2500.00),
(79, 3, 25, 3, 5, 2500.00),
(80, 3, 25, 161, 2, 4500.00),
(81, 3, 25, 32, 3, 3000.00),
(82, 3, 25, 172, 5, 8900.00),
(83, 3, 25, 174, 5, 5000.00),
(84, 3, 26, 3, 1, 2500.00),
(85, 3, 26, 2, 1, 3000.00),
(86, 3, 27, 177, 3, 6500.00),
(87, 3, 27, 176, 1, 6000.00),
(88, 3, 27, 175, 1, 5500.00),
(89, 3, 27, 4, 10, 3000.00),
(90, 3, 27, 30, 1, 3500.00),
(91, 3, 28, 3, 1, 2500.00),
(92, 3, 29, 175, 3, 5500.00),
(93, 3, 30, 172, 3, 8900.00),
(94, 3, 30, 3, 4, 2500.00),
(95, 3, 30, 26, 7, 9000.00),
(96, 3, 30, 125, 4, 2500.00),
(97, 3, 31, 144, 1, 2500.00),
(98, 3, 31, 127, 1, 5000.00),
(99, 3, 31, 104, 1, 3500.00),
(100, 3, 31, 34, 1, 6000.00),
(101, 3, 31, 48, 1, 6000.00),
(102, 3, 31, 52, 2, 7000.00),
(103, 3, 31, 172, 3, 8900.00),
(104, 3, 32, 174, 9, 5000.00),
(105, 3, 33, 177, 1, 6500.00),
(106, 3, 34, 176, 1, 6000.00),
(107, 3, 34, 177, 4, 6500.00),
(108, 3, 35, 177, 1, 6500.00),
(109, 3, 36, 9, 3, 5500.00),
(110, 3, 36, 172, 3, 8900.00),
(111, 3, 36, 50, 2, 6000.00),
(112, 3, 36, 127, 1, 5000.00),
(113, 3, 36, 142, 1, 4000.00),
(114, 3, 36, 77, 1, 8000.00),
(115, 3, 36, 104, 2, 3500.00),
(116, 3, 36, 108, 2, 2500.00),
(117, 3, 36, 116, 1, 3000.00),
(118, 3, 36, 121, 1, 4000.00),
(119, 3, 36, 119, 1, 3500.00),
(120, 3, 36, 25, 1, 7500.00),
(121, 3, 37, 172, 1, 8900.00),
(122, 3, 37, 11, 1, 4000.00),
(123, 3, 37, 26, 1, 9000.00),
(124, 3, 37, 34, 1, 6000.00),
(125, 3, 37, 160, 1, 7500.00),
(126, 3, 37, 164, 1, 6500.00),
(127, 3, 37, 68, 1, 8000.00),
(128, 3, 38, 144, 1, 2500.00),
(129, 3, 39, 149, 1, 2000.00),
(130, 3, 39, 127, 1, 5000.00),
(131, 3, 39, 87, 1, 6500.00),
(132, 3, 39, 104, 1, 3500.00),
(133, 3, 39, 166, 2, 4500.00),
(134, 3, 40, 176, 1, 6000.00),
(135, 3, 41, 177, 1, 6500.00),
(136, 3, 41, 172, 1, 8900.00),
(137, 3, 42, 199, 2, 10000.00),
(138, 3, 42, 191, 1, 9500.00),
(139, 3, 42, 193, 1, 21000.00),
(140, 37, 43, 197, 1, 9000.00),
(141, 37, 43, 34, 1, 6000.00),
(142, 37, 43, 61, 1, 6500.00),
(143, 37, 43, 104, 2, 3500.00),
(144, 37, 44, 199, 3, 10000.00),
(145, 37, 44, 59, 2, 7500.00),
(146, 37, 44, 164, 1, 6500.00),
(147, 37, 44, 135, 1, 3500.00),
(148, 3, 45, 200, 1, 13500.00),
(149, 3, 45, 199, 1, 10000.00),
(150, 3, 45, 40, 1, 7000.00),
(151, 3, 45, 82, 1, 6000.00),
(152, 3, 45, 104, 1, 3500.00),
(153, 39, 46, 200, 1, 13500.00),
(154, 39, 46, 36, 1, 4700.00),
(155, 39, 46, 3, 1, 2500.00),
(156, 39, 46, 127, 1, 5000.00),
(157, 3, 47, 200, 1, 13500.00),
(158, 3, 47, 202, 1, 8900.00),
(159, 41, 48, 18, 1, 8900.00),
(160, 41, 48, 135, 1, 3500.00),
(161, 41, 48, 191, 1, 9500.00),
(162, 41, 48, 99, 1, 3000.00),
(163, 41, 48, 148, 1, 4500.00),
(164, 41, 49, 48, 1, 6000.00),
(165, 41, 49, 78, 1, 6000.00),
(166, 41, 49, 196, 1, 14500.00),
(167, 41, 49, 141, 1, 3500.00),
(168, 42, 50, 160, 1, 7500.00),
(169, 42, 50, 53, 1, 8500.00),
(170, 42, 50, 122, 1, 3000.00),
(171, 42, 50, 148, 1, 4500.00),
(172, 42, 51, 191, 1, 9500.00),
(173, 42, 51, 8, 1, 5500.00),
(174, 40, 52, 7, 1, 5000.00),
(175, 43, 53, 7, 1, 5000.00),
(176, 43, 53, 153, 1, 4000.00),
(177, 43, 53, 52, 1, 7000.00),
(178, 44, 54, 48, 1, 6000.00),
(179, 44, 54, 197, 1, 9000.00),
(180, 44, 54, 84, 1, 6000.00),
(181, 44, 54, 191, 1, 9500.00),
(182, 44, 54, 199, 1, 10000.00),
(183, 44, 54, 175, 1, 5500.00),
(184, 44, 54, 172, 1, 8900.00),
(185, 37, 55, 202, 1, 8900.00),
(186, 37, 55, 191, 15, 9500.00),
(187, 37, 56, 191, 100, 9500.00),
(188, 37, 57, 3, 1, 2500.00),
(189, 37, 58, 26, 2, 9000.00),
(190, 37, 59, 4, 2, 3000.00),
(191, 37, 59, 3, 1, 2500.00),
(192, 37, 59, 8, 1, 5500.00),
(193, 37, 59, 21, 1, 7000.00),
(194, 37, 60, 146, 1, 3000.00),
(195, 37, 60, 147, 1, 4000.00),
(196, 37, 60, 125, 1, 2500.00),
(197, 37, 60, 196, 1, 14500.00),
(198, 37, 60, 104, 1, 3500.00),
(199, 37, 61, 3, 1, 2500.00),
(200, 37, 61, 171, 1, 5500.00),
(201, 37, 61, 48, 1, 6000.00),
(202, 37, 62, 111, 1, 2500.00),
(203, 37, 62, 8, 1, 5500.00),
(204, 37, 62, 147, 1, 4000.00),
(205, 37, 63, 3, 1, 2500.00),
(206, 37, 64, 3, 1, 2500.00),
(207, 37, 64, 30, 1, 3500.00),
(208, 37, 65, 35, 1, 5000.00),
(209, 37, 65, 200, 1, 13500.00),
(210, 37, 66, 31, 1, 2500.00),
(211, 37, 67, 146, 1, 3000.00),
(212, 37, 67, 163, 1, 5600.00),
(213, 37, 67, 170, 1, 5000.00),
(214, 37, 68, 2, 4, 3000.00),
(215, 37, 68, 200, 1, 13500.00),
(216, 37, 69, 147, 5, 4000.00),
(217, 37, 70, 202, 2, 8900.00),
(218, 37, 71, 17, 1, 8000.00),
(219, 37, 71, 122, 1, 3000.00),
(220, 37, 71, 74, 1, 3000.00),
(221, 37, 72, 202, 1, 8900.00),
(222, 37, 72, 199, 2, 10000.00),
(223, 37, 72, 35, 1, 5000.00),
(224, 37, 73, 202, 1, 8900.00),
(225, 37, 73, 126, 1, 3000.00),
(226, 37, 74, 202, 2, 8900.00),
(227, 37, 74, 199, 3, 10000.00),
(228, 37, 74, 198, 1, 30400.00),
(229, 37, 74, 79, 1, 5000.00),
(230, 37, 75, 144, 1, 2500.00),
(231, 37, 75, 78, 2, 6000.00),
(232, 37, 75, 100, 1, 2500.00),
(233, 37, 75, 1, 1, 2500.00),
(234, 37, 75, 147, 1, 4000.00),
(235, 37, 76, 82, 1, 6000.00),
(236, 37, 77, 202, 1, 8900.00),
(237, 37, 77, 36, 1, 4700.00),
(238, 46, 78, 3, 1, 2500.00),
(239, 46, 78, 58, 1, 7500.00),
(240, 46, 79, 159, 1, 6000.00),
(241, 46, 79, 200, 1, 13500.00),
(242, 46, 79, 123, 1, 4000.00),
(243, 45, 80, 116, 100, 3000.00),
(244, 45, 80, 100, 1, 2500.00),
(245, 45, 80, 122, 1, 3000.00),
(246, 45, 80, 199, 1, 10000.00),
(247, 45, 80, 189, 20, 13000.00),
(248, 45, 80, 108, 70, 2500.00),
(249, 45, 80, 191, 20, 9500.00),
(250, 45, 80, 99, 67, 3000.00),
(251, 45, 81, 122, 1, 3000.00),
(252, 37, 82, 145, 4, 3000.00),
(253, 37, 82, 81, 3, 5500.00),
(254, 37, 82, 191, 8, 9500.00),
(255, 48, 83, 36, 3, 4700.00),
(256, 48, 83, 148, 1, 4500.00),
(257, 48, 83, 99, 1, 3000.00),
(258, 48, 84, 175, 7, 5500.00),
(259, 37, 85, 200, 3, 13500.00),
(260, 37, 86, 99, 1, 3000.00),
(261, 37, 86, 196, 1, 14500.00),
(262, 37, 86, 127, 3, 5000.00),
(263, 37, 86, 191, 6, 9500.00),
(264, 37, 87, 202, 1, 8900.00),
(265, 37, 87, 191, 1, 9500.00),
(266, 37, 88, 199, 1, 10000.00),
(267, 37, 89, 202, 1, 8900.00),
(268, 37, 90, 6, 1, 3500.00),
(269, 50, 91, 191, 3, 9500.00),
(270, 50, 91, 200, 3, 13500.00),
(271, 50, 91, 40, 1, 7000.00),
(272, 50, 92, 35, 1, 5000.00),
(273, 50, 92, 197, 1, 9000.00),
(274, 51, 93, 202, 1, 8900.00),
(275, 51, 93, 193, 1, 21000.00),
(276, 51, 93, 33, 3, 9500.00),
(277, 51, 93, 199, 1, 10000.00),
(278, 51, 93, 34, 1, 6000.00),
(279, 51, 93, 165, 1, 5000.00),
(280, 51, 93, 164, 1, 6500.00),
(281, 51, 93, 174, 1, 5000.00),
(282, 51, 93, 58, 1, 7500.00),
(283, 51, 93, 65, 3, 7000.00),
(284, 51, 93, 66, 1, 6900.00),
(285, 51, 93, 69, 1, 8000.00),
(286, 51, 93, 64, 1, 6700.00),
(287, 51, 93, 70, 1, 6000.00),
(288, 51, 93, 130, 1, 3500.00),
(289, 51, 93, 132, 1, 3000.00),
(290, 51, 93, 139, 1, 4500.00),
(291, 51, 93, 143, 1, 2500.00),
(292, 51, 93, 79, 1, 5000.00),
(293, 51, 93, 88, 1, 4000.00),
(294, 51, 93, 91, 1, 4000.00),
(295, 51, 93, 93, 1, 5000.00),
(296, 51, 93, 98, 1, 6500.00),
(297, 51, 93, 108, 10, 2500.00),
(298, 51, 93, 117, 2, 2500.00),
(299, 51, 94, 202, 1, 8900.00),
(300, 2, 95, 202, 1, 8900.00),
(301, 2, 95, 102, 11, 3000.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_img` varchar(255) NOT NULL,
  `products_name` varchar(100) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `is_stock_tracked` tinyint(1) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_img`, `products_name`, `categories_id`, `price`, `stock_quantity`, `is_stock_tracked`, `available`, `description`) VALUES
(1, '6875237a3a5d7_expresso.jpg', 'iced coffee', 1, 3000.00, 0, 0, 1, 'A bold, concentrated shot of pure coffee — rich in flavor and aroma, perfect for a quick energy boost or a true coffee experience.\r\n'),
(2, 'ice espresso.jpg', 'Iced Espresso', 1, 3000.00, 0, 0, 1, 'A chilled shot of rich espresso served over ice — smooth, bold, and refreshingly energizing'),
(3, 'americano.jpg', 'Americano', 1, 2500.00, 0, 0, 1, '\"A smooth blend of rich espresso and hot water — bold yet mellow, perfect for coffee purists'),
(4, 'ice americano.jpg', 'Iced Americano', 1, 3000.00, 0, 0, 1, 'A cool, refreshing mix of espresso and cold water served over ice — crisp, bold, and energizing'),
(5, 'Latte (1).jpg', 'Latte', 1, 3000.00, 0, 0, 1, 'Espresso and steamed milk with a velvety finish'),
(6, 'lattle.jpg\r\n', 'Iced Latte', 1, 3500.00, 0, 0, 1, 'Chilled espresso poured over cold milk and ice — refreshing, smooth, and satisfyingly creamy'),
(7, 'strawberryLatte.jpg', 'Strawberry Latte', 1, 5000.00, 0, 0, 1, 'A cozy cup of steamed milk blended with sweet strawberry syrup — fruity, creamy, and comforting with every sip'),
(8, 'Icedstrawberrylatte.jpg', 'Iced strawberry latte', 1, 5500.00, 0, 0, 1, 'A refreshing blend of chilled milk and ripe strawberry syrup served over ice — cool, creamy, and delightfully fruity'),
(9, 'ChocolateLatte.jpg', 'Chocolate Latte', 1, 5500.00, 0, 0, 1, 'Rich espresso with steamed milk and chocolate syrup, warm and cozy'),
(10, 'IcedChocolateLatte.jpg', 'Iced Chocolate Latte', 1, 6000.00, 0, 0, 1, 'Cold espresso with milk and chocolate syrup over ice, sweet and refreshing\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(11, 'Vanillalatte.jpg', 'Vanilla Latte', 1, 4000.00, 0, 0, 1, 'Smooth espresso with steamed milk and a hint of vanilla syrup, warm and comforting'),
(12, 'IcedVAnillaLatte.jpg', 'Iced Vanilla Latte', 1, 5000.00, 0, 0, 1, 'Chilled espresso mixed with milk and vanilla syrup, served over ice for a refreshing treat'),
(13, 'caramellatte.jpg', 'Caramel Latte', 1, 6000.00, 0, 0, 1, 'Rich espresso blended with steamed milk and sweet caramel syrup, perfect warm indulgence'),
(14, 'IcedCamaleLatte.jpg', 'Iced Caramel Latte', 1, 7000.00, 0, 0, 1, 'Chilled espresso, milk, and caramel syrup poured over ice for a cool, sweet delight\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(15, 'cappuccino.jpg', 'Cappuccino', 1, 8000.00, 0, 0, 1, 'A classic espresso topped with equal parts steamed milk and creamy foam, delivering a bold yet smooth flavor'),
(16, 'flatWhite.jpg', 'Flat White', 1, 7000.00, 0, 0, 1, 'Smooth espresso with steamed milk and a thin microfoam layer, creamy and rich'),
(17, 'caramel-macchiato.jpg', 'Caramel Macchiato', 1, 8000.00, 0, 0, 1, 'Rich espresso, velvety milk, and sweet caramel drizzle'),
(18, 'mochaHot.jpg', 'Mocha', 1, 8900.00, 0, 0, 1, 'A delicious blend of espresso, steamed milk, and rich chocolate, topped with whipped cream'),
(19, 'iced-mocha-1.jpg', 'Iced Mocha', 1, 8000.00, 0, 0, 1, 'Cold espresso, milk, and chocolate over ice with whipped cream'),
(20, 'coldbrew.jpg', 'Cold Brew', 1, 7000.00, 0, 0, 1, 'Smooth, slow-steeped coffee served cold for a rich, refreshing taste'),
(21, 'affogato.jpg', 'Affogato', 1, 7000.00, 0, 0, 1, 'A delightful blend of hot espresso poured over creamy vanilla ice cream — the perfect sweet and bold treat'),
(22, 'vanillaColdBrew.jpg', 'Vanilla Cold brew', 1, 6500.00, 0, 0, 1, 'Chilled cold brew coffee with a hint of sweet vanilla. Smooth and refreshing'),
(23, 'hazelnutMocha.jpg', 'Hazelnut Mocha', 1, 9000.00, 0, 0, 1, 'Rich chocolate mocha blended with hazelnut syrup for a nutty, indulgent flavor. Creamy and delicious.'),
(24, 'spicedCinnemoncappucino.jpg', 'Spiced Cinnamon Cappucino', 1, 10000.00, 0, 0, 1, 'Spiced cinnamon cappuccino with warm, cozy flavors'),
(25, 'matcha.jpg', 'Iced Matcha Latte', 1, 7500.00, 0, 0, 1, 'Refreshing iced matcha latte with creamy milk and vibrant green tea flavor'),
(26, 'macha.jpg', 'Macha Latte', 1, 9000.00, 0, 0, 1, 'Smooth and creamy hot matcha latte with rich, earthy green tea flavor'),
(27, 'chailatte.jpg', 'Chai Latte', 1, 8000.00, 0, 0, 1, 'Warm, spiced chai latte with aromatic black tea and creamy steamed milk'),
(28, 'goldenmilklatte.jpg', 'Golden Milk Latte', 1, 12000.00, 0, 0, 1, 'A soothing blend of turmeric, spices, and steamed milk, perfect for warmth and wellness'),
(29, 'icedcoffee.jpg', 'Iced Coffee', 1, 3000.00, 0, 0, 1, 'Refreshing cold brew coffee served over ice, perfect for a cool energy boost'),
(30, 'black tea1.jpg', 'Black Tea', 1, 3500.00, 0, 0, 1, 'Classic bold black tea with a rich, robust flavor—great hot or iced'),
(31, 'herbal tea.jpg', 'Herbal Tea', 1, 2500.00, 0, 0, 1, 'A caffeine-free, fragrant blend of herbs and flowers for calming refreshment'),
(32, 'milktea.jpg', 'Milk Tea', 1, 3000.00, 0, 0, 1, 'Smooth black tea mixed with creamy milk, delivering a comforting, sweet taste'),
(33, 'toastmarshmallowlatte.jpg', 'Toasted Marshmallow Latte', 1, 9500.00, 0, 0, 1, 'Rich espresso with steamed milk and toasted marshmallow flavor for a cozy treat'),
(34, 'DirtyMatcha.jpg', 'Dirty Matcha', 1, 6000.00, 0, 0, 1, 'Creamy matcha latte with a shot of espresso for a bold, energizing twist'),
(35, 'FreshBaguette.jpg', 'Fresh Baguette', 3, 5000.00, 0, 0, 1, ' Crispy golden crust with a light, airy interior. Slightly nutty and subtly tangy from a slow fermentation'),
(36, 'SoftMilkBread.jpg', 'Soft Milk Bread', 3, 4700.00, 0, 0, 1, ' Pillowy soft, mildly sweet, and rich with a creamy flavor. Delicate and comforting'),
(37, 'GarlicBreadSticks.jpg', 'Garlic Breadsticks', 3, 5900.00, 0, 0, 1, 'Warm and chewy with a buttery garlic glaze, finished with a savory hint of herbs'),
(38, 'CheeseAndHerbFacaccida.jpg', 'Cheese & Herb Focaccia', 3, 6000.00, 0, 0, 1, 'Thick and fluffy with a slightly crisp crust. Infused with olive oil, melted cheese, and aromatic herbs'),
(39, 'ButterCroissant.jpg', 'Butter Croissant', 3, 3000.00, 0, 0, 1, 'Flaky and golden outside, buttery and soft inside. Delicate layers melt in your mouth'),
(40, 'AlmondCroissant.jpg', 'Almond Croissant', 3, 7000.00, 0, 0, 1, 'Filled with sweet almond paste and topped with toasted almonds. Rich, nutty, and fragrant'),
(41, 'ChocolateCroissant.jpg', 'Chocolate Croissant', 3, 4500.00, 0, 0, 1, 'Buttery layers wrapped around smooth, dark chocolate. Lightly sweet and indulgent'),
(42, 'cinemonRolls.jpg', 'Cinamon Rolls', 3, 7100.00, 0, 0, 1, 'Soft and gooey with a sweet cinnamon swirl, topped with a creamy glaze. Warm and comforting'),
(45, 'PainauChocolat.jpg', 'Pain Au Chocolat', 3, 27000.00, 0, 0, 1, 'Classic French pastry with a crisp exterior and rich, semi-sweet chocolate filling'),
(46, 'appleturnover.jpg', 'Apple Turnover', 3, 7000.00, 0, 0, 1, 'Flaky pastry filled with tender cinnamon-spiced apple chunks. Sweet, tangy, and warming'),
(47, 'bananabreadSlice.jpg', 'Banana Bread Slice', 3, 7200.00, 0, 0, 1, 'Moist and dense with ripe banana flavor, and a hint of vanilla and cinnamon'),
(48, 'lemonPoundCakeSlice.jpg', 'Lemon Pound Cake Slice', 3, 6000.00, 0, 0, 1, 'Rich and buttery with a bright, zesty lemon kick and a soft crumb'),
(49, 'blueberryMuffin.jpg', 'Blueberry Muffin', 3, 3000.00, 0, 0, 1, 'Soft and moist, bursting with juicy blueberries. Lightly sweet with a tender top'),
(50, 'chocolatemuffin.jpg', 'Chocolate Muffin', 3, 6000.00, 0, 0, 1, 'Rich, cocoa-forward and cake-like with a slightly crisp top. Pure chocolate goodness'),
(51, 'chocochipmuffin.jpg', 'Chocolate Chips Muffin', 3, 7000.00, 0, 0, 1, 'Classic vanilla base studded with melty chocolate chips. Sweet and satisfying'),
(52, 'medeleine.jpg', 'Madeleine', 3, 7000.00, 0, 0, 1, 'Delicate French butter cake with a light lemony note. Slightly crisp outside, soft inside'),
(53, 'chocolatechipcookies.jpg', 'Chocolate Chips Cookies', 3, 8500.00, 0, 0, 1, 'Golden and chewy with gooey chocolate chunks and a hint of vanilla'),
(54, 'oatmealraisinCookies.jpg', 'Oatmeal Raisin Cookies', 3, 7500.00, 0, 0, 1, 'Soft, hearty oats with bursts of sweet raisin and warm cinnamon'),
(55, 'doubleChocoCookies.jpg', 'Double Chocolate Cookie', 3, 8600.00, 0, 0, 1, 'Fudgy and decadent with chocolate dough and chocolate chips'),
(56, 'matchawhitechococookies.jpg', 'Matcha White Chcolate Cookie', 3, 7000.00, 0, 0, 1, 'Earthy matcha flavor balanced with sweet, creamy white chocolate'),
(57, 'ClassicVanillaSlice.jpg', 'Classic Vanilla Slice', 3, 5000.00, 0, 0, 1, 'Fluffy and moist vanilla sponge with a smooth, creamy vanilla frosting'),
(58, 'chocolateFudgeSlice.jpg', 'Chocolate Fudge Cake Slice', 3, 7500.00, 0, 0, 1, 'Deeply rich chocolate layers with thick, luscious fudge frosting'),
(59, 'redvelvetSlice.jpg', 'Red Velvet Cake Slice', 3, 7500.00, 0, 0, 1, 'Soft and velvety with a hint of cocoa, paired with tangy cream cheese frosting'),
(60, 'strawberryShortCakeSlice.jpg', 'Strawberry ShortCake SLice', 3, 6750.00, 0, 0, 1, 'Light sponge with whipped cream and fresh strawberries. Fruity and airy'),
(61, 'taroCakeSlice.jpg', 'Taro Cake Slice', 3, 6500.00, 0, 0, 1, 'Smooth and creamy taro flavor with soft sponge. Earthy and subtly sweet'),
(62, 'blackForestSlice.jpg', 'Black Forest Cake Slice', 3, 12000.00, 0, 0, 1, 'Chocolate cake layered with cherries and whipped cream. Sweet, tart, and indulgent'),
(63, 'TiramisuSlice.jpg', 'Tiramisu Slice', 3, 5500.00, 0, 0, 1, 'Coffee-soaked sponge layered with mascarpone cream and cocoa powder. Rich and silky'),
(64, 'mangomousseCakeSlice.jpg', 'Mango Mousse Cake Slice', 3, 6700.00, 0, 0, 1, 'Light and fruity mousse with tropical mango flavor. Refreshing and creamy'),
(65, 'blueberrymoussecake.jpg', 'Blueberry Mousse cake Slice', 3, 7000.00, 0, 0, 1, 'Fluffy mousse with a burst of blueberry sweetness. Light and tangy'),
(66, 'cheesemousseCakeSlice.jpg', 'Cheese Mousse Cake Slice', 3, 6900.00, 0, 0, 1, 'Creamy cheesecake base with a light mousse finish. Smooth and mildly tangy'),
(67, 'pistachioRoseCakeSlice.jpg', 'Pistachio Rose Cake Slice', 3, 7000.00, 0, 0, 1, 'Nutty pistachio with a floral hint of rose. Elegant and aromatic'),
(68, 'almondStrawberryCakeSlice.jpg', 'Almond Strawberry Slice', 3, 8000.00, 0, 0, 1, 'Layers of almond sponge and strawberry cream. Sweet, nutty, and fruity'),
(69, 'MatchaGreenTeaSlice.jpg', 'Matcha Green Tea Slice', 3, 8000.00, 0, 0, 1, 'Bold matcha flavor with sweet cream layers. Earthy and energizing'),
(70, 'matchaMousseCakeSlice.jpg', 'Matcha Mousse Cake Slice', 3, 6000.00, 0, 0, 1, 'Airy mousse with a smooth matcha finish. Delicately sweet and slightly bitter'),
(71, 'coconutVanillaSlice.jpg', 'Coconut & Vanilla cake Slice', 3, 7000.00, 0, 0, 1, 'Moist vanilla cake with creamy coconut accents. Light, tropical sweetness'),
(72, 'ChocolateFudgeCakepop.jpg', 'Chocolate Fudge Cake Pop', 3, 3000.00, 0, 0, 1, 'Rich and dense chocolate cake dipped in a dark chocolate shell'),
(73, 'vanillaConfettiCakePop.jpg', 'Vanilla Confetti Cake Pop', 3, 3000.00, 0, 0, 1, 'Classic vanilla cake with colorful sprinkles, coated in sweet white chocolate'),
(74, 'redVelvet.jpg', 'Red Velver Cake Pop', 3, 3000.00, 0, 0, 1, 'Soft red velvet center with a sweet white chocolate coating'),
(75, 'creamAndCakePOP.jpg', 'Cookies & cream Cake Pop', 3, 3000.00, 0, 0, 1, 'Crushed chocolate cookies blended into vanilla cake and coated in white chocolate'),
(76, 'matchawhiteChocolateCakePop.jpg', 'Matcha white Chocolate Cake Pop', 3, 3000.00, 0, 0, 1, 'Earthy matcha cake center wrapped in silky white chocolate'),
(77, 'avocadoToastwithEgg.jpg', 'Avocado Toast with Egg', 5, 8000.00, 0, 0, 1, 'Creamy, buttery, and rich with crispy toast'),
(78, 'MisoButterToast.jpg', 'Miso Butter Toast', 5, 6000.00, 0, 0, 1, 'Salty-sweet, umami-packed with nutty depth'),
(79, 'almondbananaToast.jpg', 'Almond Banana Toast', 5, 5000.00, 0, 0, 1, 'Nutty and sweet with a creamy texture'),
(80, 'spinachandtofuscramble.jpg', 'Spinach Tofu Scramble', 5, 6000.00, 0, 0, 1, 'savory, slightly nutty flavor'),
(81, 'tomagoToast.jpg', 'Tomago Toast', 5, 5500.00, 0, 0, 1, 'Juicy, tangy, fresh, and slightly herbal'),
(82, 'eggWhiteAndVeggieWrap.jpg', 'Egg White & Veggie Wrap', 5, 6000.00, 0, 0, 1, 'Light, mildly seasoned, and earthy'),
(83, 'avocadoEdamameToast.jpg', 'Avocado Edamame Toast', 5, 5000.00, 0, 0, 1, 'Buttery, nutty, and subtly sweet'),
(84, 'cottagecheeseandherbbowl.jpg', 'Cottage Cheese & Herb Bowl', 5, 6000.00, 0, 0, 1, 'Tangy, creamy, and refreshing'),
(85, 'sweetpotatobreakfasthash.jpg', 'Sweet Potato Hash', 5, 5500.00, 0, 0, 1, 'Sweet, smoky, and hearty'),
(86, 'oatandbananapancake.jpg', 'Oat & Banana Pancake', 5, 6000.00, 0, 0, 1, 'Soft, fluffy, and naturally sweet'),
(87, 'matchaProteinPancake.jpg', 'Matcha Protein Pancake', 5, 6500.00, 0, 0, 1, 'Earthy, slightly bitter, and subtly sweet'),
(88, 'wholewheatfluffypancakes.jpg', 'Whole Wheat Fluffy Pancake', 5, 4000.00, 0, 0, 1, 'Nutty, hearty, and mildly sweet'),
(89, 'almondflourpancake.jpg', 'Almond Flour Pancake', 5, 6500.00, 0, 0, 1, 'Light, airy, and delicately nutty'),
(90, 'sweetpotatopancake.jpg', 'Sweet Potato Pancake', 5, 5000.00, 0, 0, 1, 'Dense, caramelized, and comforting'),
(91, 'chaiseedBuckwheatpancake.jpg', 'Chia Seed Buckwheat Pancake', 5, 4000.00, 0, 0, 1, 'Hearty, earthy, and slightly nutty'),
(92, 'matchamochiwaffle.jpg', 'Matcha Mochi Waffle', 5, 6500.00, 0, 0, 1, 'Crispy yet chewy with deep matcha flavor'),
(93, 'oatmealwaffle.jpg', 'Oatmeal Waffle', 5, 5000.00, 0, 0, 1, 'Nutty, crisp, and mildly sweet'),
(94, 'amondflourwaffle.jpg', 'Almond Flour Waffle', 5, 4000.00, 0, 0, 1, 'Fluffy, rich, and lightly sweet'),
(95, 'sweetPotatowaffle.jpg', 'Sweet Potato Waffle', 5, 6500.00, 0, 0, 1, 'Crispy, caramelized, and soft inside'),
(96, 'vanillaWaffle.jpg', 'Vanilla Waffle', 5, 5000.00, 0, 0, 1, 'Fragrant, buttery, and gently sweet'),
(97, 'hojicahWaffle.jpg', 'Hojicah Waffle', 5, 4000.00, 0, 0, 1, 'Smoky, roasty, and slightly sweet'),
(98, 'chocolateloverswaffle.jpg', 'Chocolate Waffle', 5, 6500.00, 0, 0, 1, 'Rich, fudgy, and decadent'),
(99, 'veggieSpringRolls.jpg', 'Veggie Spring Rolls', 6, 3000.00, 0, 0, 1, 'fresh, crunchy, and slightly sweet filling\r\n'),
(100, 'SweetPotateToast.jpg', 'Sweet Potato Toast', 6, 2500.00, 0, 0, 1, 'naturally sweet, earthy flavor with a slightly caramelized edge\r\n'),
(101, 'zucchiniNoodleWithPasto.jpg', 'Zucchini Noodle with Pesto', 6, 3500.00, 0, 0, 1, 'light, fresh, and slightly nutty flavor\r\n'),
(102, 'bakedFalafelBowl.jpg', 'Baked Falafel Bowl', 6, 3000.00, 0, 0, 1, ' crispy, golden-brown falafel made from chickpeas\r\n'),
(103, 'CauliflowerRiceSushiBowl.jpg', 'Cauliflower Rice Sushi Bowl', 6, 6000.00, 0, 0, 1, 'mild, slightly nutty flavor, absorbing the tangy rice vinegar seasoning'),
(104, 'GrilledSalomSalad.jpg', 'Grilled Salmon Salad', 6, 3500.00, 0, 0, 1, 'tender, smoky salmon that has a slightly sweet and savory caramelized crust'),
(105, 'BroccoliAndSeaFoodSalad.jpg', 'Broccoli & seafood Salad', 6, 5000.00, 0, 0, 1, 'sweet, briny flavor, while the broccoli brings a slightly earthy crunch'),
(106, 'BuckwheatNoodleSalad.jpg', 'Buckwheat Noodle Salad', 6, 4000.00, 0, 0, 1, 'earthy, mildly sweet taste'),
(107, 'EggplantAndTomatoTapenadeToast.jpg', 'Eggplant & Tomato Tapenade', 6, 3000.00, 0, 0, 1, 'deep, smoky eggplant flavor balanced by the sweet-tart taste of tomatoes'),
(108, 'VegetableGyoza.jpg', 'Vegetable Gyoza', 6, 2500.00, 0, 0, 1, 'juicy, savory filling made from cabbage, carrots, mushrooms, and tofu'),
(109, 'sesameTofuSkewer.jpg', 'Sesame Tofu Skewers', 6, 3500.00, 0, 0, 1, 'crispy, golden-brown exterior with a soft, slightly nutty interior'),
(110, 'AlmondMilkshake.jpg', 'Almond Milkshake', 6, 3000.00, 0, 0, 1, 'Creamy, nutty, and slightly sweet with a rich, velvety texture'),
(111, 'CoconutWater.jpg', 'Coconut water', 6, 2500.00, 0, 0, 1, 'Light, refreshing, mildly sweet with a hint of nuttiness'),
(112, 'ChiaSeedLemonade.jpg', 'Chia seed Lemonade', 6, 4000.00, 0, 0, 1, 'Tart and citrusy with a subtle sweetness, plus a fun gel-like texture from the chia seeds'),
(113, 'Kombucha.jpg', 'Kombucha', 6, 3000.00, 0, 0, 1, 'Fizzy, tangy, and slightly vinegary with a hint of sweetness, similar to sour apple cider'),
(114, 'cucumberAndmintdetoxwater.jpg', 'Cucumber & Mint detox', 6, 2500.00, 0, 0, 1, 'Crisp, cooling, and subtly herbal with a refreshing, spa-like taste'),
(115, 'spirulinapineapplesmoothie.jpg', 'Spirulina pineapple smoothie', 6, 5000.00, 0, 0, 1, 'Tropical and fruity with a mild earthy undertone from spirulina, balanced by the sweetness of pineapple'),
(116, 'icedmatchalemonade.jpg', 'Iced Matcha Lemonade', 6, 3000.00, 0, 0, 1, 'Earthy, tangy, and slightly sweet'),
(117, 'avocadosmoothie.jpg', 'Avocado smoothie', 6, 2500.00, 0, 0, 1, 'Creamy, buttery, and mildly nutty'),
(118, 'yuzucitrustea.jpg', 'Yuzu Citrus Tea', 6, 3500.00, 0, 0, 1, 'Bright, tart, and floral'),
(119, 'cinnamonappleinfusedwater.jpg', 'Cinnamon Apple Infused', 6, 3500.00, 0, 0, 1, 'Warm, spiced, and subtly sweet'),
(120, 'pineapplemintcooler.jpg', 'Pineapple mint cooler', 6, 2500.00, 0, 0, 1, 'Tropical, juicy, and refreshing'),
(121, 'charcoallemonade.jpg', 'charcoal Lemonade', 6, 4000.00, 0, 0, 1, 'Classic lemonade with a detox twist'),
(122, 'grilledChickenAndAvocadoWrap.jpg', 'Grilled Chicken Avocado Wrap', 4, 3000.00, 0, 0, 1, 'Smoky, creamy, and fresh'),
(123, 'tunaAnscucumberSandwish.jpg', 'Tuna & Cucumber Rice Sandwich', 4, 4000.00, 0, 0, 1, 'Light, umami, and crisp'),
(124, 'tofubanhmiwithpickledVeggie.jpg', 'Tofu Banh Mi with Pickled Veggies', 4, 3500.00, 0, 0, 1, 'Tangy, crunchy, and bold'),
(125, 'hummusandveggieGrainWrap.jpg', 'Hummus & Veggie Grain Wrap', 4, 2500.00, 0, 0, 1, 'Nutty, creamy, and refreshing'),
(126, 'quinaopowerbowl.jpg', 'Quinoa Power Bowl', 4, 3000.00, 0, 0, 1, 'Hearty, nutty, and flavorful'),
(127, 'coldsobanoodlesalad.jpg', 'Cold Soba Noodle Salad', 4, 5000.00, 0, 0, 1, 'Refreshing, umami, and slightly salty'),
(128, 'chickpeagreeksaladbox.jpg', 'Chickpea Greek Salad Box', 4, 2500.00, 0, 0, 1, 'Bright, tangy, and herbaceous'),
(129, 'minipokebowl.jpg', 'Mini Poke Bowl', 4, 3000.00, 0, 0, 1, 'Fresh, slightly sweet, and umami-rich'),
(130, 'bakedsweetpotatoFries.jpg', 'Baked Sweet Potato Fries', 4, 3500.00, 0, 0, 1, 'Crispy, sweet, and savory'),
(131, 'airFriedEdmamewithSeasalt.jpg', 'Air-Fried Edamame with Sea Salt', 4, 2000.00, 0, 0, 1, 'Nutty, salty, and satisfying'),
(132, 'kalechipsorseaweedsnacks.jpg', 'Kale Chips or Seaweed Snacks', 4, 3000.00, 0, 0, 1, 'Earthy or oceanic umami'),
(133, 'veggiestickwithhummusDip.jpg', 'Veggie Sticks with Hummus Dip', 4, 2550.00, 0, 0, 1, 'Crisp, garlicky, and smooth'),
(134, 'vegantofubento.jpg', 'Vegan Tofu Bento', 4, 3000.00, 0, 0, 1, 'Savory, slightly sweet, and balanced'),
(135, 'tofuteriyakiburger.jpg', 'Tofu Teriyaki Burger', 4, 3500.00, 0, 0, 1, 'Juicy, sweet, and smoky'),
(136, 'toriaVeggieWrap.jpg', 'Tuna Veggie Wrap', 4, 4000.00, 0, 0, 1, 'Clean, tangy, and fresh'),
(137, 'greegardendelightBurger.jpg', 'Green Garden Delight', 4, 2500.00, 0, 0, 1, 'Wholesome, earthy, and flavorful'),
(138, 'pestopowerpiepizza.jpg', 'Pesto Power Pie', 4, 3000.00, 0, 0, 1, 'Herbaceous, garlicky, and rich'),
(139, 'freshHarvestpiePizza.jpg', 'Fresh Harvest Pie Pizza', 4, 4500.00, 0, 0, 1, 'Sweet, savory, and fresh'),
(140, 'zenVeggieFlatbreadpizza.jpg', 'Zen Veggie Flatbread Pizza', 4, 3000.00, 0, 0, 1, 'Light, smoky, and satisfying'),
(141, 'leanGreenChickenBurger.jpg', 'Lean Green Chicken Burger', 4, 3500.00, 0, 0, 1, 'Juicy, smoky, and tangy'),
(142, 'gardenVeggieBurger.jpg', 'Garden Veggie Burger', 4, 4000.00, 0, 0, 1, 'Hearty, nutty, and savory'),
(143, 'grilledChickenBurger.jpg', 'Grilled Chicken Burger', 4, 2500.00, 0, 0, 1, 'Smoky, juicy, and well-seasoned'),
(144, 'EnglishBreakfastTea.jpg', 'English breakfast tea', 2, 2500.00, 0, 0, 1, 'Bold, malty, and slightly bitter with a full-bodied richness. Often enjoyed with milk and sugar'),
(145, 'EarlyGrey.jpg', 'Earl Grey Tea', 2, 3000.00, 0, 0, 1, 'Smooth black tea with a citrusy twist from bergamot oil, offering floral and slightly sweet notes'),
(146, 'GreenTea.jpg', 'Green Tea', 2, 3000.00, 0, 0, 1, 'Fresh, grassy, and slightly earthy with a hint of bitterness. Some varieties have nutty or floral undertones'),
(147, 'ChamomileHerbalTea.jpg', 'Chamamile Herbal tea', 2, 4000.00, 0, 0, 1, 'Mildly sweet with floral and apple-like notes, often described as soothing and calming'),
(148, 'thaimilktea.jpg', 'Thai Milk tea', 2, 4500.00, 0, 0, 1, 'Creamy, sweet, and rich with hints of vanilla and spices like star anise and cardamom'),
(149, 'FreshLemonade.jpg', 'Fresh Lemonade', 2, 2000.00, 0, 0, 1, 'Tart and citrusy with a refreshing sweetness, often balanced with sugar'),
(150, 'strawberryLemonade.jpg', 'Strawberry Lemonade', 2, 5700.00, 0, 0, 1, 'A mix of tart lemon and sweet, juicy strawberries for a fruity twist'),
(151, 'SparklingRaspberrySoda.jpg', 'Sparkling Raspberry Lemonade', 2, 5900.00, 0, 0, 1, 'Light and bubbly with a tropical tangy-sweet raspberry essenc'),
(152, 'CuCumberMintCooler.jpg', 'Cucumber Mint cooler', 2, 3000.00, 0, 0, 1, 'Crisp and refreshing with cooling cucumber and fresh mint, often slightly sweetened'),
(153, 'PeachIce.jpg', 'Peach Iced Tea', 2, 4000.00, 0, 0, 1, 'Smooth and fruity with a juicy peach flavor complementing the tea’s mild bitterness'),
(154, 'PassionFruitSparklingWater.jpg', 'Passionfruit Sparkling Water', 2, 3500.00, 0, 0, 1, 'Light and bubbly with a tropical tangy-sweet passionfruit essence'),
(155, 'StrawberyBananaSmoothie.jpg', 'Strawberry Banana Smoothie', 2, 8500.00, 0, 0, 1, 'Creamy and naturally sweet with a blend of ripe bananas and juicy strawberries'),
(156, 'MangoSmoothie.jpg', 'Mango Smoothie', 2, 8700.00, 0, 0, 1, 'Thick and tropical with a rich mango sweetness and a velvety texture'),
(157, 'BerryBlastSmoothie.jpg', 'Berry Blast Smoothie', 2, 5900.00, 0, 0, 1, 'A mix of berries offering a balance of tartness and sweetness with a refreshing finish'),
(158, 'ChocolateMilkshake.jpg', 'Chocolate Milkshake', 2, 8800.00, 0, 0, 1, 'Thick, creamy, and indulgent with a rich cocoa flavor'),
(159, 'VanillaMilkShake.jpg', 'Vanilla Milkshake', 2, 6000.00, 0, 0, 1, 'Smooth and sweet with a classic vanilla bean richness'),
(160, 'OreoCookieMilkShake.jpg', 'Oreo Cookies Milkshake', 2, 7500.00, 0, 0, 1, 'Creamy and chocolatey with crunchy Oreo bits adding texture'),
(161, 'BubbleTea.jpg', 'Bubble tea', 2, 4500.00, 0, 0, 1, 'Varies by flavor, but typically creamy and sweet with chewy tapioca pearls adding texture'),
(162, 'jasminegreenmilktea.jpg', 'Jasmine Green Milk tea', 2, 5000.00, 0, 0, 1, 'Floral and fragrant with a delicate sweetness, balanced by the creaminess of milk'),
(163, 'taromilktea.jpg', 'Taro Milk tea', 2, 5600.00, 0, 0, 1, 'Nutty, creamy, and slightly sweet, often compared to vanilla or sweet potato'),
(164, 'matchamilktea.jpg', 'Matcha milk tea', 2, 6500.00, 0, 0, 1, 'Earthy, slightly bitter, and umami-rich with a creamy texture from milk'),
(165, 'HoneyDewMilktea.jpg', 'Honeydew milk tea', 2, 5000.00, 0, 0, 1, 'Earthy, slightly bitter, and umami-rich with a creamy texture from milk and melon fruit'),
(166, 'MangoGreenTea.jpg', 'Mango green tea', 2, 4500.00, 0, 0, 1, 'Fruity and refreshing with a balance of tropical mango sweetness and grassy green tea'),
(167, 'PassionFruitMilkTea (1).jpg', 'Passionfruit black tea', 2, 5500.00, 0, 0, 1, 'Tangy and tropical with a bold black tea base, offering a mix of tartness and sweetness'),
(168, 'PeachOolongTea.jpg', 'Peach Onlong tea', 2, 5000.00, 0, 0, 1, 'Smooth and floral with a juicy peach sweetness and a slightly roasted oolong depth'),
(169, 'StrawberryGreenTea.jpg', 'Strawberry Green tea', 2, 4500.00, 0, 0, 1, 'Light and fruity with a natural berry sweetness and mild tartness'),
(170, 'Lychee&BlackTea.jpg', 'Lychee black tea', 2, 5000.00, 0, 0, 1, 'Sweet and floral with a tropical lychee aroma, balanced by the robustness of black tea'),
(171, 'strawberrymilktea.jpg', 'Strawberry Milk tea', 2, 5500.00, 0, 0, 1, 'Creamy and fruity with a rich strawberry flavor, often enhanced with a touch of sweetness'),
(172, 'chocolateMilktea.jpg', 'Chocolate Milk tea', 2, 8900.00, 0, 0, 1, 'Decadent and creamy with a cocoa-rich taste, blending well with the tea’s depth'),
(173, 'cheeseformmilktea.jpg', 'Cheese form milk tea', 2, 9500.00, 0, 0, 1, 'Sweet and creamy tea topped with a slightly salty, rich cheese foam for a unique contrast'),
(174, 'blueberrysoda.jpg', 'Blueberry Soda', 2, 5000.00, 0, 0, 1, 'Sweet and slightly tart with a deep berry flavor and fizzy carbonation'),
(175, 'grapesoda.jpg', 'Grape Soda', 2, 5500.00, 0, 0, 1, 'Bold and fruity with a candy-like grape sweetness and effervescence'),
(176, 'kiwisoda.jpg', 'Kiwi Soda', 2, 6000.00, 0, 0, 1, 'Tangy and tropical with a bright kiwi flavor and fizzy texture'),
(177, 'matchalimefizz.jpg', 'Matcha Lime Fizz', 2, 6500.00, 0, 0, 1, 'Earthy matcha meets zesty lime with a sparkling, refreshing finish'),
(189, '../img/68522bab160e0_matchaloverset.jpg', 'Matcha Lover Combo Set', 7, 13000.00, 0, 0, 0, 'A refreshing iced matcha latte, soft matcha chiffon cake, and a crunchy matcha cookie — the perfect trio for every matcha fan.'),
(190, '../img/sweetmorningSet.jpg', 'Sweet Morning Set', 7, 12000.00, 0, 0, 0, 'Start your day with a warm latte, a buttery croissant, and a soft cake slice — a gentle hug in every bite and sip.'),
(191, '../img/68522cd047d43_minibentbox.jpg', 'Mini Bento Snack Set', 7, 9500.00, 0, 0, 0, 'A delightful mix of fresh fruits, mini sandwiches, veggie bites, and a sweet treat — perfectly packed for light, happy snacking.'),
(192, '../img/68522d2931c08_StrawberryDreamComboSet.jpg', 'Strawberry Dream Combo Set', 7, 16000.00, 0, 0, 0, 'A sweet strawberry drink, soft strawberry cake slice, and a pink cake pop — a pretty-in-pink treat that’s as dreamy as it sounds.'),
(193, '../img/68522da8a3787_Choco Mood Set.jpg', 'Choco Mood Set', 7, 21000.00, 0, 0, 0, 'Indulge in a rich chocolate latte, a decadent slice of chocolate cake, and a crunchy choco cookie — the ultimate treat for your chocolate cravings.\r\n\r\n'),
(194, '../img/68522de60c0a2_teaandtoast.jpg', 'Tea & Toast Set', 7, 16000.00, 0, 0, 0, 'A comforting cup of hot tea served with buttery toast and your choice of jam — a warm, classic start to your day.'),
(195, '../img/6852378ca619f_LightLunchSet.jpg', 'Light Lunch Set', 7, 13000.00, 0, 0, 0, 'A perfect midday refresh — enjoy a fresh veggie wrap, a smooth Americano, and a sweet chocolate cake slice to keep you energized and satisfied.\r\n'),
(196, '../img/685238122af6d_CreamyWhiteSet.jpg', 'Creamy White Set', 7, 14500.00, 0, 0, 0, 'Indulge in a velvety vanilla latte or creamy coconut milk drink paired with a luscious white chocolate cake and buttery cookies — a dreamy treat for creamy flavor lovers.\r\n'),
(197, '../img/6852383b3dec7_WeekendCozySet.jpg', 'Weekend Cozy Set', 7, 9000.00, 0, 0, 0, 'Relax and unwind with a comforting hot tea, a flaky buttery croissant, and a slice of rich chocolate cake — the perfect trio to savor your weekend moments.\r\n'),
(198, '../img/6852388586c5a_dateSet.jpg', 'Date Set', 7, 30400.00, 0, 0, 0, 'Share a cozy moment with two drinks, a slice of decadent cake, and a pair of delicate cake Pop — perfect for sweet conversations and special memories.\r\n'),
(199, '../img/685238a67db66_happyhourminiset.jpg', 'happy hour mini set', 7, 10000.00, 0, 0, 0, 'A delightful mix of bite-sized treats and a refreshing drink — perfect for quick pick-me-ups and cheerful moments anytime.\r\n'),
(200, '../img/685238c83ab51_UrbanClassicSet.jpg', 'Urban Classic Set', 7, 13500.00, 0, 0, 0, 'Start your day or take a refreshing break with a bold Americano, flaky buttery croissant, rich chocolate cake, and a fresh veggie wrap — a perfect blend of classic flavors for the modern city vibe.\r\n'),
(202, '../img/68594a7f672f4_LatteLullaby.jpg', 'Latte Lullaby', 1, 8900.00, 0, 0, 0, 'Latte Lullaby — Where every sip is a gentle melody. Enjoy cozy, handcrafted lattes made to soothe your soul and brighten your day.');

-- --------------------------------------------------------

--
-- Table structure for table `react`
--

CREATE TABLE `react` (
  `react_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `react`
--

INSERT INTO `react` (`react_id`, `user_id`, `blog_id`, `type`) VALUES
(1, 2, 1, 'heart'),
(2, 2, 2, 'heart'),
(3, 1, 1, 'heart'),
(4, 2, 3, 'heart'),
(5, 2, 4, 'heart'),
(6, 2, 5, 'heart'),
(7, 5, 1, 'heart'),
(8, 3, 6, 'heart'),
(9, 3, 5, 'heart'),
(10, 3, 1, 'heart'),
(11, 3, 8, 'heart'),
(13, 3, 13, 'heart'),
(14, 3, 16, 'heart'),
(15, 3, 17, 'heart'),
(16, 3, 25, 'heart'),
(17, 3, 7, 'heart'),
(18, 3, 15, 'heart'),
(19, 3, 22, 'heart'),
(20, 37, 3, 'heart'),
(21, 37, 17, 'heart'),
(22, 3, 41, 'heart'),
(23, 41, 6, 'heart'),
(24, 41, 8, 'heart'),
(25, 43, 21, 'heart'),
(26, 43, 3, 'heart'),
(27, 43, 4, 'heart'),
(28, 37, 6, 'heart'),
(29, 37, 41, 'heart'),
(30, 48, 15, 'heart'),
(31, 37, 15, 'heart'),
(32, 37, 2, 'heart'),
(33, 37, 1, 'heart'),
(34, 50, 1, 'heart'),
(36, 50, 41, 'heart'),
(37, 51, 1, 'heart');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(11) NOT NULL,
  `region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region`) VALUES
(1, 'Latha'),
(2, 'Lanmadaw'),
(3, 'Ahlon'),
(4, 'Bahan'),
(5, 'Botataung'),
(6, 'Dagon'),
(7, 'Dawbon'),
(8, 'Takayta'),
(9, 'Hlaing'),
(10, 'San Chaung'),
(11, 'Insein'),
(12, 'Pazundaung'),
(13, 'Pabedan'),
(14, 'Kyauktada'),
(15, 'Hlaingthaya'),
(16, 'Mayangone'),
(17, 'Mingaladon'),
(18, 'Shwepyithar'),
(19, 'Thingangyun'),
(20, 'Yankin'),
(21, 'Dagon Seikkan'),
(22, 'Tamwe'),
(23, 'Thanlyin'),
(24, 'Thingangyun'),
(25, 'Thuwunna'),
(26, 'Kamayut'),
(27, 'Kyeemyindaing');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_msg` text NOT NULL,
  `rating` varchar(20) DEFAULT NULL,
  `review_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `user_id`, `review_msg`, `rating`, `review_date`) VALUES
(1, 3, '☕️ The caramel macchiato is heavenly! My go-to every morning.\r\n', '★★★☆☆', '2025-05-31 12:30:00'),
(2, 3, '🌿 Matcha latte is so smooth and refreshing — love the earthy flavor!\r\n\r\n\r\n', '★★★★☆', '2025-05-31 15:30:00'),
(3, 4, '🍫 Chocolate latte hits just right. Sweet, creamy, and comforting.\r\n', '★★★☆☆', '2025-05-31 15:00:00'),
(4, 7, '❄️ Iced espresso keeps me alive on busy days — strong and bold!\r\n', '★★★★☆', '2025-05-31 13:33:22'),
(5, 10, '🌞 Flat white is perfection in a cup. Velvety and rich!', '★★★★☆', '2025-05-31 10:22:00'),
(6, 19, '🌬️ Cold brew is insanely good. Chill vibes in every sip.\r\n', '★★★☆☆', '2025-05-31 15:22:00'),
(7, 14, '🍓 Strawberry latte is a sweet dream. Tastes like summer!\r\n', '★★★☆☆', '2025-05-31 23:12:00'),
(8, 15, '🌰 Hazelnut cappuccino has that perfect nutty kick. So good!\r\n', '★★★★★', '2025-05-31 16:18:19'),
(9, 8, '🍯 Honey latte is gentle and warm — like a hug in a mug.\r\n', '★★★☆☆', '2025-05-31 16:18:19'),
(10, 17, '🧊 Espresso tonic is unexpectedly amazing — crisp and energizing!\r\n', '★★★☆☆', '2025-05-31 16:18:00'),
(11, 7, 'The caramel macchiato is heavenly! My go-to every morning', '★★★★★', '2025-05-31 16:18:00'),
(12, 7, 'The iced matcha latte is refreshing, but a bit too sweet for my taste.', '★★★★☆', '2025-05-31 12:30:00'),
(13, 18, 'Dirty Matcha is the perfect balance of smooth matcha and rich espresso. It’s my favorite pick-me-up!', '★★★★★', '2025-05-31 12:21:13'),
(14, 6, 'The Iced Latte is refreshingly smooth and creamy — perfect for a hot day!', '★★★★☆', '2025-05-31 13:33:22'),
(15, 18, '\"Sweet, creamy, and perfectly chilled — the Iced Caramel Latte is a delicious treat that never disappoints!', '★★★☆☆', '2025-05-31 07:12:19'),
(18, 1, 'The matcha latte was so fresh and calming. Perfect for a rainy day!', '★★★★★', '2025-06-05 10:26:43'),
(19, 2, 'Service was quick and friendly. Loved the cozy interior!', '★★★★☆', '2025-06-04 10:23:17'),
(21, 9, 'Absolutely love this café! My new favorite study spot.', '★★★★★', '2025-06-02 11:42:44'),
(22, 11, 'Great vibe, but my chocolate drink wasn’t hot enough.', '★★★☆☆', '2025-06-01 13:28:34'),
(23, 13, 'The barista recommended the matcha latte, and it was amazing!', '★★★★☆', '2025-05-30 11:13:32'),
(24, 18, 'Very peaceful place with great Wi-Fi. Ideal for remote work.', '★★★★☆', '2025-05-29 05:32:20'),
(25, 20, 'I think the red velvet cake pairs well with their matcha.', '★★★★★', '2025-05-28 01:00:00'),
(26, 23, 'The latte art is beautiful! Very Instagrammable place.', '★★★★★', '2025-05-27 12:00:00'),
(28, 3, 'The drink was refreshing and beautifully presented. Just a bit too sweet for my taste.', '★★★★☆', '2025-06-07 18:41:39'),
(30, 10, 'Absolutely loved it! The matcha latte was the best I’ve ever had.', '★★★★★', '2025-06-01 10:23:00'),
(31, 12, 'Friendly staff and cozy space. One of my favorite places to relax.', '★★★★☆', '2025-05-30 12:32:34'),
(32, 14, 'Waited too long for my order, and the drink wasn’t warm enough.', '★★☆☆☆', '2025-05-18 06:13:00'),
(34, 21, 'A hidden gem! Perfect for studying or catching up with friends.', '★★★★★', '2025-06-03 08:00:00'),
(35, 24, 'Lovely ambiance and great service. Will definitely return.', '★★★★☆', '2025-05-25 15:26:14'),
(36, 26, 'Overpriced for what you get. The portion was small, but taste was okay.', '★★☆☆☆', '2025-05-20 17:18:44'),
(37, 30, 'Everything was excellent. Just wish they had more vegan options.', '★★★★☆', '2025-06-05 07:43:12'),
(39, 23, 'Absolutely loved the atmosphere and the coffee! Will definitely come back.', '★★★★★', '2025-06-07 06:25:41'),
(40, 3, 'Absolutely loved the atmosphere and the coffee! Will definitely come back.', '★★★★★', '2025-05-15 09:39:44'),
(41, 7, 'Great taste and friendly staff, but the wait time was a bit long.', '★★★★☆', '2025-05-12 06:13:23'),
(42, 12, 'Coffee was decent, but I expected a little more flavor. Nice place though.', '★★★☆☆', '2025-05-10 09:00:00'),
(43, 9, 'Best café experience in town! Cozy and perfect for working or relaxing.', '★★★★★', '2025-05-20 14:00:00'),
(44, 5, 'Service was slow and my order was mixed up. Hopefully it improves next time.', '★★☆☆☆ ', '2025-05-08 07:00:00'),
(45, 3, 'Lovely place! The matcha latte was perfect and the staff was very welcoming.', '★★★★☆', '2025-06-07 07:24:00'),
(46, 3, 'Great atmosphere and friendly service. The strawberry latte was delicious!', '★★★★☆', '2025-06-07 13:34:31'),
(47, 6, 'Nice place to hang out. Coffee was smooth and the staff was very attentive.', '★★★★★', '2025-06-10 09:00:36'),
(48, 21, 'Good ambiance and delicious pastries. Will come back for sure!', '★★★★☆', '2025-06-11 09:14:00'),
(49, 3, 'Friendly staff and cozy environment. Coffee was just perfect.', '★★★★★', '2025-06-07 18:00:00'),
(50, 12, 'The product quality was disappointing and didn\'t match the description.', '★☆☆☆☆', '2025-05-12 12:00:00'),
(51, 15, 'Customer service was unhelpful and slow to respond.', '★★☆☆☆', '2025-04-30 10:00:00'),
(52, 7, 'Delivery was late and the packaging was damaged.', '★★☆☆☆', '2025-04-15 07:30:32'),
(53, 9, 'Not satisfied with the taste, expected much better.', '★★☆☆☆', '2025-04-10 04:22:34'),
(54, 11, 'Item stopped working within a week, very poor durability.', '★☆☆☆☆', '2025-03-28 06:27:00'),
(55, 18, 'Website was confusing, hard to place an order.', '★★☆☆☆', '2025-03-22 09:31:00'),
(56, 20, 'Colors were different from the pictures, quite misleading.', '★★☆☆☆', '2025-03-18 07:00:00'),
(57, 14, 'The product was okay but overpriced for what it is.', '★★★☆☆', '2025-03-10 08:12:00'),
(58, 19, 'Received the wrong item and had trouble getting a refund.', '★☆☆☆☆', '2025-02-28 08:39:37'),
(59, 20, 'Customer support didn’t resolve my issue after several attempts.', '★★☆☆☆', '2025-02-20 09:00:00'),
(63, 3, 'your matcha is really good', '★★★★★', '2025-06-11 21:34:50'),
(64, 3, 'healthy option is my fav!', '★★★★☆', '2025-06-12 18:13:16'),
(66, 37, 'The bakery items are so cool but little late when delivery!\r\n', '★★★☆☆', '2025-06-20 18:56:53'),
(67, 39, 'The matcha latte I got from Midori Café was absolutely delicious — so creamy and just the right amount of sweetness. I love how the café gives a free drink based on the flag test — I got green, and it felt so personalized!\r\n\r\nThe only reason I gave 4 stars instead of 5 is because my order took a bit longer than expected. But overall, I’m a big fan and will definitely come back again. 💚\r\n\r\n', '★★★★☆', '2025-06-23 18:53:53'),
(68, 42, 'Food is so delicious.Drinks are so good.', '★★★★★', '2025-06-25 08:55:03'),
(71, 43, 'The food is so good and the drink too.\r\nThe customer service is good and the website is easy to use!!!!\r\nI really recommend this Midori cafe!!!!\r\nYou should try this out!!!!!!', '★★★★☆', '2025-06-25 09:25:44'),
(78, 50, 'hello', '★★★★☆', '2025-07-15 09:30:57'),
(79, 51, 'hi', '★★★★☆', '2025-10-13 17:57:53'),
(81, 52, 'hi', '★★★★★', '2026-02-12 23:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) DEFAULT NULL,
  `profile` varchar(255) NOT NULL,
  `drinks` varchar(20) NOT NULL,
  `gift_taken` varchar(10) NOT NULL DEFAULT 'No',
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `cpassword`, `profile`, `drinks`, `gift_taken`, `status`) VALUES
(1, 'Izzell', 'jacksonizzell@gmail.com', 'cafe123', 'cafe123', 'img/682c7e964549e_chibi.jpg', 'Strawberry Latte', 'Yes', 'inactive'),
(2, 'Jue', 'juju235@gmail.com', 'juju123', 'juju123', 'img/1749091910_yibogaze.jpg', 'Strawberry Latte', 'Yes', 'active'),
(3, 'Lia', 'Lalia456@gmail.com', 'cafelover456', 'cafelover456', 'img/682c8349d7dd0_3c7a24f6a0b53153493e6dd3845582a9.jpg', 'Matcha Latte', 'Yes', 'inactive'),
(4, 'Mo Mo', 'momo345@gmail.com', 'momo345', 'momo345', 'img/68305dface723_photo_2025-02-09_22-27-11.jpg', 'Chocolate Latte', 'Yes', 'inactive'),
(5, 'May', 'may678@gmail.com', 'maymay67890', 'maymay67890', 'img/6831fd674d7cd_Screenshot (344).png', 'Matcha Latte', 'Yes', 'inactive'),
(6, 'Gorgier', 'Gorgier@gmail.com', '12345', '12345', 'img/68357bc6eb391_anime.jpg', 'Strawberry Latte', 'Yes', 'inactive'),
(7, 'anime', 'anime@gmail.com', 'anime375', 'anime375', 'img/68357be1ce930_anime.jpg', 'Chocolate Latte', 'Yes', 'active'),
(8, 'Yadanar', 'yadanar345@gmail.com', 'yadanar456', 'yadanar456', 'img/68357c37ac7d8_23214976d661b547a410b4cf9efd1aa5.jpg', 'Chocolate Latte', 'Yes', 'inactive'),
(9, 'Melisa', 'melisa123@gmail.com', 'melisa678', 'melisa678', 'img/6835bca96d081_58c43830365d8fb2eab1a612a64d7c4e.jpg', 'Chocolate Latte', 'Yes', 'active'),
(10, 'melis', 'melisa990@gmail.com', 'melisa678', 'melisa678', 'img/6835bd0a621a7_chibi.jpg', 'Strawberry Latte', 'No', 'active'),
(11, 'Yati', 'oo@gmail.com', '12345', '12345', 'img/6835c09e29ab8_23214976d661b547a410b4cf9efd1aa5.jpg', 'Strawberry Latte', 'No', 'active'),
(12, 'Melody', 'mhg333@gmail.com', '12345', '12345', 'img/6835c6b215ce0_0210602e1f2b408e644294f7923e7ca4.jpg', 'Chocolate Latte', 'Yes', 'active'),
(13, 'Melisa', 'ert456@gmail.com', '12345', '12345', 'img/6835c709b4489_23214976d661b547a410b4cf9efd1aa5.jpg', 'Matcha Latte', 'Yes', 'active'),
(14, 'Tulip', 'tulip890@gmail.com', '12345', '12345', 'img/6835c7501779d_cbceed3181666bc07562b6c8e86fce3c.jpg', 'Matcha Latte', 'No', 'active'),
(15, 'mltusa', 'mltusa@gmail.com', '12345', '12345', 'img/6835c7c76e93a_chibi.jpg', 'Chocolate Latte', 'Yes', 'inactive'),
(16, 'Melody', 'melod3@gmail.com', '12345', '12345', 'img/6835c7fd2f4ab_chibi.jpg', 'Matcha Latte', 'No', 'inactive'),
(17, 'query', 'quert@gmail.com', '12345', '12345', 'img/6835c8b3287f3_c9a30c66c622eddc9fe2b7de435279e9.jpg', 'Strawberry Latte', 'No', 'inactive'),
(18, 'Medusa', 'Medusa123@gmail.com', '12345', '12345', 'img/6835cd087337f_05332c13b3a381443aa312df2fbd869c.jpg', 'Matcha Latte', 'No', 'active'),
(19, 'Mya', 'mya123@gmail.com', '12345', '12345', 'img/68366d8431d83_7c54ec134ae6dda37f46b95087d1b272.jpg', 'Matcha Latte', 'Yes', 'inactive'),
(20, 'Yin moe', 'yinmoe@gmail.com', '12345', '12345', 'img/683fbb0d0fbe5_cbceed3181666bc07562b6c8e86fce3c.jpg', 'Chocolate Latte', 'No', 'active'),
(21, 'Pon Pon', 'myashwe@gmail.com', '12345', '12345', 'img/683fbb8160955_2f2d2c150881b0d40688bdcb7fd2c3b4.jpg', 'Strawberry Latte', 'No', 'active'),
(22, 'Hsu', 'hsu123@gmail.com', '12345', '12345', 'img/683fbbb03d504_c9a30c66c622eddc9fe2b7de435279e9.jpg', 'Matcha Latte', 'Yes', 'inactive'),
(23, 'Jessica', 'Jezz123@gmail.com', '12345', '12345', 'img/68407393950bc_chibi.jpg', 'Strawberry Latte', 'No', 'active'),
(24, 'Izzell', 'izz@gmail.com', '12345', '12345', 'img/684074024f991_images.jpeg', 'Matcha Latte', 'Yes', 'inactive'),
(25, 'Mali', 'mama@gmail.com', '12345', '12345', 'img/684075452cdb1_666cef33089db06d5232069b03940dcb.jpg', 'Strawberry Latte', 'No', 'inactive'),
(26, 'Meow', 'meow@gmail.com', '12345', '12345', 'img/684076a3e0979_68fa596cbe0e279c8bb0644c3c12d463.jpg', 'Strawberry Latte', 'Yes', 'active'),
(27, 'Julia', 'juju@gmail.com', '12345', '12345', 'img/684076df7b08c_anime.jpg', 'Matcha Latte', 'No', 'active'),
(28, 'Isabella', 'hsuyatizaw@gmail.com', '12345', '12345', 'img/684076fa85611_857b6f32cba07eef797e01bd7387684f.jpg', 'Strawberry Latte', 'No', 'inactive'),
(29, 'sad', 'sad123@gmail.com', '12345', '12345', 'img/684077bb985f2_0baf0ad70ac48e7a94c243b7396387bc.jpg', 'Strawberry Latte', 'Yes', 'active'),
(30, 'Dar Dar', 'dar123@gmail.com', '12345', '12345', 'img/68410d056ffee_7c54ec134ae6dda37f46b95087d1b272.jpg', 'Chocolate Latte', 'Yes', 'active'),
(31, 'Saito', 'Sai123@gmail.com', '12345', '12345', 'img/684b09b72b455_684adc6c92c50_68305dface723_photo_2025-02-09_22-27-11.jpg', 'Matcha Latte', 'No', 'active'),
(32, 'Lia', 'li@gmail.com', '12345', '12345', 'img/6850f091633be_05332c13b3a381443aa312df2fbd869c.jpg', 'Strawberry Latte', 'No', 'active'),
(33, 'yin moe', 'jack@gmail.com', '12345', '12345', 'img/6850f691b1eac_666cef33089db06d5232069b03940dcb.jpg', 'Strawberry Latte', 'Yes', 'active'),
(34, 'Hsu', 'izzell@gmail.com', '12345', '12345', 'img/6850f6b49a217_173b98edda290e016bf384e79058af0d.jpg', 'Strawberry Latte', 'No', 'active'),
(35, 'Izzell', 'qqql@gmail.com', '12345', '12345', 'img/6850f6d565447_23214976d661b547a410b4cf9efd1aa5.jpg', 'Matcha Latte', 'No', 'active'),
(36, 'Jessica', 'Jess123@gmail.com', 'jess123', 'jess123', 'img/685140617e9d2_d68131346ebb99f736584c56d0457604.jpg', 'Chocolate Latte', 'No', 'active'),
(37, 'Lia', 'Lia123@gmail.com', 'Lia123', 'Lia123', 'img/1752501111_6846c95ea6e95_photo_2025-05-25_21-27-53.jpg', 'Matcha Latte', 'No', 'active'),
(38, 'Jessica', 'Jesss@gmail.com', 'Jess123', 'Jess123', 'img/6853eb9e9a52e_ecc6aa7e0b6671eed1df23e3f766dd96.jpg', 'Matcha Latte', 'No', 'active'),
(39, 'Elara', 'elara@gmail.com', '12345', '12345', 'img/685945f89545c_lady.jpg', 'Matcha Latte', 'No', 'active'),
(40, 'Thihathway', 'thiha19thway@gmail.com', 'thihathway777', 'thihathway777', 'img/685b5b77e34c3_test3.jpg', 'Matcha Latte', 'No', 'active'),
(41, 'Yin Moe Aye', 'ymoe90692@gmail.com', 'yinmoe12', 'yinmoe12', 'img/685b5b9d61bf3_hus.jpg', 'Strawberry Latte', 'Yes', 'active'),
(42, 'Miri', 'mirichan@gmail.com', '767676', '767676', 'img/1750821287_miri.jpg', 'Strawberry Latte', 'No', 'active'),
(43, 'Khin Khin', 'khinkhin22@gamil.com', '12345', '12345', 'img/685b5f2a76a12_meow.jpg', 'Matcha Latte', 'No', 'active'),
(44, 'Mo Mo', 'eyka17828@gmail.com', 'momo9785', 'momo9785', 'img/685b62a080eee_kkk.jpg', 'Chocolate Latte', 'No', 'active'),
(45, 'thin', 'thin@gmail.com', '772025', '772025', 'img/686b3b122aa46_CHANEL Pre-Owned 2021 Mini Crossbody Bag _ Black _ FARFETCH.jpg', 'Strawberry Latte', 'No', 'active'),
(46, 'Htet Htet', 'hhhlaing304@gmail.com', '123456', '123456', 'img/686b3b24e0309_download (1).jpg', 'Strawberry Latte', 'No', 'active'),
(47, 'tinmayhtet', 'htet@gmail.com', '7777', '7777', 'img/686b3cad56bdc_Chanel cf handle.jpg', 'Matcha Latte', 'No', 'active'),
(48, 'Jessica', 'Jessica123@gmail.com', 'jezz123', 'jezz123', 'img/1752410780_685b5b77e34c3_test3.jpg', 'Matcha Latte', 'No', 'active'),
(49, 'Jone', 'jone@gmail.com', '12345', '12345', 'img/687541b63cb7c_2f2d2c150881b0d40688bdcb7fd2c3b4.jpg', 'Matcha Latte', 'No', 'active'),
(50, 'Jenny', 'jenny123@gmail.com', 'jenny123', 'jenny123', 'img/1752547379_2f2d2c150881b0d40688bdcb7fd2c3b4.jpg', 'Matcha Latte', 'Yes', 'active'),
(51, 'Lia', 'khant123@gmail.com', '12345', '12345', 'img/68ece1c1398bd_authum.jpg', 'Chocolate Latte', 'Yes', 'inactive'),
(52, 'Liaa', 'Lia89@gmail.com', 'Lia12', 'Lia12', 'img/698e049ea93cc_visionboard.png', 'Strawberry Latte', 'No', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `admin_ids` (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rregion_id` (`region_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`orders_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `category_id` (`categories_id`);

--
-- Indexes for table `react`
--
ALTER TABLE `react`
  ADD PRIMARY KEY (`react_id`),
  ADD KEY `uuser_id` (`user_id`),
  ADD KEY `bblog_id` (`blog_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `react`
--
ALTER TABLE `react`
  MODIFY `react_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `admin_ids` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE;

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `rregion_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`products_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`categories_id`) ON DELETE CASCADE;

--
-- Constraints for table `react`
--
ALTER TABLE `react`
  ADD CONSTRAINT `bblog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `uuser_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
