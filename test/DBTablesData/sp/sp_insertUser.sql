CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_insertUser`(        
        p_Name varchar(100), 
		p_Password varchar(100), 
		p_Email varchar(50),  
        p_UserName varchar(50),
        p_MobileNo int(50), 
        p_UserType int(11)
        )
BEGIN
	INSERT INTO 
		tblUsers (
		Name,
		Password ,
		Email,
		UserName,        
		MobileNo ,
        UserType
        )
	VALUES (
		p_Name,
		p_Password ,
		p_Email,		
		p_UserName,
        p_MobileNo ,
        p_UserType
        );
END