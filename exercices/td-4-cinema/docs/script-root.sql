--
-- Base de données :  `bddcinema`
--
CREATE DATABASE IF NOT EXISTS `cinema` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE cinema;
-- Creation de l'utilisateur de la base
CREATE USER cinema_adm IDENTIFIED BY 'password';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER, CREATE TEMPORARY TABLES,
    CREATE VIEW, EVENT, TRIGGER, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, REFERENCES,
    EXECUTE ON cinema.* TO cinema_adm;

FLUSH PRIVILEGES;