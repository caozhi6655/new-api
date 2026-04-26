-- new-api 本地开发用 MySQL 初始化脚本
-- 由 docker-compose.mysql.yml 在 mysql 容器首次启动时自动执行
--
-- new-api 启动时会通过 checkMySQLChineseSupport 校验数据库默认字符集，
-- 必须为 utf8mb4 / utf8 / gbk / big5 / gb18030 之一，这里固定使用 utf8mb4
-- 并搭配 utf8mb4_unicode_ci 作为排序规则。

CREATE DATABASE IF NOT EXISTS `new_api`
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

-- 开发环境直接复用 root 账号；如需独立账号可以打开下面的注释。
-- CREATE USER IF NOT EXISTS 'new_api'@'%' IDENTIFIED BY 'new_api_pwd';
-- GRANT ALL PRIVILEGES ON `new_api`.* TO 'new_api'@'%';
-- FLUSH PRIVILEGES;
