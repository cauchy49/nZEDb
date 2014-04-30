DROP TABLE IF EXISTS anidb;
CREATE TABLE anidb (
  anidbid    INT(7) UNSIGNED NOT NULL,
  title_type VARCHAR(25)     NOT NULL DEFAULT '',
  lang VARCHAR(25) NOT NULL DEFAULT '',
  imdbid INT(7) UNSIGNED NOT NULL,
  tvdbid INT(7) UNSIGNED NOT NULL,
  title VARCHAR(255) NOT NULL,
  type VARCHAR(32) NOT NULL,
  startdate DATE DEFAULT NULL,
  enddate DATE DEFAULT NULL,
  related VARCHAR(1024) NOT NULL,
  creators VARCHAR(1024) NOT NULL,
  description TEXT NOT NULL,
  rating VARCHAR(5) NOT NULL,
  picture VARCHAR(16) NOT NULL,
  categories VARCHAR(1024) NOT NULL,
  characters VARCHAR(1024) NOT NULL,
  epnos VARCHAR(2048) NOT NULL,
  airdates TEXT NOT NULL,
  episodetitles TEXT NOT NULL,
  unixtime INT(12) UNSIGNED NOT NULL,
PRIMARY KEY (anidbid, title_type, lang)
) ENGINE =MYISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci AUTO_INCREMENT =1;

LOAD DATA {:local:}INFILE '{:data:}10-anidb.tsv' IGNORE INTO TABLE anidb FIELDS TERMINATED BY '\t' OPTIONALLY  ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' IGNORE 1 LINES (anidbid, title_type, lang, title);
