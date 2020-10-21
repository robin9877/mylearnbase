USE webnews;
CREATE TABLE USER(
userid INT PRIMARY KEY UNIQUE NOT NULL,
username VARCHAR(20) NOT NULL,
userpassworld VARCHAR(20) NOT NULL,
sex VARCHAR(10) NOT NULL,
useremail VARCHAR(20) NOT NULL
	);


# admin表:存放用户账户信息

CREATE TABLE admin(
adminID INT PRIMARY KEY UNIQUE NOT NULL,
adminName VARCHAR(20) NOT NULL,
adminPassword VARCHAR(20) NOT NULL
)

# 3。role表:存放权限信息
CREATE TABLE news(
	roleID INT PRIMARY KEY UNIQUE NOT NULL,
	rolename VARCHAR(20) NOT NULL
);


# 4. news表：存放新闻信息

CREATE TABLE news(
newsID INT PRIMARY KEY UNIQUE NOT NULL,

newsTitle VARCHAR(50) NOT NULL,
newsContent TEXT NOT NULL,
newsDate TIMESTAMP,
newsDesc VARCHAR(50) NOT NULL,
newsImagepath VARCHAR(50),
newsRate INT,
newsIsCheck BIT,
newsISTop BIT
);



# categroy表：存放新闻栏目信息、
CREATE TABLE categroy(
categoryID INT PRIMARY KEY UNIQUE NOT NULL,
categoryName VARCHAR(50) NOT NULL,
categoryDesc VARCHAR(50) NOT NULL
);

# 6.新闻评论信息

CREATE TABLE COMMENT (
commentID INT PRIMARY KEY UNIQUE NOT NULL,
commentTitle VARCHAR(50) NOT NULL,
commentContent TEXT NOT NULL,
commentDate DATETIME
);


# admin_Roles 管理员_权限主要用来存放管理员和权限的关系
CREATE TABLE admin_Roles(
aRid INT PRIMARY KEY UNIQUE NOT NULL,
adminID INT NOT NULL,
roleID INT NOT NULL
)

# newscomment 

CREATE TABLE news_Comment (
nCommentID INT PRIMARY KEY UNIQUE NOT NULL,
newsID INT NOT NULL,
commentID INT NOT NULL
)

#users_Comment
CREATE TABLE users_Comment(
uCID INT PRIMARY KEY UNIQUE NOT NULL,
userID INT NOT NULL,
commentID INT NOT NULL
)







