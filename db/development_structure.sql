CREATE TABLE "meanings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "word_id" integer, "category" varchar(255), "expression" varchar(255), "text" varchar(255), "english" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE `schema_migrations` (`version` varchar(255) NOT NULL);
CREATE TABLE "sentences" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "meaning_id" integer, "japanese" text, "translation" text, "source" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "words" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "japanese" varchar(255), "reading" varchar(255), "definition" text, "category" varchar(255), "comments" text, "created_at" datetime, "updated_at" datetime, "tags" varchar(255) DEFAULT '');
CREATE UNIQUE INDEX `unique_schema_migrations` ON `schema_migrations` (`version`);
INSERT INTO schema_migrations (version) VALUES ('20100721145207');

INSERT INTO schema_migrations (version) VALUES ('20100721235544');

INSERT INTO schema_migrations (version) VALUES ('20100722092549');

INSERT INTO schema_migrations (version) VALUES ('20100722095506');