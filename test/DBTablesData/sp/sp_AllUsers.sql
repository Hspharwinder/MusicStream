CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_AllUsers`()
BEGIN
	SELECT * FROM tblUsers;
END