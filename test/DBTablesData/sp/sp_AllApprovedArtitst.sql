CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_AllApprovedArtitst`()
BEGIN
	SELECT * FROM tblUsers 
    WHERE UserType = 3 AND Status = 1;
END