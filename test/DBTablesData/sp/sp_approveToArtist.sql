CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_approveToArtist`(
	p_artistId int(11),
    p_UserName varchar(50),
    p_Password varchar(100),
    OUT r_status INT(11)
)
BEGIN
	DECLARE d_status INT DEFAULT 0;     
    IF EXISTS(select * from tblUsers WHERE status = 2) THEN	
		SELECT Status INTO d_status FROM tblUsers WHERE tblUsers_ID = p_artistId;
		IF d_status = 2 THEN     
			UPDATE tblUsers 
			SET
				UserName = p_UserName,
				Password = p_Password,
				Status = 1
			WHERE tblUsers_ID = p_artistId;
			SET r_status = 2;
		ELSE			
			SET r_status = 1;
		END IF;
	ELSE 
		SET r_status = 0;       
	END IF;
END