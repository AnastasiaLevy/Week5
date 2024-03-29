USE [ClassProjectDataBase]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Events]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Schedule] [datetime] NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grades]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [int] NOT NULL,
	[EventId] [int] NOT NULL,
	[PeopleId] [int] NOT NULL,
 CONSTRAINT [PK_Grades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Labs]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Labs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Schedule] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Labs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[People]    Script Date: 11/28/2013 12:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[LabId] [int] NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'MyApplication', N'myapplication', N'8e86b82e-f869-4078-8c5f-b3d134d95398', NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'65b8546b-d736-44e7-9a13-9c70089ac1fc', N'WgBA6zopKy2UtJG2qR8DGYLcJQg=', 1, N'HgqVwu9rjwg00rE4J05xVw==', NULL, N'123@mail.com', N'123@mail.com', N'question', N'E03cmv+i1AZrUBoL3Wv0N7FErKo=', 1, 0, CAST(0x0000A27E004BB478 AS DateTime), CAST(0x0000A28300578AB9 AS DateTime), CAST(0x0000A27E004BB478 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'22a9fb36-8d5b-4a6e-8571-46e5490febb1', N'It4x7Llr5L5IRISB6luyBBPqNDw=', 1, N'/n5/bEXKlaw0vCffQ7hAPQ==', NULL, N'123@mail.com', N'123@mail.com', N'question', N'ddnt2+FY4BARr5TsWoYVYp3SO8A=', 1, 0, CAST(0x0000A27E0059A72C AS DateTime), CAST(0x0000A27E0059A823 AS DateTime), CAST(0x0000A27E0059A72C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'8ebd6b3e-57d3-4a4a-8bbd-8dee3257978f', N'cEMXTsUz6R+jilehoC3y6kntJLs=', 1, N'HRdIGz/Chk+v/0ytwh1kXg==', NULL, N'123@mail.com', N'123@mail.com', N'question', N'G/6U9B+Sz+laHb93sWQZqpTcM2Y=', 1, 0, CAST(0x0000A27E0059CB80 AS DateTime), CAST(0x0000A2810020242B AS DateTime), CAST(0x0000A27E0059CB80 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'8378c03c-af9c-4099-bf8d-0cd9406640e3', N'Afu0T+dQORw2Kh3/p1Mk+l3B10I=', 1, N'GBarskiO/LM0IiHIuk3IOw==', NULL, N'123@mail.com', N'123@mail.com', N'question', N'Xxf2jXZpQdAmFvgFkD41AmP6bHw=', 1, 0, CAST(0x0000A27E0059F6DC AS DateTime), CAST(0x0000A2830141C460 AS DateTime), CAST(0x0000A27E0059F6DC AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'42a20d53-277d-47d5-a696-4e3ba25af0f1', N'DACDHv4O0zukpEdB+yMZ7wAShJA=', 1, N'Q458j0PkmRyqSQnj2R9FuQ==', NULL, N'123@mail.com', N'123@mail.com', N'question', N'oX9zyQoWSgeUcBrbBTkBMXGL1x4=', 1, 0, CAST(0x0000A27F015642C0 AS DateTime), CAST(0x0000A27F015642C0 AS DateTime), CAST(0x0000A27F015642C0 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'54ddaa75-481c-44cb-8a5f-fec03af1d586', N'UvpR65/teIkZGqHgxhHvXBERtr4=', 1, N'BvGkOcGcPBIv5huenRpVnw==', NULL, N'123@mail.com', N'123@mail.com', N'question', N'vVEkT8FUj4+a9PoTzcog8fGxfac=', 1, 0, CAST(0x0000A27F01569978 AS DateTime), CAST(0x0000A27F01860427 AS DateTime), CAST(0x0000A27F01569978 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'e2056da5-7889-431e-a0d3-74f7626e1a85', N'ydFBSyLih5/PrXysqwkEC/xIkog=', 1, N'neBUOtGKoBLpJ1IoH8xJfQ==', NULL, N'123@mail.com', N'123@mail.com', N'question', N'idE7zE3qhZFZ+YJhoxKHIYKhdeI=', 1, 0, CAST(0x0000A27F015B8E9C AS DateTime), CAST(0x0000A27F015B8FCE AS DateTime), CAST(0x0000A27F015B8E9C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'0281f1bd-f626-41ca-860c-cd3b6a707fc4', N'wFBE9+8p7cYPbJeEMYhChUBJa1E=', 1, N'o7z89HXNu5wy2b5pX0GSMg==', NULL, N'123@mail.com', N'123@mail.com', N'question', N'wjn1y53Vs+GxTb/5PL0VovfGKS8=', 1, 0, CAST(0x0000A27F015C1560 AS DateTime), CAST(0x0000A27F015C15C1 AS DateTime), CAST(0x0000A27F015C1560 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'2f4fef81-a420-4959-8b37-bb70a071297d', N'EKcECLuIEpvOszXVRaNETdp7+Zk=', 1, N'6HmZ+is/pVuoAjupGB5/7A==', NULL, N'123@mail.com', N'123@mail.com', N'question', N'88Nt/lc0SpEOEjhrsvibN4wu2Bc=', 1, 0, CAST(0x0000A27F015CE850 AS DateTime), CAST(0x0000A27F015D2354 AS DateTime), CAST(0x0000A27F015CE850 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'584d8064-f672-4427-99cf-109bdf1d0077', N'9WgzJV24s7kD3cWvHad+1JXmCuU=', 1, N'UjqE9eXkXZ/yUIj/OPWdOQ==', NULL, N'123@mail.com', N'123@mail.com', N'question', N'mbmzrUkSsGEWRuqaYwAYz30iGeA=', 1, 0, CAST(0x0000A28100201F0C AS DateTime), CAST(0x0000A28100201F0C AS DateTime), CAST(0x0000A28100201F0C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'c195bd48-ca43-45b1-98ab-808350da6fd9', N'OlZDuWAtbbi/OGZAS/ezjX6GQJU=', 1, N'09omxEWsqLp8f3/KQAb7tA==', NULL, N'124@mail.com', N'124@mail.com', N'question', N'jymI8VD3PBtTwIFa0ffIp6oQKZ8=', 1, 0, CAST(0x0000A27E004F1550 AS DateTime), CAST(0x0000A27E004F1667 AS DateTime), CAST(0x0000A27E004F1550 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'cf6440d6-3e38-49df-bc06-f43ef990ece6', N'admin', N'admin', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'bb46f5a9-b6b6-469d-9bac-71acc888120e', N'proff', N'proff', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'e5b3ade5-6c2b-4237-90fe-ad28514e0a3b', N'student', N'student', NULL)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'e2056da5-7889-431e-a0d3-74f7626e1a85', N'colla', N'colla', NULL, 0, CAST(0x0000A27F015B8FCE AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'8ebd6b3e-57d3-4a4a-8bbd-8dee3257978f', N'dlevy', N'dlevy', NULL, 0, CAST(0x0000A2810020242B AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'42a20d53-277d-47d5-a696-4e3ba25af0f1', N'Kevin', N'kevin', NULL, 0, CAST(0x0000A27F015642C0 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'8378c03c-af9c-4099-bf8d-0cd9406640e3', N'prof', N'prof', NULL, 0, CAST(0x0000A2830141C460 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'0281f1bd-f626-41ca-860c-cd3b6a707fc4', N'test', N'test', NULL, 0, CAST(0x0000A27F015C15C1 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'2f4fef81-a420-4959-8b37-bb70a071297d', N'test2', N'test2', NULL, 0, CAST(0x0000A27F015D2354 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'584d8064-f672-4427-99cf-109bdf1d0077', N'test4', N'test4', NULL, 0, CAST(0x0000A28100201F0C AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'22a9fb36-8d5b-4a6e-8571-46e5490febb1', N'Tommy', N'tommy', NULL, 0, CAST(0x0000A27E0059A823 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'54ddaa75-481c-44cb-8a5f-fec03af1d586', N'tootsie', N'tootsie', NULL, 0, CAST(0x0000A27F01860427 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'65b8546b-d736-44e7-9a13-9c70089ac1fc', N'User1', N'user1', NULL, 0, CAST(0x0000A28300578AB9 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'8e86b82e-f869-4078-8c5f-b3d134d95398', N'c195bd48-ca43-45b1-98ab-808350da6fd9', N'User2', N'user2', NULL, 0, CAST(0x0000A27E004F1667 AS DateTime))
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'8378c03c-af9c-4099-bf8d-0cd9406640e3', N'bb46f5a9-b6b6-469d-9bac-71acc888120e')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'8378c03c-af9c-4099-bf8d-0cd9406640e3', N'e5b3ade5-6c2b-4237-90fe-ad28514e0a3b')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'22a9fb36-8d5b-4a6e-8571-46e5490febb1', N'e5b3ade5-6c2b-4237-90fe-ad28514e0a3b')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'42a20d53-277d-47d5-a696-4e3ba25af0f1', N'e5b3ade5-6c2b-4237-90fe-ad28514e0a3b')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e2056da5-7889-431e-a0d3-74f7626e1a85', N'e5b3ade5-6c2b-4237-90fe-ad28514e0a3b')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'c195bd48-ca43-45b1-98ab-808350da6fd9', N'e5b3ade5-6c2b-4237-90fe-ad28514e0a3b')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'8ebd6b3e-57d3-4a4a-8bbd-8dee3257978f', N'e5b3ade5-6c2b-4237-90fe-ad28514e0a3b')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'65b8546b-d736-44e7-9a13-9c70089ac1fc', N'e5b3ade5-6c2b-4237-90fe-ad28514e0a3b')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'2f4fef81-a420-4959-8b37-bb70a071297d', N'e5b3ade5-6c2b-4237-90fe-ad28514e0a3b')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'0281f1bd-f626-41ca-860c-cd3b6a707fc4', N'e5b3ade5-6c2b-4237-90fe-ad28514e0a3b')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'54ddaa75-481c-44cb-8a5f-fec03af1d586', N'e5b3ade5-6c2b-4237-90fe-ad28514e0a3b')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'8ebd6b3e-57d3-4a4a-8bbd-8dee3257978f', N'cf6440d6-3e38-49df-bc06-f43ef990ece6')
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([Id], [Name], [Schedule]) VALUES (1, N'Exam1', CAST(0x0000A25D00E6B680 AS DateTime))
INSERT [dbo].[Events] ([Id], [Name], [Schedule]) VALUES (2, N'Exam2', CAST(0x0000A21500E6B680 AS DateTime))
INSERT [dbo].[Events] ([Id], [Name], [Schedule]) VALUES (3, N'Exam5', CAST(0x0000A28A00F31290 AS DateTime))
INSERT [dbo].[Events] ([Id], [Name], [Schedule]) VALUES (4, N'Exam3', CAST(0x0000A24E00F5D1B0 AS DateTime))
SET IDENTITY_INSERT [dbo].[Events] OFF
SET IDENTITY_INSERT [dbo].[Labs] ON 

INSERT [dbo].[Labs] ([Id], [Schedule]) VALUES (1, N'Tusday/Thursday 18:00')
INSERT [dbo].[Labs] ([Id], [Schedule]) VALUES (2, N'Monday/Friday 18:00')
INSERT [dbo].[Labs] ([Id], [Schedule]) VALUES (3, N'Wednesday 12;00')
INSERT [dbo].[Labs] ([Id], [Schedule]) VALUES (4, N'Tuesday, 18:45')
INSERT [dbo].[Labs] ([Id], [Schedule]) VALUES (5, N'Wednesday, 15:00')
SET IDENTITY_INSERT [dbo].[Labs] OFF
SET IDENTITY_INSERT [dbo].[People] ON 

INSERT [dbo].[People] ([Id], [FirstName], [LastName], [UserName], [Password], [LabId]) VALUES (16, N'', N'', N'', N'', 1)
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [UserName], [Password], [LabId]) VALUES (17, N'Ray', N'Tomas', N'tomato', N'1', 1)
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [UserName], [Password], [LabId]) VALUES (18, N'Brunette', N'Katty', N'katty', N'cate', 1)
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [UserName], [Password], [LabId]) VALUES (19, N'Richardson', N'Ketty', N'cat', N'2', 1)
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [UserName], [Password], [LabId]) VALUES (20, N'Richardson', N'Katty', N'catty', N'cat', 1)
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [UserName], [Password], [LabId]) VALUES (21, N'James', N'Lory', N'Doctor', N'James', 1)
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [UserName], [Password], [LabId]) VALUES (23, N'Marina', N'Neil', N'marina', N'pw1', 2)
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [UserName], [Password], [LabId]) VALUES (24, N'Fred', N'Doe', N'freddy', N'teddy', 1)
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [UserName], [Password], [LabId]) VALUES (1021, N'blab', N'bob', N'user1', N'password1!', 3)
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [UserName], [Password], [LabId]) VALUES (1022, N'val', N'Dude', N'user1', N'password1!', 1)
SET IDENTITY_INSERT [dbo].[People] OFF
/****** Object:  Index [PK__aspnet_A__C93A4C98B6DEE229]    Script Date: 11/28/2013 12:01:06 PM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__17477DE41F6D8AAE]    Script Date: 11/28/2013 12:01:06 PM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__30910331769778DB]    Script Date: 11/28/2013 12:01:06 PM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_M__1788CC4D763CAF86]    Script Date: 11/28/2013 12:01:06 PM ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__CD67DC58C1ACF681]    Script Date: 11/28/2013 12:01:06 PM ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__3214EC060D370840]    Script Date: 11/28/2013 12:01:06 PM ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_R__8AFACE1B62DB0AA7]    Script Date: 11/28/2013 12:01:06 PM ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_U__1788CC4D61136E91]    Script Date: 11/28/2013 12:01:06 PM ******/
ALTER TABLE [dbo].[aspnet_Users] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_EventGrade] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([Id])
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_EventGrade]
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_PeopleGrade] FOREIGN KEY([PeopleId])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_PeopleGrade]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_LabPeople] FOREIGN KEY([LabId])
REFERENCES [dbo].[Labs] ([Id])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_LabPeople]
GO
