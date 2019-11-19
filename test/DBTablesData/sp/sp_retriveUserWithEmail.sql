CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_retriveUserWithEmail`(p_Email varchar(50))
BEGIN
	SELECT * FROM tblUsers WHERE email = p_Email;
END