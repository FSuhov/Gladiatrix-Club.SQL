CREATE TABLE [dbo].[Gladiatrix] (
    [GirlId]        INT             IDENTITY (1, 1) NOT NULL,
    [Name]          NVARCHAR (50)   NOT NULL,
    [Surname]       NVARCHAR (50)   NOT NULL,
    [MaxResistance] DECIMAL (2, 2)  NULL,
    [MaxStrength]   DECIMAL (2, 2)  NULL,
    [MaxHealth]     DECIMAL (3)     NULL,
    [Team]          INT             NULL,
    [IsQueen]       BIT             CONSTRAINT [DF_Gladiatrix_IsQueen] DEFAULT ((0)) NULL,
    [Rank]          DECIMAL (4, 2)  NULL,
    [CurrentHealth] DECIMAL (3)     NULL,
    [History]       NVARCHAR (MAX)  NULL,
    [ImageSmall]    VARBINARY (MAX) NULL,
    [ImageLarge]    VARBINARY (MAX) NULL,
    CONSTRAINT [PK_Gladiatrix] PRIMARY KEY CLUSTERED ([GirlId] ASC),
    CONSTRAINT [FK_Gladiatrix_Team] FOREIGN KEY ([Team]) REFERENCES [dbo].[Team] ([TeamId])
);

