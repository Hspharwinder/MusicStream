CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_songInsert`(IN p_name VARCHAR(100), 
		IN p_artistId INT(11),
        IN p_type INT(11),
        IN p_filePath VARCHAR(500),
        IN p_thumbnailPath VARCHAR(500))
BEGIN
	INSERT INTO 
		tblMedia (
			Name,
            ArtistId,
            Type,
            FilePath,
            ThumbnailPath
            ) 
	VALUES (
		p_name, 
		p_artistId,
        p_type,
        p_filePath,
        p_thumbnailPath
        );
END