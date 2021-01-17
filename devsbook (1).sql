-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/01/2021 às 15:01
-- Versão do servidor: 10.4.17-MariaDB
-- Versão do PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `devsbook`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `postcomments`
--

CREATE TABLE `postcomments` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `postcomments`
--

INSERT INTO `postcomments` (`id`, `id_post`, `id_user`, `created_at`, `body`) VALUES
(1, 5, 4, '2021-01-09 08:54:34', 'Teste'),
(2, 8, 4, '2021-01-09 13:42:07', 'Ola'),
(3, 8, 4, '2021-01-09 13:42:18', 'Olá'),
(4, 8, 4, '2021-01-10 00:09:55', 'Teste'),
(5, 7, 4, '2021-01-10 16:39:03', 'dadasd'),
(6, 7, 4, '2021-01-11 23:11:01', 'ds');

-- --------------------------------------------------------

--
-- Estrutura para tabela `postlikes`
--

CREATE TABLE `postlikes` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `postlikes`
--

INSERT INTO `postlikes` (`id`, `id_post`, `id_user`, `created_at`) VALUES
(1, 5, 4, '2021-01-09 08:54:18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `posts`
--

INSERT INTO `posts` (`id`, `id_user`, `type`, `created_at`, `body`) VALUES
(1, 4, 'text', '2021-01-03 17:41:05', 'Olá tudo bem?'),
(4, 4, 'photo', '2021-01-03 18:38:47', '1.jpg'),
(5, 4, 'text', '2021-01-03 18:39:09', 'Pdjdhsaudsnjak'),
(6, 4, 'text', '2021-01-03 18:45:53', 'Oi'),
(7, 4, 'text', '2021-01-05 03:12:10', 'dsdsd'),
(8, 5, 'text', '2021-01-05 03:18:48', 'Olá!!');

-- --------------------------------------------------------

--
-- Estrutura para tabela `userrelations`
--

CREATE TABLE `userrelations` (
  `id` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `userrelations`
--

INSERT INTO `userrelations` (`id`, `user_from`, `user_to`) VALUES
(4, 4, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `work` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT 'default.jpg',
  `cover` varchar(100) NOT NULL DEFAULT 'cover.jpg',
  `token` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `birthdate`, `city`, `work`, `avatar`, `cover`, `token`) VALUES
(4, 'junior.rdgs@hotmail.com', '$2y$10$WegE0Y/BjF3FYzDysnq82eo0n2FRSg18TWjaFsKchtHQapC7R6P66', 'Antonio Rodrigues Júnior', '1982-10-22', NULL, NULL, 'default.jpg', 'cover.jpg', 'bb8b06a789ef8e6da5e2dd3232e6c156'),
(5, 'gianemrodrigues@hotmail.com', '$2y$10$RCRw1GBLhXcSaCcSrKOXmeySmyA3HzF5MSosRSfHCKs8ClKDoT4/q', 'Giane Manfrinatto Rodrigues', '1977-10-29', 'Bauru', NULL, 'default.jpg', 'cover.jpg', '6fdd27d26e4c547afc9ae6ecc92136a7'),
(7, 'ju@hotmail.com', '$2y$10$OI1mbbGpOyksJ5K6Bypk9OMZUqf53qSVAAN7RHEpFkzKoogZuKcPi', 'Junior Rodrigues', '1982-10-22', NULL, NULL, 'default.jpg', 'cover.jpg', '613ea1d89fedf0a3f13a2b827c66cb51');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `postcomments`
--
ALTER TABLE `postcomments`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `postlikes`
--
ALTER TABLE `postlikes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `userrelations`
--
ALTER TABLE `userrelations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `postcomments`
--
ALTER TABLE `postcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `postlikes`
--
ALTER TABLE `postlikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `userrelations`
--
ALTER TABLE `userrelations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
