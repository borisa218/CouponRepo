
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 04/27/2015 23:29:17
-- Generated from EDMX file: C:\Users\Dor\Desktop\Coupon\Coupon\CouponModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ester];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_SocailNetworkCouponCustomer_SocailNetworkCoupon]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SocailNetworkCouponCustomer] DROP CONSTRAINT [FK_SocailNetworkCouponCustomer_SocailNetworkCoupon];
GO
IF OBJECT_ID(N'[dbo].[FK_SocailNetworkCouponCustomer_Customer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SocailNetworkCouponCustomer] DROP CONSTRAINT [FK_SocailNetworkCouponCustomer_Customer];
GO
IF OBJECT_ID(N'[dbo].[FK_LocationCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Customer] DROP CONSTRAINT [FK_LocationCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderedCouponCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderedCouponSet] DROP CONSTRAINT [FK_OrderedCouponCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerCoupon_Customer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CustomerCoupon] DROP CONSTRAINT [FK_CustomerCoupon_Customer];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerCoupon_Coupon]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CustomerCoupon] DROP CONSTRAINT [FK_CustomerCoupon_Coupon];
GO
IF OBJECT_ID(N'[dbo].[FK_CouponOrderedCoupon]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderedCouponSet] DROP CONSTRAINT [FK_CouponOrderedCoupon];
GO
IF OBJECT_ID(N'[dbo].[FK_CouponLocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CouponSet] DROP CONSTRAINT [FK_CouponLocation];
GO
IF OBJECT_ID(N'[dbo].[FK_CouponBusiness]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CouponSet] DROP CONSTRAINT [FK_CouponBusiness];
GO
IF OBJECT_ID(N'[dbo].[FK_BusinessBusinessOwner]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BusinessSet] DROP CONSTRAINT [FK_BusinessBusinessOwner];
GO
IF OBJECT_ID(N'[dbo].[FK_BusinessAdmin]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BusinessSet] DROP CONSTRAINT [FK_BusinessAdmin];
GO
IF OBJECT_ID(N'[dbo].[FK_SocailNetworkCouponAdmin]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CouponSet_SocailNetworkCoupon] DROP CONSTRAINT [FK_SocailNetworkCouponAdmin];
GO
IF OBJECT_ID(N'[dbo].[FK_SocailNetworkCoupon_inherits_Coupon]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CouponSet_SocailNetworkCoupon] DROP CONSTRAINT [FK_SocailNetworkCoupon_inherits_Coupon];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_inherits_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Customer] DROP CONSTRAINT [FK_Customer_inherits_Person];
GO
IF OBJECT_ID(N'[dbo].[FK_BusinessOwner_inherits_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_BusinessOwner] DROP CONSTRAINT [FK_BusinessOwner_inherits_Person];
GO
IF OBJECT_ID(N'[dbo].[FK_Admin_inherits_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Admin] DROP CONSTRAINT [FK_Admin_inherits_Person];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[PersonSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet];
GO
IF OBJECT_ID(N'[dbo].[OrderedCouponSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderedCouponSet];
GO
IF OBJECT_ID(N'[dbo].[CouponSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CouponSet];
GO
IF OBJECT_ID(N'[dbo].[LocationSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LocationSet];
GO
IF OBJECT_ID(N'[dbo].[BusinessSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BusinessSet];
GO
IF OBJECT_ID(N'[dbo].[CouponSet_SocailNetworkCoupon]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CouponSet_SocailNetworkCoupon];
GO
IF OBJECT_ID(N'[dbo].[PersonSet_Customer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet_Customer];
GO
IF OBJECT_ID(N'[dbo].[PersonSet_BusinessOwner]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet_BusinessOwner];
GO
IF OBJECT_ID(N'[dbo].[PersonSet_Admin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet_Admin];
GO
IF OBJECT_ID(N'[dbo].[SocailNetworkCouponCustomer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SocailNetworkCouponCustomer];
GO
IF OBJECT_ID(N'[dbo].[CustomerCoupon]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CustomerCoupon];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PersonSet'
CREATE TABLE [dbo].[PersonSet] (
    [pid] varchar(400)  NOT NULL,
    [UserName] varchar(400)  NULL,
    [Password] varchar(400)  NULL,
    [Email] varchar(400)  NULL,
    [Phone] varchar(400)  NULL,
    [Age] varchar(400)  NULL,
    [Sex] varchar(400)  NULL
);
GO

-- Creating table 'OrderedCouponSet'
CREATE TABLE [dbo].[OrderedCouponSet] (
    [CouponId] varchar(400)  NOT NULL,
    [Used] bit  NULL,
    [Rank] int  NULL,
    [CouponName] varchar(400)  NULL,
    [Customer_pid] varchar(400)  NULL
);
GO

-- Creating table 'CouponSet'
CREATE TABLE [dbo].[CouponSet] (
    [Name] varchar(400)  NOT NULL,
    [Category] int  NULL,
    [OriginalPrice] int  NULL,
    [DiscountPrice] int  NULL,
    [Description] varchar(400)  NULL,
    [CouponCode] int  NULL,
    [ExpirationDate] datetime  NULL,
    [AverageRank] float  NULL,
    [Location_Address] varchar(400)  NULL,
    [Business_BusinessId] varchar(400)  NULL
);
GO

-- Creating table 'LocationSet'
CREATE TABLE [dbo].[LocationSet] (
    [x] float  NULL,
    [y] varchar(400)  NULL,
    [Address] varchar(400)  NOT NULL
);
GO

-- Creating table 'BusinessSet'
CREATE TABLE [dbo].[BusinessSet] (
    [BusinessId] varchar(400)  NOT NULL,
    [Name] varchar(400)  NULL,
    [Address] varchar(400)  NULL,
    [Description] varchar(400)  NULL,
    [Category] int  NULL,
    [Phone] varchar(400)  NULL,
    [BusinessOwner_pid] varchar(400)  NULL,
    [Admin_pid] varchar(400)  NULL
);
GO

-- Creating table 'CouponSet_SocailNetworkCoupon'
CREATE TABLE [dbo].[CouponSet_SocailNetworkCoupon] (
    [SocialWebsite] varchar(400)  NULL,
    [Name] varchar(400)  NOT NULL,
    [Admin_pid] varchar(400)  NULL
);
GO

-- Creating table 'PersonSet_Customer'
CREATE TABLE [dbo].[PersonSet_Customer] (
    [LocationAddress] varchar(400)  NULL,
    [pid] varchar(400)  NOT NULL
);
GO

-- Creating table 'PersonSet_BusinessOwner'
CREATE TABLE [dbo].[PersonSet_BusinessOwner] (
    [pid] varchar(400)  NOT NULL
);
GO

-- Creating table 'PersonSet_Admin'
CREATE TABLE [dbo].[PersonSet_Admin] (
    [pid] varchar(400)  NOT NULL
);
GO

-- Creating table 'SocailNetworkCouponCustomer'
CREATE TABLE [dbo].[SocailNetworkCouponCustomer] (
    [SocailNetworkCoupon_Name] varchar(400)  NOT NULL,
    [Customer_pid] varchar(400)  NOT NULL
);
GO

-- Creating table 'CustomerCoupon'
CREATE TABLE [dbo].[CustomerCoupon] (
    [Customer1_pid] varchar(400)  NOT NULL,
    [Coupon_Name] varchar(400)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [pid] in table 'PersonSet'
ALTER TABLE [dbo].[PersonSet]
ADD CONSTRAINT [PK_PersonSet]
    PRIMARY KEY CLUSTERED ([pid] ASC);
GO

-- Creating primary key on [CouponId] in table 'OrderedCouponSet'
ALTER TABLE [dbo].[OrderedCouponSet]
ADD CONSTRAINT [PK_OrderedCouponSet]
    PRIMARY KEY CLUSTERED ([CouponId] ASC);
GO

-- Creating primary key on [Name] in table 'CouponSet'
ALTER TABLE [dbo].[CouponSet]
ADD CONSTRAINT [PK_CouponSet]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Address] in table 'LocationSet'
ALTER TABLE [dbo].[LocationSet]
ADD CONSTRAINT [PK_LocationSet]
    PRIMARY KEY CLUSTERED ([Address] ASC);
GO

-- Creating primary key on [BusinessId] in table 'BusinessSet'
ALTER TABLE [dbo].[BusinessSet]
ADD CONSTRAINT [PK_BusinessSet]
    PRIMARY KEY CLUSTERED ([BusinessId] ASC);
GO

-- Creating primary key on [Name] in table 'CouponSet_SocailNetworkCoupon'
ALTER TABLE [dbo].[CouponSet_SocailNetworkCoupon]
ADD CONSTRAINT [PK_CouponSet_SocailNetworkCoupon]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [pid] in table 'PersonSet_Customer'
ALTER TABLE [dbo].[PersonSet_Customer]
ADD CONSTRAINT [PK_PersonSet_Customer]
    PRIMARY KEY CLUSTERED ([pid] ASC);
GO

-- Creating primary key on [pid] in table 'PersonSet_BusinessOwner'
ALTER TABLE [dbo].[PersonSet_BusinessOwner]
ADD CONSTRAINT [PK_PersonSet_BusinessOwner]
    PRIMARY KEY CLUSTERED ([pid] ASC);
GO

-- Creating primary key on [pid] in table 'PersonSet_Admin'
ALTER TABLE [dbo].[PersonSet_Admin]
ADD CONSTRAINT [PK_PersonSet_Admin]
    PRIMARY KEY CLUSTERED ([pid] ASC);
GO

-- Creating primary key on [SocailNetworkCoupon_Name], [Customer_pid] in table 'SocailNetworkCouponCustomer'
ALTER TABLE [dbo].[SocailNetworkCouponCustomer]
ADD CONSTRAINT [PK_SocailNetworkCouponCustomer]
    PRIMARY KEY NONCLUSTERED ([SocailNetworkCoupon_Name], [Customer_pid] ASC);
GO

-- Creating primary key on [Customer1_pid], [Coupon_Name] in table 'CustomerCoupon'
ALTER TABLE [dbo].[CustomerCoupon]
ADD CONSTRAINT [PK_CustomerCoupon]
    PRIMARY KEY NONCLUSTERED ([Customer1_pid], [Coupon_Name] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [SocailNetworkCoupon_Name] in table 'SocailNetworkCouponCustomer'
ALTER TABLE [dbo].[SocailNetworkCouponCustomer]
ADD CONSTRAINT [FK_SocailNetworkCouponCustomer_SocailNetworkCoupon]
    FOREIGN KEY ([SocailNetworkCoupon_Name])
    REFERENCES [dbo].[CouponSet_SocailNetworkCoupon]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Customer_pid] in table 'SocailNetworkCouponCustomer'
ALTER TABLE [dbo].[SocailNetworkCouponCustomer]
ADD CONSTRAINT [FK_SocailNetworkCouponCustomer_Customer]
    FOREIGN KEY ([Customer_pid])
    REFERENCES [dbo].[PersonSet_Customer]
        ([pid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SocailNetworkCouponCustomer_Customer'
CREATE INDEX [IX_FK_SocailNetworkCouponCustomer_Customer]
ON [dbo].[SocailNetworkCouponCustomer]
    ([Customer_pid]);
GO

-- Creating foreign key on [LocationAddress] in table 'PersonSet_Customer'
ALTER TABLE [dbo].[PersonSet_Customer]
ADD CONSTRAINT [FK_LocationCustomer]
    FOREIGN KEY ([LocationAddress])
    REFERENCES [dbo].[LocationSet]
        ([Address])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LocationCustomer'
CREATE INDEX [IX_FK_LocationCustomer]
ON [dbo].[PersonSet_Customer]
    ([LocationAddress]);
GO

-- Creating foreign key on [Customer_pid] in table 'OrderedCouponSet'
ALTER TABLE [dbo].[OrderedCouponSet]
ADD CONSTRAINT [FK_OrderedCouponCustomer]
    FOREIGN KEY ([Customer_pid])
    REFERENCES [dbo].[PersonSet_Customer]
        ([pid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderedCouponCustomer'
CREATE INDEX [IX_FK_OrderedCouponCustomer]
ON [dbo].[OrderedCouponSet]
    ([Customer_pid]);
GO

-- Creating foreign key on [Customer1_pid] in table 'CustomerCoupon'
ALTER TABLE [dbo].[CustomerCoupon]
ADD CONSTRAINT [FK_CustomerCoupon_Customer]
    FOREIGN KEY ([Customer1_pid])
    REFERENCES [dbo].[PersonSet_Customer]
        ([pid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Coupon_Name] in table 'CustomerCoupon'
ALTER TABLE [dbo].[CustomerCoupon]
ADD CONSTRAINT [FK_CustomerCoupon_Coupon]
    FOREIGN KEY ([Coupon_Name])
    REFERENCES [dbo].[CouponSet]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerCoupon_Coupon'
CREATE INDEX [IX_FK_CustomerCoupon_Coupon]
ON [dbo].[CustomerCoupon]
    ([Coupon_Name]);
GO

-- Creating foreign key on [CouponName] in table 'OrderedCouponSet'
ALTER TABLE [dbo].[OrderedCouponSet]
ADD CONSTRAINT [FK_CouponOrderedCoupon]
    FOREIGN KEY ([CouponName])
    REFERENCES [dbo].[CouponSet]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CouponOrderedCoupon'
CREATE INDEX [IX_FK_CouponOrderedCoupon]
ON [dbo].[OrderedCouponSet]
    ([CouponName]);
GO

-- Creating foreign key on [Location_Address] in table 'CouponSet'
ALTER TABLE [dbo].[CouponSet]
ADD CONSTRAINT [FK_CouponLocation]
    FOREIGN KEY ([Location_Address])
    REFERENCES [dbo].[LocationSet]
        ([Address])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CouponLocation'
CREATE INDEX [IX_FK_CouponLocation]
ON [dbo].[CouponSet]
    ([Location_Address]);
GO

-- Creating foreign key on [Business_BusinessId] in table 'CouponSet'
ALTER TABLE [dbo].[CouponSet]
ADD CONSTRAINT [FK_CouponBusiness]
    FOREIGN KEY ([Business_BusinessId])
    REFERENCES [dbo].[BusinessSet]
        ([BusinessId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CouponBusiness'
CREATE INDEX [IX_FK_CouponBusiness]
ON [dbo].[CouponSet]
    ([Business_BusinessId]);
GO

-- Creating foreign key on [BusinessOwner_pid] in table 'BusinessSet'
ALTER TABLE [dbo].[BusinessSet]
ADD CONSTRAINT [FK_BusinessBusinessOwner]
    FOREIGN KEY ([BusinessOwner_pid])
    REFERENCES [dbo].[PersonSet_BusinessOwner]
        ([pid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_BusinessBusinessOwner'
CREATE INDEX [IX_FK_BusinessBusinessOwner]
ON [dbo].[BusinessSet]
    ([BusinessOwner_pid]);
GO

-- Creating foreign key on [Admin_pid] in table 'BusinessSet'
ALTER TABLE [dbo].[BusinessSet]
ADD CONSTRAINT [FK_BusinessAdmin]
    FOREIGN KEY ([Admin_pid])
    REFERENCES [dbo].[PersonSet_Admin]
        ([pid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_BusinessAdmin'
CREATE INDEX [IX_FK_BusinessAdmin]
ON [dbo].[BusinessSet]
    ([Admin_pid]);
GO

-- Creating foreign key on [Admin_pid] in table 'CouponSet_SocailNetworkCoupon'
ALTER TABLE [dbo].[CouponSet_SocailNetworkCoupon]
ADD CONSTRAINT [FK_SocailNetworkCouponAdmin]
    FOREIGN KEY ([Admin_pid])
    REFERENCES [dbo].[PersonSet_Admin]
        ([pid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SocailNetworkCouponAdmin'
CREATE INDEX [IX_FK_SocailNetworkCouponAdmin]
ON [dbo].[CouponSet_SocailNetworkCoupon]
    ([Admin_pid]);
GO

-- Creating foreign key on [Name] in table 'CouponSet_SocailNetworkCoupon'
ALTER TABLE [dbo].[CouponSet_SocailNetworkCoupon]
ADD CONSTRAINT [FK_SocailNetworkCoupon_inherits_Coupon]
    FOREIGN KEY ([Name])
    REFERENCES [dbo].[CouponSet]
        ([Name])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [pid] in table 'PersonSet_Customer'
ALTER TABLE [dbo].[PersonSet_Customer]
ADD CONSTRAINT [FK_Customer_inherits_Person]
    FOREIGN KEY ([pid])
    REFERENCES [dbo].[PersonSet]
        ([pid])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [pid] in table 'PersonSet_BusinessOwner'
ALTER TABLE [dbo].[PersonSet_BusinessOwner]
ADD CONSTRAINT [FK_BusinessOwner_inherits_Person]
    FOREIGN KEY ([pid])
    REFERENCES [dbo].[PersonSet]
        ([pid])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [pid] in table 'PersonSet_Admin'
ALTER TABLE [dbo].[PersonSet_Admin]
ADD CONSTRAINT [FK_Admin_inherits_Person]
    FOREIGN KEY ([pid])
    REFERENCES [dbo].[PersonSet]
        ([pid])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------