-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-12-28 08:30:40
-- 服务器版本： 5.6.21-log
-- PHP Version: 5.5.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- 表的结构 `chatContent`
--

CREATE TABLE `chatContent` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '聊天信息 id',
  `userId` int(11) DEFAULT NULL COMMENT '发布人ID',
  `chatId` int(11) DEFAULT NULL COMMENT '聊天室ID',
  `chatBody` varchar(140) DEFAULT NULL COMMENT '聊天内容',
  `createTime` datetime DEFAULT NULL COMMENT '发布时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `chatContent`
--

INSERT INTO `chatContent` (`id`, `userId`, `chatId`, `chatBody`, `createTime`) VALUES
(175, 135, 3, '应华', '2018-09-28 21:25:21'),
(176, 135, 3, '再试试', '2018-09-28 21:27:51'),
(177, 135, 4, '餐厅', '2018-09-28 21:29:29'),
(178, 135, 3, '75675', '2018-09-28 22:04:47'),
(179, 135, 3, '8678', '2018-09-28 22:07:46'),
(180, 135, 3, '987979', '2018-09-28 22:07:50'),
(181, 135, 3, '97897979', '2018-09-28 22:07:54'),
(182, 135, 3, '98789797', '2018-09-28 22:07:56'),
(183, 135, 3, '978979897', '2018-09-28 22:07:57'),
(184, 135, 3, '978979', '2018-09-28 22:08:32'),
(185, 141, 3, '吃美食', '2018-09-28 22:20:38'),
(186, 141, 3, '十九大报告指出，必须“毫不动摇巩固和发展公有制经济，毫不动摇鼓励、支持、引导非公有制经济发展”。此次总书记进一步强调，“我们毫不动摇地发展公有制经济，也毫不动摇地支持、保护、扶持民营经济发展、非公有制经济发展。”不管是“鼓励、支持、引导”还是“支持、保护、扶持”，对民营经济、非公', '2018-09-28 22:30:42'),
(187, 141, 3, '佛挡杀佛', '2018-09-28 22:30:57'),
(188, 135, 3, '呵呵', '2018-09-28 22:51:51'),
(189, 135, 3, '有点问题', '2018-09-28 22:52:01'),
(190, 135, 3, '有点烦', '2018-09-28 22:52:09'),
(191, 135, 3, '延时加载', '2018-09-28 22:54:51'),
(192, 141, 3, '还是失败了', '2018-09-28 22:56:07'),
(193, 135, 3, '没有吧', '2018-09-28 23:01:10'),
(194, 141, 3, '有吗?', '2018-09-28 23:01:58'),
(195, 135, 3, '是吗', '2018-09-28 23:02:44'),
(196, 135, 3, '梅耶尔', '2018-09-28 23:17:15'),
(197, 135, 5, '没有(>﹏<)', '2018-09-28 23:18:06'),
(198, 64, 3, '难为情', '2018-09-29 08:35:41'),
(199, 108, 3, '1', '2018-09-29 08:36:08'),
(200, 108, 3, '2', '2018-09-29 08:36:13'),
(201, 108, 3, '2', '2018-09-29 08:36:26'),
(202, 112, 4, '请', '2018-09-29 08:36:27'),
(203, 90, 3, '看看', '2018-09-29 08:36:29'),
(204, 131, 3, '恢复出厂', '2018-09-29 08:36:32'),
(205, 116, 3, '好像能说话', '2018-09-29 08:36:38'),
(206, 113, 4, '？？？？', '2018-09-29 08:36:49'),
(207, 112, 5, '请', '2018-09-29 08:36:53'),
(208, 143, 3, '。', '2018-09-29 08:37:00'),
(209, 112, 5, '从仙侠世界归来', '2018-09-29 08:37:04'),
(210, 90, 3, '哦呦', '2018-09-29 08:37:16'),
(211, 145, 3, '咦', '2018-09-29 08:37:45'),
(212, 81, 4, '我', '2018-09-29 08:37:55'),
(213, 147, 3, '我吃饱了撑着', '2018-09-29 08:37:58'),
(214, 147, 3, '信息发不出去', '2018-09-29 08:38:24'),
(215, 145, 4, '啥', '2018-09-29 08:38:39'),
(216, 132, 4, '大家好', '2018-09-29 08:38:47'),
(217, 128, 3, '我在', '2018-09-29 08:38:58'),
(218, 145, 3, '啥', '2018-09-29 08:39:14'),
(219, 148, 3, '去去去', '2018-09-29 08:39:18'),
(220, 152, 3, '哈哈哈', '2018-09-29 08:39:59'),
(221, 148, 3, '1111', '2018-09-29 08:40:15'),
(222, 148, 4, '滴滴滴', '2018-09-29 08:40:23'),
(223, 156, 3, '呃呃呃', '2018-09-29 08:40:24'),
(224, 144, 5, '哈哈哈', '2018-09-29 08:40:28'),
(225, 157, 3, ' 。', '2018-09-29 08:40:52'),
(226, 144, 5, '哈哈哈', '2018-09-29 08:41:01'),
(227, 152, 3, '哈哈哈', '2018-09-29 08:41:17'),
(228, 150, 3, '/', '2018-09-29 08:41:17'),
(229, 158, 3, '秀啊', '2018-09-29 08:41:20'),
(230, 146, 4, '。。。。', '2018-09-29 08:41:29'),
(231, 144, 3, '哈哈哈', '2018-09-29 08:41:35'),
(232, 150, 3, '嗯', '2018-09-29 08:41:37'),
(233, 155, 3, '发消息', '2018-09-29 08:41:52'),
(234, 155, 4, '?', '2018-09-29 08:42:00'),
(235, 155, 5, '⊙▽⊙', '2018-09-29 08:42:10'),
(236, 146, 4, '，，，，', '2018-09-29 08:42:15'),
(237, 112, 4, '请', '2018-09-29 08:42:22'),
(238, 158, 4, '啊', '2018-09-29 08:43:04'),
(239, 143, 4, '啦啦', '2018-09-29 08:43:26'),
(240, 146, 4, '，，，', '2018-09-29 08:43:27'),
(241, 159, 3, '大家好', '2018-09-29 08:43:36'),
(242, 148, 3, '滴滴滴有人吗', '2018-09-29 08:43:45'),
(243, 145, 3, '试试', '2018-09-29 08:43:50'),
(244, 157, 3, '。', '2018-09-29 08:43:55'),
(245, 158, 3, '好', '2018-09-29 08:44:04'),
(246, 146, 4, '。。。。', '2018-09-29 08:44:07'),
(247, 144, 3, '哈哈哈', '2018-09-29 08:44:07'),
(248, 147, 3, '嘿嘿', '2018-09-29 08:44:07'),
(249, 153, 3, '123', '2018-09-29 08:44:08'),
(250, 143, 3, '。。', '2018-09-29 08:44:12'),
(251, 145, 3, '啥', '2018-09-29 08:44:12'),
(252, 108, 3, '1', '2018-09-29 08:44:13'),
(253, 131, 3, '几号放假的', '2018-09-29 08:44:21'),
(254, 146, 4, '，。。，', '2018-09-29 08:44:21'),
(255, 159, 3, '11', '2018-09-29 08:44:21'),
(256, 157, 3, '1', '2018-09-29 08:44:27'),
(257, 147, 3, '走走', '2018-09-29 08:44:30'),
(258, 159, 4, '大家好', '2018-09-29 08:44:36'),
(259, 146, 3, '，', '2018-09-29 08:44:36'),
(260, 148, 3, '滴滴滴', '2018-09-29 08:44:38'),
(261, 143, 3, '。。。', '2018-09-29 08:44:40'),
(262, 112, 5, '阿', '2018-09-29 08:44:47'),
(263, 157, 3, '1', '2018-09-29 08:44:48'),
(264, 145, 3, '没有', '2018-09-29 08:45:08'),
(265, 154, 3, '123', '2018-09-29 08:45:33'),
(266, 161, 3, '。', '2018-09-29 08:46:24'),
(267, 78, 3, '123', '2018-09-29 08:46:58'),
(268, 152, 3, '哟哟哟哟', '2018-09-29 08:47:06'),
(269, 142, 3, '波哥', '2018-09-29 08:48:35'),
(270, 145, 3, '没有', '2018-09-29 08:48:49'),
(271, 163, 15, '熊', '2018-09-29 08:49:07'),
(272, 161, 3, '1', '2018-09-29 08:49:12'),
(273, 146, 3, '，，，', '2018-09-29 08:49:35'),
(274, 150, 15, '。', '2018-09-29 08:49:55'),
(275, 148, 15, '滴滴', '2018-09-29 08:49:58'),
(276, 164, 15, '可以', '2018-09-29 08:49:59'),
(277, 146, 15, '，，，', '2018-09-29 08:50:01'),
(278, 144, 15, '哈哈哈', '2018-09-29 08:50:03'),
(279, 148, 15, '大哥好', '2018-09-29 08:50:09'),
(280, 161, 3, '1', '2018-09-29 08:50:12'),
(281, 158, 3, '啊', '2018-09-29 08:50:19'),
(282, 143, 3, '。。', '2018-09-29 08:50:19'),
(283, 163, 5, '了', '2018-09-29 08:50:20'),
(284, 159, 3, '11', '2018-09-29 08:50:20'),
(285, 148, 3, '滴', '2018-09-29 08:50:29'),
(286, 159, 3, '大家好', '2018-09-29 08:50:31'),
(287, 64, 15, '元宝这头像秀呀', '2018-09-29 08:50:35'),
(288, 146, 5, '，，', '2018-09-29 08:50:37'),
(289, 158, 15, '啊', '2018-09-29 08:50:37'),
(290, 143, 15, '。。', '2018-09-29 08:50:38'),
(291, 163, 3, 'ok', '2018-09-29 08:50:38'),
(292, 154, 15, '123', '2018-09-29 08:50:42'),
(293, 148, 4, '滴', '2018-09-29 08:50:43'),
(294, 78, 15, '测试', '2018-09-29 08:50:45'),
(295, 159, 15, '大家好', '2018-09-29 08:50:45'),
(296, 159, 15, '大家好', '2018-09-29 08:50:46'),
(297, 163, 15, 'ok', '2018-09-29 08:50:50'),
(298, 161, 15, '1', '2018-09-29 08:50:53'),
(299, 81, 15, '哈哈哈哈', '2018-09-29 08:50:53'),
(300, 81, 15, '哈哈哈哈', '2018-09-29 08:50:53'),
(301, 81, 15, '哈哈哈哈', '2018-09-29 08:50:53'),
(302, 155, 15, '?', '2018-09-29 08:50:54'),
(303, 142, 15, '巴巴', '2018-09-29 08:50:55'),
(304, 155, 15, '?', '2018-09-29 08:50:56'),
(305, 145, 15, '咦', '2018-09-29 08:50:58'),
(306, 147, 15, '呀', '2018-09-29 08:51:00'),
(307, 158, 15, '啊啊啊', '2018-09-29 08:51:01'),
(308, 119, 15, '。。。。', '2018-09-29 08:51:01'),
(309, 144, 5, '哈哈哈', '2018-09-29 08:51:03'),
(310, 148, 15, '嗯？', '2018-09-29 08:51:04'),
(311, 81, 4, '阿查哈', '2018-09-29 08:51:09'),
(312, 131, 15, '讲笑话', '2018-09-29 08:51:09'),
(313, 147, 3, '哈哈', '2018-09-29 08:51:14'),
(314, 144, 15, '哈哈哈', '2018-09-29 08:51:15'),
(315, 162, 15, '，', '2018-09-29 08:51:37'),
(316, 159, 3, '？', '2018-09-29 08:52:08'),
(317, 149, 15, '，，', '2018-09-29 08:52:11'),
(318, 145, 3, '啥', '2018-09-29 08:52:18'),
(319, 163, 4, 'lo', '2018-09-29 08:52:29'),
(320, 161, 4, '1', '2018-09-29 08:52:53'),
(321, 148, 15, '元宝', '2018-09-29 08:53:07'),
(322, 144, 15, '哈哈哈', '2018-09-29 08:53:19'),
(323, 144, 15, '哈哈哈', '2018-09-29 08:53:20'),
(324, 144, 15, '哈哈哈', '2018-09-29 08:53:22'),
(325, 165, 15, '大家好', '2018-09-29 08:53:43'),
(326, 166, 3, 'hhh', '2018-09-29 08:55:18'),
(327, 147, 3, '十九大报告写的不错', '2018-09-29 08:55:31'),
(328, 155, 15, '888888', '2018-09-29 08:56:22'),
(329, 158, 15, '大佬', '2018-09-29 08:56:30'),
(330, 158, 16, '哇', '2018-09-29 08:56:43'),
(331, 144, 16, '哈哈哈', '2018-09-29 08:56:45'),
(332, 155, 16, '来呀，快活啊', '2018-09-29 08:57:01'),
(333, 148, 16, '哈哈哈', '2018-09-29 08:57:16'),
(334, 158, 16, '傻屌', '2018-09-29 08:57:17'),
(335, 145, 3, '没', '2018-09-29 08:57:45'),
(336, 155, 16, '元宝交易一波', '2018-09-29 08:57:49'),
(337, 168, 4, '了吧', '2018-09-29 08:58:18'),
(338, 158, 16, '交易个鬼', '2018-09-29 08:58:21'),
(339, 164, 15, '？？？', '2018-09-29 08:59:55'),
(340, 168, 5, '姐', '2018-09-29 09:00:08'),
(341, 169, 16, '？', '2018-09-29 09:00:25'),
(342, 169, 16, '？', '2018-09-29 09:00:30'),
(343, 158, 16, '啊', '2018-09-29 09:00:38'),
(344, 164, 15, '？？？', '2018-09-29 09:00:39'),
(345, 169, 16, '大家好', '2018-09-29 09:00:39'),
(346, 164, 16, '？？？', '2018-09-29 09:00:48'),
(347, 158, 16, '好吧', '2018-09-29 09:00:49'),
(348, 169, 16, '大家好', '2018-09-29 09:00:50'),
(349, 158, 16, '滚粗', '2018-09-29 09:01:03'),
(350, 135, 4, '55555555555', '2018-09-29 09:01:05'),
(351, 158, 16, '傻屌', '2018-09-29 09:01:08'),
(352, 112, 15, '请', '2018-09-29 09:01:08'),
(353, 148, 16, '元宝 ', '2018-09-29 09:01:11'),
(354, 169, 16, '大家好', '2018-09-29 09:01:18'),
(355, 112, 16, '请', '2018-09-29 09:01:22'),
(356, 135, 3, '43234242', '2018-09-29 09:01:27'),
(357, 148, 15, '滴滴滴', '2018-09-29 09:01:37'),
(358, 169, 15, '。', '2018-09-29 09:01:38'),
(359, 169, 16, '11111', '2018-09-29 09:01:48'),
(360, 155, 16, '元宝错过了一段孽缘', '2018-09-29 09:01:51'),
(361, 112, 16, '费', '2018-09-29 09:02:13'),
(362, 148, 16, '大家好', '2018-09-29 09:02:14'),
(363, 164, 16, '？？？', '2018-09-29 09:02:14'),
(364, 169, 16, '！！', '2018-09-29 09:02:18'),
(365, 135, 16, '43242424', '2018-09-29 09:02:22'),
(366, 148, 16, '滴滴滴', '2018-09-29 09:02:23'),
(367, 144, 16, '哈哈哈', '2018-09-29 09:02:24'),
(368, 158, 16, '啊啊啊', '2018-09-29 09:02:24'),
(369, 169, 16, '大家好', '2018-09-29 09:02:24'),
(370, 145, 16, '啊', '2018-09-29 09:02:28'),
(371, 158, 16, '啊啊啊', '2018-09-29 09:02:30'),
(372, 169, 16, '111', '2018-09-29 09:02:33'),
(373, 158, 15, '。。。', '2018-09-29 09:03:03'),
(374, 145, 5, '。。。', '2018-09-29 09:03:12'),
(375, 112, 15, '的', '2018-09-29 09:03:19'),
(376, 164, 16, '？？？', '2018-09-29 09:04:59'),
(377, 164, 16, '？？？', '2018-09-29 09:06:28'),
(378, 164, 16, '？？？', '2018-09-29 09:06:46'),
(379, 169, 16, '11', '2018-09-29 09:06:50'),
(380, 164, 16, '？？？', '2018-09-29 09:06:52'),
(381, 169, 16, '1111', '2018-09-29 09:06:58'),
(382, 164, 16, '？？？', '2018-09-29 09:06:58'),
(383, 169, 16, '大家好', '2018-09-29 09:07:17'),
(384, 135, 3, '534535353535435', '2018-09-29 09:07:19'),
(385, 145, 16, '发', '2018-09-29 09:07:21'),
(386, 148, 16, '？？', '2018-09-29 09:07:22'),
(387, 135, 3, '54353535435', '2018-09-29 09:07:26'),
(388, 164, 16, '？？？', '2018-09-29 09:07:35'),
(389, 169, 16, '大家好喜欢！好好', '2018-09-29 09:07:37'),
(390, 145, 3, '发了', '2018-09-29 09:07:52'),
(391, 169, 15, '。', '2018-09-29 09:07:55'),
(392, 147, 3, '爱吃啥吃啥', '2018-09-29 09:07:58'),
(393, 169, 3, '你在一起', '2018-09-29 09:08:26'),
(394, 169, 16, '111', '2018-09-29 09:08:42'),
(395, 169, 16, '111', '2018-09-29 09:08:43'),
(396, 164, 16, '？？？', '2018-09-29 09:08:45'),
(397, 169, 16, '111', '2018-09-29 09:08:47'),
(398, 169, 16, '111', '2018-09-29 09:08:50'),
(399, 169, 16, '111', '2018-09-29 09:08:51'),
(400, 169, 16, '111', '2018-09-29 09:08:51'),
(401, 169, 16, '111', '2018-09-29 09:08:54'),
(402, 169, 16, '111', '2018-09-29 09:08:54'),
(403, 169, 16, '111', '2018-09-29 09:08:55'),
(404, 169, 16, '111', '2018-09-29 09:08:56'),
(405, 169, 16, '111', '2018-09-29 09:08:56'),
(406, 169, 16, '111', '2018-09-29 09:08:57'),
(407, 112, 15, '阿', '2018-09-29 09:08:57'),
(408, 135, 3, '435435', '2018-09-29 09:09:08'),
(409, 158, 16, '呦', '2018-09-29 09:09:09'),
(410, 158, 16, '呦', '2018-09-29 09:09:11'),
(411, 158, 16, '呦', '2018-09-29 09:09:12'),
(412, 135, 3, '435435', '2018-09-29 09:09:12'),
(413, 158, 16, '呦', '2018-09-29 09:09:12'),
(414, 158, 16, '呦', '2018-09-29 09:09:12'),
(415, 135, 3, '435435', '2018-09-29 09:09:13'),
(416, 158, 16, '呦', '2018-09-29 09:09:13'),
(417, 135, 3, '435435', '2018-09-29 09:09:13'),
(418, 158, 16, '呦', '2018-09-29 09:09:13'),
(419, 135, 3, '435435', '2018-09-29 09:09:13'),
(420, 158, 16, '呦', '2018-09-29 09:09:13'),
(421, 158, 16, '呦', '2018-09-29 09:09:13'),
(422, 158, 16, '呦', '2018-09-29 09:09:13'),
(423, 158, 16, '呦', '2018-09-29 09:09:14'),
(424, 158, 16, '呦', '2018-09-29 09:09:14'),
(425, 158, 16, '呦', '2018-09-29 09:09:14'),
(426, 158, 16, '呦', '2018-09-29 09:09:14'),
(427, 158, 16, '呦', '2018-09-29 09:09:14'),
(428, 158, 16, '呦', '2018-09-29 09:09:14'),
(429, 158, 16, '呦', '2018-09-29 09:09:15'),
(430, 158, 16, '呦', '2018-09-29 09:09:15'),
(431, 158, 16, '呦', '2018-09-29 09:09:15'),
(432, 158, 16, '呦', '2018-09-29 09:09:15'),
(433, 158, 16, '呦', '2018-09-29 09:09:15'),
(434, 158, 16, '呦', '2018-09-29 09:09:16'),
(435, 112, 15, '请', '2018-09-29 09:09:16'),
(436, 158, 16, '呦', '2018-09-29 09:09:16'),
(437, 158, 16, '呦', '2018-09-29 09:09:16'),
(438, 158, 16, '呦', '2018-09-29 09:09:16'),
(439, 158, 16, '呦', '2018-09-29 09:09:17'),
(440, 112, 15, '请', '2018-09-29 09:09:17'),
(441, 158, 16, '呦', '2018-09-29 09:09:17'),
(442, 158, 16, '呦', '2018-09-29 09:09:17'),
(443, 158, 16, '呦', '2018-09-29 09:09:17'),
(444, 158, 16, '呦', '2018-09-29 09:09:18'),
(445, 158, 16, '呦', '2018-09-29 09:09:18'),
(446, 112, 15, '请', '2018-09-29 09:09:18'),
(447, 158, 16, '呦', '2018-09-29 09:09:18'),
(448, 112, 15, '请', '2018-09-29 09:09:18'),
(449, 158, 16, '呦', '2018-09-29 09:09:18'),
(450, 158, 16, '呦', '2018-09-29 09:09:18'),
(451, 158, 16, '呦', '2018-09-29 09:09:19'),
(452, 158, 16, '呦', '2018-09-29 09:09:19'),
(453, 158, 16, '呦', '2018-09-29 09:09:19'),
(454, 158, 16, '呦', '2018-09-29 09:09:19'),
(455, 112, 15, '请', '2018-09-29 09:09:19'),
(456, 158, 16, '呦', '2018-09-29 09:09:19'),
(457, 158, 16, '呦', '2018-09-29 09:09:20'),
(458, 112, 15, '请', '2018-09-29 09:09:20'),
(459, 158, 16, '呦', '2018-09-29 09:09:20'),
(460, 158, 16, '呦', '2018-09-29 09:09:20'),
(461, 158, 16, '呦', '2018-09-29 09:09:21'),
(462, 158, 16, '呦', '2018-09-29 09:09:23'),
(463, 158, 16, '呦', '2018-09-29 09:09:23'),
(464, 158, 16, '呦', '2018-09-29 09:09:23'),
(465, 135, 3, '捡拾失', '2018-09-29 09:09:55'),
(466, 135, 3, '7493287427492', '2018-09-29 09:10:05'),
(467, 161, 3, '1', '2018-09-29 09:10:21'),
(468, 142, 3, '擦擦擦测', '2018-09-29 09:10:28'),
(469, 112, 15, '请', '2018-09-29 09:10:29'),
(470, 145, 4, '有吗', '2018-09-29 09:10:32'),
(471, 112, 15, '请', '2018-09-29 09:10:39'),
(472, 161, 3, '好', '2018-09-29 09:10:44'),
(473, 142, 15, '123453', '2018-09-29 09:10:44'),
(474, 64, 3, '，', '2018-09-29 09:10:44'),
(475, 164, 16, '发了', '2018-09-29 09:10:53'),
(476, 131, 16, '哈哈哈', '2018-09-29 09:11:12'),
(477, 144, 16, '狗贼元宝', '2018-09-29 09:11:13'),
(478, 155, 16, '元宝错过了一段孽缘', '2018-09-29 09:11:29'),
(479, 158, 16, '主管不批，心情不好', '2018-09-29 09:11:41'),
(480, 112, 15, '请', '2018-09-29 09:13:54'),
(481, 128, 15, '发', '2018-09-29 09:14:03'),
(482, 128, 15, '发', '2018-09-29 09:14:05'),
(483, 163, 15, '？', '2018-09-29 10:05:19'),
(484, 135, 16, '我也没办法', '2018-09-29 10:50:21'),
(485, 135, 3, '哈哈', '2018-09-29 11:24:40'),
(486, 64, 3, '午饭吃什么(ﾟoﾟ;', '2018-09-29 11:26:34'),
(487, 154, 3, '123', '2018-09-29 13:49:09'),
(488, 154, 3, '1', '2018-09-29 13:49:17'),
(489, 143, 16, '可以么', '2018-09-29 16:24:25'),
(490, 154, 3, '394', '2018-09-29 19:35:30'),
(491, 182, 16, '啦啦', '2018-09-29 20:17:44'),
(492, 154, 3, '453453', '2018-09-30 15:26:10'),
(493, 154, 3, '45345345', '2018-09-30 15:26:16'),
(494, 154, 3, '453453453', '2018-09-30 15:26:20'),
(495, 154, 3, '16514653', '2018-09-30 15:26:27'),
(496, 154, 3, '453453', '2018-09-30 15:26:42'),
(497, 154, 3, '156314653', '2018-09-30 15:27:57'),
(498, 154, 3, '12313', '2018-09-30 15:28:05'),
(499, 154, 3, '1312', '2018-09-30 15:29:09'),
(500, 135, 3, '868678678', '2018-10-07 20:40:17'),
(501, 135, 5, '43243243234', '2018-10-08 14:27:04'),
(502, 203, 3, '123', '2018-10-08 16:20:50'),
(503, 203, 4, '巴斯夫', '2018-10-08 16:34:24'),
(504, 205, 3, 'hello word!!!', '2018-10-10 15:36:12'),
(505, 204, 4, '天马流星拳', '2018-10-10 19:18:51'),
(506, 204, 3, 'hi', '2018-10-10 19:19:14'),
(507, 135, 3, '343243242', '2018-11-26 11:43:34'),
(508, 135, 15, '42432432', '2018-11-26 11:43:45'),
(509, 135, 15, '4343242', '2018-11-26 11:45:35');

-- --------------------------------------------------------

--
-- 表的结构 `chatList`
--

CREATE TABLE `chatList` (
  `chatId` int(11) NOT NULL COMMENT '聊天室id',
  `title` varchar(20) DEFAULT NULL COMMENT '聊天室名称',
  `body` varchar(255) DEFAULT NULL COMMENT '聊天室简介 ',
  `createDate` date DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='聊天室列表';

--
-- 转存表中的数据 `chatList`
--

INSERT INTO `chatList` (`chatId`, `title`, `body`, `createDate`) VALUES
(3, '午饭吃什么', '午饭吃什么，作为一个千年难解的难题！是一个值得研究的方法。要不还是先来一杯奶茶。', '2018-09-27'),
(4, '我爱学习', '我们主要学习的有HTML,CSS,JAVASCRIPT,JQURTY,VUE', '2018-09-27'),
(5, 'Vue.js', 'Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，不仅易于上手，还便于与第三方库或既有项目整合。另一方面，当与现代化的工具链以及各种支持类库结合使用时，Vue 也完全能够为复杂的单页应用提供驱动。', '2018-09-27'),
(15, '轩辕十四', '四大王星', '2018-09-29'),
(16, '元宝', '元宝', '2018-09-29');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `userId` int(11) UNSIGNED NOT NULL COMMENT '自增ID',
  `userName` varchar(40) DEFAULT NULL COMMENT '用户名',
  `passWord` varchar(40) DEFAULT NULL COMMENT '用户密码',
  `userAvatar` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `userLevel` smallint(1) DEFAULT '1' COMMENT '用户等级。0表示超级管理员，1表示普通用户',
  `phoneNumber` varchar(11) DEFAULT NULL COMMENT '手机号码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`userId`, `userName`, `passWord`, `userAvatar`, `userLevel`, `phoneNumber`) VALUES
(135, '应华', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181126/1543203847.png', 0, '13758255527'),
(141, '美食家', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180928/1538144276.png', 1, NULL),
(142, '咖啡', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538229592.png', 1, '13758255527'),
(143, '南笙', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180929/1538181401.png', 1, NULL),
(144, '哈哈哈', '70d6d78d2129e59f995533ca0fe24bc182792901', '../upload/20180929/1538181411.png', 1, NULL),
(145, '头像', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '../upload/20180929/1538181437.png', 1, NULL),
(146, '咕叽', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', '../upload/20180929/1538181445.png', 1, NULL),
(147, '呦呵', '17ba0791499db908433b80f37c5fbc89b870084b', '../upload/20180929/1538181459.png', 1, NULL),
(148, '小二', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181496.png', 1, NULL),
(149, '万', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181510.png', 1, NULL),
(150, '嗯', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181535.png', 1, NULL),
(151, '尼泊尔', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181539.png', 1, NULL),
(152, '王豪文', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181566.png', 1, NULL),
(153, '黄荣', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181567.png', 1, NULL),
(154, '我我我我我', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180929/1538181591.png', 1, '18958142940'),
(155, '应华大魔王', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181595.png', 1, NULL),
(156, '西街', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180929/1538181596.png', 1, NULL),
(157, '啊', '356a192b7913b04c54574d18c28d46e6395428ab', '../upload/20180929/1538181623.png', 1, NULL),
(158, '王大锤', 'cfa1150f1787186742a9a884b73a43d8cf219f9b', '../upload/20180929/1538181630.png', 1, NULL),
(159, '丁聪', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '../upload/20180929/1538181798.png', 1, NULL),
(160, '林康', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180929/1538181864.png', 1, NULL),
(161, '嗨', 'c1dfd96eea8cc2b62785275bca38ac261256e278', '../upload/20180929/1538181956.png', 1, NULL),
(162, '东', 'e78386fe483881d7ae85c1d9f5b1490eeaf2fe45', '../upload/20180929/1538182056.png', 1, NULL),
(163, '轩辕十四', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180929/1538182084.png', 1, NULL),
(164, '杨元宝', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '../upload/20180929/1538184503.png', 1, NULL),
(165, '大家', 'bed4eb698c6eeea7f1ddf5397d480d3f2c0fb938', '../upload/20180929/1538182403.png', 1, NULL),
(166, '黎哥就是我', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180929/1538182422.png', 1, NULL),
(167, '一一一一', '1161e6ffd3637b302a5cd74076283a7bd1fc20d3', '../upload/20180929/1538182456.png', 1, NULL),
(168, '秀苹', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538182635.png', 1, NULL),
(169, '你', '22ea1c649c82946aa6e479e1ffd321e4a318b1b0', '../upload/20180929/1538182808.png', 1, NULL),
(170, '信仰', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538182897.png', 1, NULL),
(171, '由于', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538189884.png', 1, NULL),
(172, '哈哈', '70d6d78d2129e59f995533ca0fe24bc182792901', '../upload/20180929/1538190722.png', 1, NULL),
(173, '超级用户', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538190936.png', 1, NULL),
(174, '罗学成', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538193169.png', 1, NULL),
(175, '王', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538200812.png', 1, NULL),
(176, '威威日', 'fb0a8929865016ba27349dbfeeaa31a699fb74d5', '../upload/20180929/1538201333.png', 1, NULL),
(177, '陈陈', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538201489.png', 1, NULL),
(178, '陈陈陈陈', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538201535.png', 1, NULL),
(179, '广告', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538217036.png', 1, NULL),
(180, '啊啊', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538217992.png', 1, NULL),
(181, '啦', '7b52009b64fd0a2a49e6d8a939753077792b0554', '../upload/20180929/1538220785.png', 1, NULL),
(182, '啦啦啦', '8cb2237d0679ca88db6464eac60da96345513964', '../upload/20180929/1538223337.png', 1, NULL),
(183, '请问', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', '../upload/20180930/1538278711.png', 1, NULL),
(184, '气温', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', '../upload/20180930/1538279048.png', 1, NULL),
(185, '前期', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180930/1538279131.png', 1, NULL),
(186, '问问', '601f1889667efaebb33b8c12572835da3f027f78', '../upload/20180930/1538279246.png', 1, NULL),
(187, '也一样', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180930/1538279375.png', 1, NULL),
(188, '朱文韬', 'eaa67f3a93d0acb08d8a5e8ff9866f51983b3c3b', '../upload/20180930/1538286485.png', 1, NULL),
(189, '丁丁', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '../upload/20180930/1538286751.png', 1, NULL),
(190, '时代的', 'c441f164b1283bd56e0aa24dabb133150397df87', '../upload/20181002/1538492349.png', 1, NULL),
(191, '刘', '601f1889667efaebb33b8c12572835da3f027f78', '../upload/20181004/1538630920.png', 1, NULL),
(192, '海', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20181004/1538631327.png', 1, NULL),
(193, '订单', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '../upload/20181004/1538631627.png', 1, NULL),
(194, '简介', '011c945f30ce2cbafc452f39840f025693339c42', '../upload/20181004/1538633785.png', 1, NULL),
(195, '啊啊啊', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181004/1538636363.png', 1, NULL),
(196, '地导弹', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181004/1538636622.png', 1, NULL),
(197, '上课时空', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '../upload/20181004/1538637587.png', 1, NULL),
(198, '张嘉豪', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181004/1538637637.png', 1, NULL),
(199, '阿三的理解阿', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20181005/1538742037.png', 1, NULL),
(200, '哩哩啦啦', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '../upload/20181007/1538905300.png', 1, NULL),
(201, '啊呀', '356a192b7913b04c54574d18c28d46e6395428ab', '../upload/20181006/1538801411.png', 1, NULL),
(202, '月华', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181008/1538982116.png', 1, NULL),
(203, '刘小凡', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181008/1538986797.png', 1, '11111111111'),
(204, '何俊克', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181008/1538986918.png', 1, NULL),
(205, '石头', 'ec9ed463f0154874d2768f2a8ce7689f16923633', '../upload/20181008/1538986969.png', 1, '13779999773'),
(206, '乔治', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181009/1539053354.png', 1, NULL),
(207, '及户籍', '356a192b7913b04c54574d18c28d46e6395428ab', '../upload/20181009/1539082804.png', 1, NULL),
(208, '聚聚', '356a192b7913b04c54574d18c28d46e6395428ab', '../upload/20181009/1539086002.png', 1, NULL),
(209, '古月方源', 'db524b0ce68f7275aca7a733be9744f08071d80b', '../upload/20181022/1540204561.png', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatContent`
--
ALTER TABLE `chatContent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatList`
--
ALTER TABLE `chatList`
  ADD PRIMARY KEY (`chatId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `chatContent`
--
ALTER TABLE `chatContent`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '聊天信息 id', AUTO_INCREMENT=510;

--
-- 使用表AUTO_INCREMENT `chatList`
--
ALTER TABLE `chatList`
  MODIFY `chatId` int(11) NOT NULL AUTO_INCREMENT COMMENT '聊天室id', AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID', AUTO_INCREMENT=210;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
