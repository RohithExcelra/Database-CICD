/*
This Script will run everytime before the Build
*/
------------------------------------------------------------------------------------------------------------------------------

IF Exists(Select 1 from INFORMATION_SCHEMA.TABLES WHERE Table_Type = 'BASE TABLE' and Table_Name = 'Test') 
Begin
	Declare @testcount AS INT;
	Select @testcount = Count(1) from dbo.Test 
	
	IF @testcount > 0
	BEGIN
		DECLARE @tablename as NVARCHAR(100)
		SET @tablename = 'Test_Bkp_'+CONVERT(VARCHAR(19), GETDATE(), 120)
		EXEC ('SELECT * INTO [dbo].['+@tablename+'] FROM [dbo].[Test]' )

		DELETE FROM [dbo].[Test]
	END
END
Go


------------------------------------------------------------------------------------------------------------------------------