CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_CountPendingArtist`()
BEGIN
	SELECT Count(Status) AS pendingArtist FROM tblUsers WHERE Status = 2;
END