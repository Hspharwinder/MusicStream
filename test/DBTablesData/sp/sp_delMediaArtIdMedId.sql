CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_delMediaArtIdMedId`(
	p_tblMedia_Id int(11), 
    p_ArtistId int(11)
)
BEGIN
	DELETE FROM 
		tblMedia 
	WHERE 
		tblMedia_Id = p_tblMedia_Id AND ArtistId = p_ArtistId ;
END