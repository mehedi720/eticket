-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2019 at 10:42 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket_app`
--
CREATE DATABASE IF NOT EXISTS `ticket_app` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ticket_app`;

-- --------------------------------------------------------

--
-- Table structure for table `available trips`
--

CREATE TABLE `available trips` (
  `Bus` varchar(20) NOT NULL,
  `Jfrom` text NOT NULL,
  `Jto` text NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Time` text NOT NULL,
  `Booked Seats` text NOT NULL,
  `Semi Booked Seats` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `available trips`
--

INSERT INTO `available trips` (`Bus`, `Jfrom`, `Jto`, `Date`, `Time`, `Booked Seats`, `Semi Booked Seats`) VALUES
('Prantik Ltd', 'Chattogram', 'Chumilla', '2019-07-17', '9 am', 'A1 C2 D1 H2', ''),
('Soudia transport ltd', 'Chattogram', 'Chumilla', '2019-07-17', '9 am', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `registered users`
--

CREATE TABLE `registered users` (
  `Serial No` bigint(20) UNSIGNED NOT NULL,
  `User Name` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Password` text NOT NULL,
  `Retype Password` varchar(50) NOT NULL,
  `Token` varchar(40) NOT NULL,
  `ETC` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registered users`
--

INSERT INTO `registered users` (`Serial No`, `User Name`, `Email`, `Phone`, `Password`, `Retype Password`, `Token`, `ETC`) VALUES
(1, 'Mehedi', 'mehedi@localhost.com', '01843101164', '$2y$10$NMuN3BHsrFKCr/cKwOuQIeaEtFi4Ye4JnQle8DL2KqRmwAzE7J1Ku', '$2y$10$gCZAyFURC9lnBYQG4MazR.B8wyfzCYwWIHNWaLpKNl1', '', ''),
(6, 'User', 'user@localhost.com', '123456780', '$2y$10$Twlv.lgLK4dG/lGSfdbUPufBkefdjP0Dl6qTGQFsqdXhnOPOB4PUe', '$2y$10$1Mn0atjKL8t1f4z0rH6JSeptnCobwra3p.mfO.hiuYj', '', ''),
(7, 'mtk', 'mtk@localhost.com', '010200330', '$2y$10$3h4VjMF2/y8VSFrXxAIZFOOyyRAo5J93AQLrVgGnliOpqkKNDkilG', '$2y$10$6oEV7opsGC2U/Nrkn75uJeWcr2OFMiHkxGkT3S2Gpqg', '', ''),
(8, 'mtk', 'mtk@localhost.com', '010200330', '$2y$10$0lCry/uOyfOd6KTYpKUTleLa8yzti40RUohG9d1XD4X2neHtdwT6C', '$2y$10$d9mgTOPov1BmqhqM5jLLKOFZ1U0VnSrI/qQejxL9HSw', '', ''),
(9, 'mtk', 'mtk@localhost.com', '010200330', '$2y$10$FeQ9ljm27hOH9O7tMfOJmerbUM7N0HbvmQ8k6x8DaLKEpAKMbE5B2', '$2y$10$dgYUwfOfCPJhQczMDl0XmOuSFi/R0mhPBxmzYiobb/u', '', ''),
(10, 'mtkzx', 'usjhmbher@localhost.com', '123545678', '$2y$10$WXGRE7v2499.fClFivbaOe45lZPrC.d2Fo.ZP0qz6EvHpk8YpmfwK', '$2y$10$YzstODmMxvxn3MgjXJcO3ejyuv.O03AcYnmYcAA.hi/', '', ''),
(11, 'nnmm', 'mtk@loacalhost.com', '6768979089', '$2y$10$rzddiQkvEhe3JUX.uEFPw.4QP0H4sV9jKrDfjqxNhQqaxsly3sTkO', '$2y$10$gpjhAcKeklIX38dVYedjsu4xx04pd6lqE1JxQaqAwp.', '', ''),
(12, 'nnmm', 'mtk@loacalhost.com', '6768979089', '$2y$10$6COAD9dgiFd9vyaf9kG8GOA7MJkkdQlD.zO7/ixYkEHiuwIryW/RC', '$2y$10$aWBp4d2szkgGw55RchtimezRka.a3DW7GuPK5pg6es3', '', ''),
(13, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$yJFm6GG/qeSDZED6vFRjY.KrUYSaaLvVV/Qdwx0IRsfH4b8XHXHta', '$2y$10$slGi4a2Musbov95JMB3IZ.yyXSRLxsglA2ixLkbWs2A', '', ''),
(14, 'bjkl', 'mtkhjklhjiuo@loacalhost.com', '7890878654', '$2y$10$d/4DG0xdDzu4Q1EUXUfUPeLVf/zv3rettBlKNQn2hKoqrmoVJbNMi', '$2y$10$4t1pum8FG.IqhHqzBKrJ0eve7mc3.BXATHyqriPSegd', '', ''),
(15, 'fsxcv', 'mtkasdas@localhost.comzaf', '2333366', '$2y$10$jh1ss7avVUadzMuyf2r8yun7DA8yx8tNr39kszMwqy0tHD7.VTM8e', '$2y$10$z/zOXZNKdElmHtWrhCvtLOxeI9uHWsm5lh2GL5cBUWw', '', ''),
(16, 'fsxcv', 'mtkasdas@localhost.comzaf', '2333366', '$2y$10$t.tJzRu90YMoc5m/6aepxO/OD/veG3Cl8wGZ.3C2wEiYfbY848v.m', '$2y$10$CUDlNbYn6RDn8jMrKNLTC.UdNq/60k2Ge/9My6ADVs9', '', ''),
(17, 'fsxcv', 'mtkasdas@localhost.comzaf', '2333366', '$2y$10$KQXU10bH0LmcjPOjH3Uzx.97.7g3yPReZcE/bvh/i4I86K58u/rwC', '$2y$10$72j5AtTpvzCTeiUpIXPaOeW5NOt5SA91xWZBYMu.44Q', '', ''),
(18, 'fsxcv', 'mtkasdas@localhost.comzaf', '2333366', '$2y$10$PzS9dvr1cT/ZfWfJbBuePOcwGizBOny6PVMWDeSfTFZpM/0AtXUbq', '$2y$10$2FPVWVJiqSLjckmtzsfcpuon/b4Clv2UARY66NQZ0Jz', '', ''),
(19, 'fsxcv', 'mtkasdas@localhost.comzaf', '2333366', '$2y$10$hRsofiW2XXpmZrIfu3EbDOM5tMQf7IGmXn6OvhWo5tMvuA7r4Lc/y', '$2y$10$zB05SfC.Bccit8VrUfwVSez/Czxef5PKa5eBLUQaUqM', '', ''),
(20, 'sff', 'cvx@sffg.gg', '454657687', '$2y$10$rLTcq2kUgAZMMUIVRAPAj.Fa4sc1Dyh3IEtC7Nd.byc5saGDUsHzq', '$2y$10$Iw70OY9pvLov.lBsN4zUlOjfK1ZhPeax4oG3EkDcQmc', '', ''),
(21, 'sff', 'cvx@sffg.gg', '454657687', '$2y$10$L1/I2IPOQ4eH1EZWNOL1Ke8KOssE6Lr.M43Asut3N9bjNveGSS2UO', '$2y$10$Wp32XZ7zpnBRAiOlfamAF.puNViHVB8GjBybeSmhkeO', '', ''),
(22, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$UEFRArNalSa4ktWrrFSC4Oe2.7jTvgMqmGtte/NFdED84dw/s4Bja', '$2y$10$4sa9ejTwmetpyZ5MtPcDkuXDA2sF89t8qkNYgOxCGCq', '', ''),
(23, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$UBmVkAObK/3aVnN2jFk8Nu1SiZ8Tx3lBYtNo/Ypq1j08FFnMqHD.y', '$2y$10$zeDC23vaz4WaPr/GFgoI9.LHzoV27HEQ0/P709N.tIQ', '', ''),
(24, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$iYEyPXyCR9kEN6psFgSsG.j.9.RtC/dXl9jws46KVUv5hI6qjgGue', '$2y$10$8CXRci6YSFkEeX5ls5JNeeUJ/yc8yhwa/ZxQmP2IX2R', '', ''),
(25, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$ZKGSqD5OdxhaLIc4hNoOw.JTdHXgII5rHt2tHjmCK6C/Ep58n1qA.', '$2y$10$neZkn5eBysaJrGZlrOz2WuFms34M00Z6.ZouWSpVPcc', '', ''),
(26, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$bTl6yE0KQtnyiQD6SWUAUuiwkunT/MJQkipWdfXjYiAAAKAFD3waC', '$2y$10$ynYfY4newqgGGENj5qovL.VLdKMBDKEaslxVd.QLrKW', '', ''),
(27, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$k7FNAHGgkFHhi9WtWbxzdeHg2E0YxYi5dsPubMRFDUZ9AZAaSSKjS', '$2y$10$ZRgQ78KftcsDK0224yywcejWAeOUyA/VhM6oaO7fhnz', '', ''),
(28, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$ysXwBuayKCB.fxAQ/fndZ.Sq6rMCPJES.jBPiAsQv5zuOK1c9DZ0.', '$2y$10$kWSmyXnFxXlH.RIzR01MlOqqQLIKYpMOeQxXHII1hhp', '', ''),
(29, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$ktd0vo5rCMfL7X6wh0HiMOrrS5DVV5mvkaj3SXIvN2dwe5HHlCIXa', '$2y$10$Yv7NP7vctQnmKnfTLus91.3XtpnLmZ.rcbQbzaJpuZu', '', ''),
(30, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$7TSjgp4Stq0NSe9ciSU3b.9dEC77SKCuU/ZUgr/rQxZC.53.NRMbC', '$2y$10$EvSTRiWSU5r7EtWX8MoJIeFEWmjevIDPHn0F5hHKxHq', '', ''),
(31, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$n3EDgfUI3GtMR1gNlSeePO.C1Gy.QKz7YBbsT6.gNDTQ1Qns8u9BC', '$2y$10$uqDd2s8BhnvruwqZyqpzvORb3v3OKfmvr0..rQ1R2bh', '', ''),
(32, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$cnAwmLM7AVgu5Bb4kT6m5e9YAuPCxR3NoxR4iu10VPDF6/OTn3n2i', '$2y$10$XQXEbQzxq1pzY1deHoBDwOHxKLGh380vkYUvDI3BiUR', '', ''),
(33, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$iPsdLJ74.rMx5pyevKBlwOGN8/cSmusjnGapvxTwCLJZAG0OHUFkO', '$2y$10$6ENcFIMNEeFh/9vfLIKImOZQVEy4DZGkXnp2ZmvKyZD', '', ''),
(34, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$gLgmW0o6izHobmf3vL8yo.lGdlCp6BmUw7MnPIHoZdwAADdsqsx86', '$2y$10$.zOR1b3wjVf7.RrR3ADwv.A9WsapkKknkCZQVqxX9Z8', '', ''),
(35, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$Ud2ANZBRJbrL1It0u/hJa./tVcb7W789aCFuEN5TEdE3vQ7t4BHgO', '$2y$10$zP2cK8xECEziF1XZ1ZZryuV4qhoTsBHD9z7yxX.ja1Y', '', ''),
(36, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$Ct8ubtKsGA6p84JUsC3Q4OZVySNJs/hPY5bT5KhSM61qcedj9RCaK', '$2y$10$DIXxxmchoIsRrnjh/tUkkO1ZfTV0q5LjEIsFvLmHAzI', '', ''),
(37, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$CvvWxslO6exG5OooTGL4Ku0a7aNdqzMYsu24P.wMdHHbSaCudC/Ym', '$2y$10$eIrIL4ndo4b1oZgSyPfyAO8ff35j7SgJ2B093xQ9dVL', '', ''),
(38, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$GcVyk4xShXNrSJFfuuJLR.2v/8paJgiAhzBuduxAaaNklkgRgB8Qa', '$2y$10$W/5AkWsEhJ9knHbgltk.h.S3rWnlP2rV81VOnZ2iCf2', '', ''),
(39, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$TPtXHeY5rmV6szdEUCyd6uDDKbbr3.MfMkfxPtMDOQpbBMmSuo8Py', '$2y$10$aogW46Jy9xmRkbZelqMMG.JSk79iGPTGnYwa0YbOzxx', '', ''),
(40, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$ueC7gEA6aafgK4Z8e/7L0O8JP0XIZN/DPYRyV5mvbxmDiZquMUJdq', '$2y$10$yLEPkuAFu4jJuVrs2HaDmOH93TL/M1MtCabzt496HgI', '', ''),
(41, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$GiQy9uM5OWrENmQtfQGx6.Eyk8IGP7bLu8TTC3MMRS.UoxPM5IIzW', '$2y$10$C.LERZ0Xhuw4gzWCs6c3GuQqM.F2UI.d0ROIYPIUckK', '', ''),
(42, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$cDT6zFzAZ43a7f/ZDkzu9.UMhabgIf0QsJAx5eJr8Ujl7ZvfiMHO2', '$2y$10$4ihG7U5pAdPZs2TMbs/pOejpj46Qi0dVi3AdDYqE57h', '', ''),
(43, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$BOtJp0yAoXWkrtCG5/FmoOo1Fl4OTI4E/7u3MfCW2n6Egv730qYj6', '$2y$10$7vHP4cgj0fOB667mQUXlauIay9kVXbj/ckxL2tIxLou', '', ''),
(44, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$ZxHZIEVK5r5buSxVLvkyZOcUrqMqX5fTz/3tXTBeEohwVeLbgmOui', '$2y$10$wm0WXMKcGf8yte2jO1JWweEKLA1jyEUJEE1yKNg22aL', '', ''),
(45, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$NifH8QSETM17Q1JsMmKN0uOZKS6SQVxMppNkjVJgi0E6WOdLJZ9qu', '$2y$10$qY3J5MZARhv6/ONEPec18.Ju00mSJBqQkAX1fV4Dcb.', '', ''),
(46, 'slkfamzn', 'mtkasdas@localhost.com', '234535453', '$2y$10$vWxTh6uEEFx0Vm3x3q5cKu8hcf.5ZN4GB6MDVPkZNDpUY1qpIx/Km', '$2y$10$8PKBs3b0K0UbzS2d1/WrxOVtC1F6nC8wa.RgwJ4JbOE', '', ''),
(47, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$uwuEQA2tOq44XnyVtHRogO5l42zgB5RnMoW./Zxo4b3fuImRTiQRO', '$2y$10$x.3HCTxnNNS9o2NtNb.AV.Hylj9OGOKHDePLadOhX7r', '', ''),
(48, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$B891IlYj00gGcHnrV3vkj.qi0FUn32t.Kq129ayHWOPe7yve1bSWG', '$2y$10$qAOzceC4fuW6KedSWfn2K.S5dSTcg.4px.6B3Clc5Uh', '', ''),
(49, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$mi5HmFyKdzXsiQaJwF08DukbzzpKZjo4dMFUYZBx4B4QDNLp.7Tqq', '$2y$10$V1S9EAoqF/arvQxfZ.LEpea8UUVVCgQZ4Vg8Ah7YMeI', '', ''),
(50, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$cRkKN950EMRWLo.PlL3HoOsX8o7GHL9gsVEZ1uplGHbGy6X.zCc0O', '$2y$10$A/0DkRE2tJV0W8HN0RfAaubhNZgG9Ofh1bvkq3fhTkT', '', ''),
(51, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$f8u1qQrVURukjiBD8KTeUOuTfWHAfn/E1r2PphJiEcMGBkLePjO3q', '$2y$10$3avkLI0xINerMxltZB.j9ec/pDuE2kGO2ONTjbQCb24', '', ''),
(52, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$k1erdI0aBN2OUUmPpUhkveF1E.mg79m73ehL28LBK41HvWDY8VeNe', '$2y$10$0qbDCmo53fpf3a./5uDMO.tmWCchuJ2ErBdKtrxH5Hy', '', ''),
(53, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$f2B.Z/ZuxFrL5JjwIGnfpur4etv7L3StYGRgDvUqmiO/.bcOsk6A.', '$2y$10$0YkrJ6Apo8ULq1KbrXr3ledEleqI6WyejK8DfGnFLh.', '', ''),
(54, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$zsmBRjm4OC63e.8xPMlP8e2Ju/BG.zApbZ4BUzmiZ7y./s6A8b0MC', '$2y$10$xX87l8UwNFmaBQXDSHp2Y.NCMH7UMUQ7lM9DlQRWGif', '', ''),
(55, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$NTzPdBCkal3P2MrxGRRXzusJfzR6uqVzrFUWZfJi6R1lDJi32GL56', '$2y$10$XGsX9qb4HV7C8.58xpGs1eDMt5Giva.qyHazQmZErW5', '', ''),
(56, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$x9cKkJ/KFKxRRnBkhnS6qO5WlJ2K3sruEwsGRantaffZk8O5Oyzg2', '$2y$10$ScZh2.npWV.D4Mv6P/QakO2oz0nd6DIrSJIuSqIsBOj', '', ''),
(57, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$Zf85AkxL808CdfFOfwWhyuvxpqcipZ13s7EY2WTe25gZSlJlWfXGS', '$2y$10$TRCZsJPHndTqpoSE3G09feKkNxvDceVM1PkZ/Jg.YPa', '', ''),
(58, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$fQ49u2ZiPrpzreevilTRr.gWdQzdcodM.o7BfJVmZWThdHUbu/dTS', '$2y$10$QlchkH7YKqhkHSQgd6BX/eDSsS.hpFPwAxLWBnlbKZQ', '', ''),
(59, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$FT4g0AsGoe9ZLw6sVoyU3OEjskpU8B49889R/b20x6PWruzDDXgYu', '$2y$10$N/8atXWUolwEpnIxbQ4nK.Q8bO.bMGhfALwQQ0Xfx/O', '', ''),
(60, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$9w7lsEhd0zGdJLbiMjpeu.nQRPnx2WOofSvSiEA23.sfR2JkPpYoa', '$2y$10$xzqZRHjI5XVMeDH6li19o.57QtVJ.sUrYWcYi6eKKuZ', '', ''),
(61, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$yLRsmo9KZflpEsJuEvRky.x7JzZjHKRzWPQejJledMmE6VgBh6376', '$2y$10$rTJcKG0T/ZAFbQ5gjYvXAuoHaMdxzL4MzJXm.P1xL4B', '', ''),
(62, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$Mf1NNudhBEP.Hqn7arvJZO307EXxtlPovoII.TPnCoe2hreDXHkTu', '$2y$10$1M67tCIOXKgX6twkWu7Zue9xOyK14EZwjliRqgWpugc', '', ''),
(63, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$c05wS2rhNMFb7z3ltcJ0LeShHAGQl0L08fVNJtWti/0rbxprb7uVW', '$2y$10$5ij2wjTh4ziZZVkxGuoNouQRdh3DoMGu8/xSkLqpvRW', '', ''),
(64, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$AcPV0LZgDgRN3XsBcU.v4Oks1w4I9id646L0FZtp7AuZwc6R53HhC', '$2y$10$G3AlNho901DSCN5/HlRGWu/Ir/LLWSgd7btOKLVa2Zc', '', ''),
(65, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$6gor7WSd6nVBeZiVreqG6OTKRy39znV0/Baosz9ojWovJkkMKUhXC', '$2y$10$nqGsB/BLYg4ucMZuasulLeYTUwNYJmKXvFp11lF/5k6', '', ''),
(66, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$mY3j32KHgf6hPpa8qH6XhODMWz5Kdx8fmgPwYGQYigSDB61WzAlpS', '$2y$10$Qm3BRTBGodXPE7DqxFtCKuuPpGGbsREI6moeLJ.AojD', '', ''),
(67, 'mtkzx', 'mtkasdas@localhost.com', '67890890', '$2y$10$5mGo3SwmYYcrB85AERv/wuhtHj7.POS8jYsXK.49x3YTmLVU6YCYK', '$2y$10$W2hBWRqA95NF5O1xOhFZ5.KuTg7eKLQybuLL6bMiHN4', '', ''),
(68, 'mtkzx', 'mtkdasasdas@localhost.com', '67890890', '$2y$10$WdZK.LbP1dNR0gVQALYCFe4aVQraumUzSDBUqZMmphoUh8UgaCiZW', '$2y$10$K9JZ7waUMzs6wLyonLajFOEWxgEhR.G95u5EORcbRgy', '', ''),
(69, 'newUser', 'newu@local.com', '123456', '$2y$10$VCUaA0XUAyJz2rTxytVWT.kCcShTtooonDLnpnH0WDlX0HW3vFSJ2', '$2y$10$uzbQ1wV/BOoKwL/fIIxqW..gt/B6SOVUfY/GFob/LxF', '', ''),
(70, 'me', 'me@local.com', '24534675789', '$2y$10$Hxfbi41GavGQ45vnRSX7uu/CXwczWS5rydOnawSPG/j37dbaUXiN2', '$2y$10$cPkumiQCDaj0oVPnjn324.PepGM0gnXfG4MyxM4.108', '', ''),
(71, 'mehedi', 'hasan@gmail.com', '32423422', '$2y$10$6hTzP0ZK59pEaDujQIOLoeR.Gxkf4H/3rC6A.Cvhw4OgUft1BQviO', '$2y$10$M6WbybLqgVOCMzSr.36wj.YXsMV.y8/TSD1IL/iAUeI', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `available trips`
--
ALTER TABLE `available trips`
  ADD PRIMARY KEY (`Bus`);

--
-- Indexes for table `registered users`
--
ALTER TABLE `registered users`
  ADD UNIQUE KEY `Serial No` (`Serial No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registered users`
--
ALTER TABLE `registered users`
  MODIFY `Serial No` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
