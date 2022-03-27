const Liquibase = require('node-liquibase').Liquibase;
const MYSQL_DEFAULT_CONFIG = require('node-liquibase').MYSQL_DEFAULT_CONFIG;

const myConfig = {
  ... MYSQL_DEFAULT_CONFIG,
  changeLogFile: './changelog.sql',
  url: 'jdbc:mysql://localhost:3306/cms',
  username: 'root',
  password: 'T3mp0rl_2020',
  classpath: '\mysql-connector-java-8.0.28.jar'
}

const instTs = new Liquibase(myConfig);


instTs.update();