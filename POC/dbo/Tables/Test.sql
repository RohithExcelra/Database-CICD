CREATE TABLE [dbo].[Test] (
    [TestID]          INT        IDENTITY (1, 1) NOT NULL,
    [TestDescription] NCHAR (50) NULL,
    CONSTRAINT [PK_Test] PRIMARY KEY NONCLUSTERED ([TestID] ASC)
);
