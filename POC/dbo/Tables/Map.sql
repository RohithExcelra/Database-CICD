CREATE TABLE [dbo].[Map] (
    [MapID]          INT        IDENTITY (1, 1) NOT NULL,
    [MapDescription] NCHAR (50) NULL,
    CONSTRAINT [PK_Map] PRIMARY KEY NONCLUSTERED ([MapID] ASC)
);