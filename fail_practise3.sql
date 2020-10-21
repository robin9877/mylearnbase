CREATE INDEX index_new_title ON news(newstitle);

CREATE INDEX index_new_date ON news(newsdate);

ALTER TABLE news ADD INDEX index_new_rate (newsRate);





CREATE VIEW news_view
AS SELECT 
c.commentID,n.newsID,n.newsRate,n.newsTitle,n.newsContent,n.newsDate
FROM news_comment c,news n

WHERE news_comment.newsID=news.newsID;



