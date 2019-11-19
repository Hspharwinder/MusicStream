CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_singleSong`(IN p_name VARCHAR(100))
BEGIN
	SELECT * FROM tblMedia WHERE name = p_name;
END