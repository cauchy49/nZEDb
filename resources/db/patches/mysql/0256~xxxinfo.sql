ALTER TABLE xxxinfo MODIFY COLUMN plot BLOB NULL DEFAULT NULL;
UPDATE xxxinfo SET plot = COMPRESS(plot) WHERE id != 0 AND id !=-2;