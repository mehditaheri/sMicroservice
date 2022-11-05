USE [SteUser]
GO
/****** Object:  Table [dbo].[BaseInformation]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseInformation](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](1000) NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_BaseInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Network]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Network](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[SendReport] [bit] NOT NULL,
	[Status] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ready]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ready](
	[ReadyId] [int] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Summary] [nvarchar](4000) NOT NULL,
	[Status] [bit] NOT NULL,
	[AcceptStartDate] [date] NOT NULL,
	[AcceptEndDate] [date] NOT NULL,
	[AtlasReportCalendarId] [int] NULL,
	[ShowOrder] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resume]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resume](
	[UserId] [int] NOT NULL,
	[UserImageUrl] [nvarchar](1000) NULL,
	[Introduction] [nvarchar](4000) NULL,
	[SavabegheTadris] [nvarchar](4000) NULL,
	[SavabegheBargozari] [nvarchar](4000) NULL,
	[SavabegheTahghigh] [nvarchar](4000) NULL,
	[SavabegheEjra] [nvarchar](4000) NULL,
	[SuggestedTopics] [nvarchar](4000) NULL,
	[Video1Url] [nvarchar](1000) NULL,
	[Audio1Url] [nvarchar](1000) NULL,
	[Video2Url] [nvarchar](1000) NULL,
	[Audio2Url] [nvarchar](1000) NULL,
	[Plate] [nvarchar](50) NULL,
	[OtherLectureLanguage] [nvarchar](100) NULL,
	[Status] [bit] NULL,
	[RejectionReasons] [nvarchar](4000) NULL,
	[SetStatusAt] [datetime] NULL,
	[SetStatusUserId] [int] NULL,
	[SetStatusFullName] [nvarchar](500) NULL,
	[CenterStatus] [bit] NULL,
	[CenterSetStatusAt] [datetime] NULL,
	[CenterSetStatusUserId] [int] NULL,
	[CenterSetStatusFullName] [nvarchar](500) NULL,
	[CenterRejectionReasons] [nvarchar](4000) NULL,
	[ResumeStatus] [tinyint] NULL,
	[ResumeSetStatusAt] [datetime] NULL,
	[ResumeSetStatusUserId] [int] NULL,
	[ResumeSetStatusFullName] [nvarchar](500) NULL,
	[ResumeRejectionReasons] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Resume] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResumeCertificate]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResumeCertificate](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[OrganizationTitle] [nvarchar](500) NOT NULL,
	[ImageUrl] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResumeEducation]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResumeEducation](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[LevelId] [int] NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Orientation] [nvarchar](100) NULL,
	[UniversityName] [nvarchar](100) NULL,
	[ImageUrl] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResumeLanguage]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResumeLanguage](
	[UserId] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
	[LevelId] [tinyint] NOT NULL,
 CONSTRAINT [PK_UserLanguage] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResumeLectureGroup]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResumeLectureGroup](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_ResumeLectureGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResumeLectureLanguage]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResumeLectureLanguage](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_ResumeLectureLanguage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResumeLectureSubject]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResumeLectureSubject](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_ResumeLectureSubject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResumeSkill]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResumeSkill](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[SkillTitle] [nvarchar](500) NOT NULL,
	[LevelId] [tinyint] NOT NULL,
 CONSTRAINT [PK_UserSkill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[ProvinceId] [int] NULL,
	[CountyId] [int] NULL,
	[LocationId] [bigint] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Family] [nvarchar](50) NOT NULL,
	[NationalCode] [bigint] NULL,
	[PhoneNumber] [bigint] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[GenderId] [int] NULL,
	[Birthdate] [date] NULL,
	[Status] [int] NOT NULL,
	[UnsuccessfulLoginCount] [tinyint] NULL,
	[CreateAt] [datetime] NOT NULL,
	[Verified] [bit] NOT NULL,
	[RegisterFromGovernment] [bit] NOT NULL,
	[Temp] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserNetwork]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNetwork](
	[Id] [int] NOT NULL,
	[NetworkId] [int] NOT NULL,
	[NationalCode] [bigint] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[Comment] [nvarchar](4000) NULL,
 CONSTRAINT [PK_UserNetwork] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] NOT NULL,
	[FatherName] [nvarchar](50) NULL,
	[ServiceCenterCode] [nvarchar](50) NULL,
	[IdNumber] [nvarchar](50) NULL,
	[IdNumberIssueLocation] [nvarchar](50) NULL,
	[SoldierStatusId] [int] NULL,
	[MarriedStatusId] [int] NULL,
	[DependentsCount] [int] NULL,
	[HomePhone] [nvarchar](50) NULL,
	[Address] [nvarchar](400) NULL,
	[PostalCode] [nvarchar](50) NULL,
	[EmergencyPhone] [nvarchar](50) NULL,
	[BankAccountNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserReady]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserReady](
	[ReadyId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_UserReady] PRIMARY KEY CLUSTERED 
(
	[ReadyId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserStatus]    Script Date: 10/17/2022 4:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserStatus](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_UnsuccessfulLoginCount]  DEFAULT ((0)) FOR [UnsuccessfulLoginCount]
GO
