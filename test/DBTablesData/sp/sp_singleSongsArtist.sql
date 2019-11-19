CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_singleSongsArtist`(IN p_artistId INT)
BEGIN
	SELECT * FROM tblMedia WHERE ArtistId = p_artistId;
END