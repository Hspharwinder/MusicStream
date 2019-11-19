CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_Login`(p_UserName varchar(50))
BEGIN
	SELECT * FROM tblUsers WHERE UserName = p_UserName;
END