USE Master
GO
IF EXISTS (SELECT name
 FROM Sysdatabases
 WHERE name = 'PmToolDb')
 BEGIN
 USE Master;
 ALTER DATABASE PmToolDb
 SET SINGLE_USER
 WITH ROLLBACK IMMEDIATE;
 DROP DATABASE PmToolDb;
 END
CREATE DATABASE PmToolDb;
GO
USE PmToolDb;
GO

CREATE TABLE client (
  clientId                    int IDENTITY NOT NULL, 
  personId                    int NOT NULL, 
  businessDescription         varchar(255) NOT NULL, 
  webAddress                  varchar(255) NOT NULL, 
  domainLoginUrl              varchar(255) NULL, 
  domainUsername              varchar(255) NULL, 
  domainPassword              varchar(255) NULL, 
  hostingLoginUrl             varchar(255) NULL, 
  hostingUserName             varchar(255) NULL, 
  hostingPassword             varchar(255) NULL, 
  wpLoginUrl                  varchar(255) NULL, 
  wpUserName                  varchar(255) NULL, 
  wpPassword                  varchar(255) NULL, 
  googleAnalyticsUrl          varchar(255) NULL, 
  googleAnalyticsUsername     varchar(255) NULL, 
  googleAnalyticsPassword     varchar(255) NULL, 
  googleSearchConsoleUrl      varchar(255) NULL, 
  googleSearchConsoleUsername varchar(255) NULL, 
  googleSearchConsolePassword varchar(255) NULL, 
  bingWemasterToolsUrl        varchar(255) NULL, 
  bingWemasterToolsUsername   varchar(255) NULL, 
  bingWemasterToolsPassword   varchar(255) NULL, 
  googleMyBusinessUrl         varchar(255) NULL, 
  googleMyBusinessUsername    varchar(255) NULL, 
  googleMyBusinessPassword    varchar(255) NULL, 
  keyWords                    varchar(255) NULL, 
  targetKeyPhases             varchar(255) NOT NULL, 
  targetAreas                 varchar(255) NOT NULL, 
  competitorsUrl              varchar(255) NULL, 
  socialMedia                 varchar(255) NULL, 
  socialMedia2                varchar(255) NULL, 
  socialMedia3                varchar(255) NULL, 
  socialMedia4                varchar(255) NULL, 
  otherMarketingTypes         varchar(255) NULL, 
  monthlyBudget               int NOT NULL, 
  monthlyClientTarget         int NULL, 
  expandPlaning               int NULL, 
  marketingGoals              varchar(255) NULL, 
  PRIMARY KEY (clientId));
CREATE TABLE country (
  countryId   int IDENTITY NOT NULL, 
  countryName varchar(255) NOT NULL, 
  PRIMARY KEY (countryId));
CREATE TABLE employee (
  employeeId     int IDENTITY NOT NULL, 
  personId       int NOT NULL, 
  employeeNumber int NULL, 
  PRIMARY KEY (employeeId));
CREATE TABLE modelProject (
  modelProjectId   int IDENTITY NOT NULL, 
  modelName        varchar(255) NOT NULL, 
  modelDescription varchar(255) NULL, 
  PRIMARY KEY (modelProjectId));
CREATE TABLE modelProjectTask (
  modelProjectTaskId int IDENTITY NOT NULL, 
  modelTaskId        int NOT NULL, 
  modelProjectId     int NOT NULL, 
  PRIMARY KEY (modelProjectTaskId));
CREATE TABLE modelTask (
  modelTaskId          int IDENTITY NOT NULL, 
  modelProjectId       int NOT NULL, 
  modelTaskName        varchar(255) NOT NULL, 
  modelTaskWeight      varchar(255) NULL, 
  modelTaskDescription varchar(255) NOT NULL, 
  modelTaskDuration    time NULL, 
  PRIMARY KEY (modelTaskId));
CREATE TABLE ownersLicense (
  ownersLicenseId int IDENTITY NOT NULL, 
  companyName     varchar(255) NOT NULL, 
  PRIMARY KEY (ownersLicenseId));
CREATE TABLE person (
  personId        int IDENTITY NOT NULL, 
  firstName       varchar(255) NOT NULL, 
  lastName        varchar(255) NOT NULL, 
  middleName      varchar(255) NULL, 
  address         varchar(255) NULL, 
  email           varchar(255) NOT NULL, 
  ownersLicenseId int NOT NULL, 
  address2        varchar(255) NULL, 
  provinceId      int NOT NULL, 
  postalCode      varchar(255) NOT NULL, 
  phoneNumber     varchar(255) NOT NULL, 
  PRIMARY KEY (personId));
CREATE TABLE project (
  projectId          int IDENTITY NOT NULL, 
  clientId           int NOT NULL, 
  employeeId         int NOT NULL, 
  projectOpen        int NOT NULL, 
  projectName        int NOT NULL, 
  startDate          date NOT NULL, 
  endDate            date NULL, 
  projectDescription varchar(255) NOT NULL, 
  PRIMARY KEY (projectId));
CREATE TABLE province (
  provinceId   int IDENTITY NOT NULL, 
  provinceName varchar(255) NOT NULL, 
  provinceCode varchar(2) NOT NULL, 
  countryId    int NOT NULL, 
  PRIMARY KEY (provinceId));
CREATE TABLE task (
  taskId          int IDENTITY NOT NULL, 
  employeeId      int NULL, 
  taskListId      int NOT NULL, 
  taskName        varchar(255) NOT NULL, 
  taskWeight      int NOT NULL, 
  taskDescription varchar(255) NOT NULL, 
  expectedDate    date NOT NULL, 
  taskDuration    time NULL, 
  PRIMARY KEY (taskId));
CREATE TABLE taskInfo (
  taskInfoId int IDENTITY NOT NULL, 
  taskId     int NOT NULL, 
  taskNote   varchar(255) NULL, 
  PRIMARY KEY (taskInfoId));
CREATE TABLE taskList (
  taskListId   int IDENTITY NOT NULL, 
  taskListName varchar(255) NULL, 
  projectId    int NOT NULL, 
  taskListOpen int NOT NULL, 
  PRIMARY KEY (taskListId));
ALTER TABLE person ADD CONSTRAINT FKperson361647 FOREIGN KEY (ownersLicenseId) REFERENCES [ownersLicense ] (ownersLicenseId);
ALTER TABLE province ADD CONSTRAINT FKprovince320043 FOREIGN KEY (countryId) REFERENCES country (countryId);
ALTER TABLE person ADD CONSTRAINT FKperson577331 FOREIGN KEY (provinceId) REFERENCES province (provinceId);
ALTER TABLE taskList ADD CONSTRAINT FKtaskList611773 FOREIGN KEY (projectId) REFERENCES project (projectId);
ALTER TABLE task ADD CONSTRAINT FKtask191516 FOREIGN KEY (taskListId) REFERENCES taskList (taskListId);
ALTER TABLE employee ADD CONSTRAINT FKemployee81123 FOREIGN KEY (personId) REFERENCES person (personId);
ALTER TABLE client ADD CONSTRAINT FKclient103479 FOREIGN KEY (personId) REFERENCES person (personId);
ALTER TABLE project ADD CONSTRAINT FKproject226909 FOREIGN KEY (employeeId) REFERENCES employee (employeeId);
ALTER TABLE project ADD CONSTRAINT FKproject793797 FOREIGN KEY (clientId) REFERENCES client (clientId);
ALTER TABLE taskInfo ADD CONSTRAINT FKtaskInfo308518 FOREIGN KEY (taskId) REFERENCES task (taskId);
ALTER TABLE modelProjectTask ADD CONSTRAINT FKmodelProje471037 FOREIGN KEY (modelProjectId) REFERENCES modelProject (modelProjectId);
ALTER TABLE modelProjectTask ADD CONSTRAINT FKmodelProje677680 FOREIGN KEY (modelTaskId) REFERENCES modelTask (modelTaskId);
ALTER TABLE task ADD CONSTRAINT FKtask90562 FOREIGN KEY (employeeId) REFERENCES employee (employeeId);
