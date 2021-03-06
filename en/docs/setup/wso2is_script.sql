ALTER TABLE `apimgt`.`IDN_OAUTH2_ACCESS_TOKEN` CHANGE COLUMN `TIME_CREATED` `TIME_CREATED` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , CHANGE COLUMN `REFRESH_TOKEN_TIME_CREATED` `REFRESH_TOKEN_TIME_CREATED` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ;

ALTER TABLE `apimgt`.`IDN_STS_STORE` CHANGE COLUMN `EXPIRE_DATE` `EXPIRE_DATE` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ;

ALTER TABLE `apimgt`.`WF_REQUEST` CHANGE COLUMN `UPDATED_AT` `UPDATED_AT` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ;

CREATE TABLE IF NOT EXISTS  apimgt.IDN_SAML2_ASSERTION_STORE ( ID INTEGER NOT NULL AUTO_INCREMENT,  SAML2_ID  VARCHAR(255) ,  SAML2_ISSUER VARCHAR(255) , SAML2_SUBJECT  VARCHAR(255) ,  SAML2_SESSION_INDEX  VARCHAR(255) ,  SAML2_AUTHN_CONTEXT_CLASS_REF  VARCHAR(255) ,  SAML2_ASSERTION  VARCHAR(4096) ,  PRIMARY KEY (ID))ENGINE INNODB;

ALTER TABLE `apimgt`.`AM_SUBSCRIBER` CHANGE COLUMN `CREATED_TIME` `CREATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,CHANGE COLUMN `UPDATED_TIME` `UPDATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ;

ALTER TABLE `apimgt`.`AM_APPLICATION` CHANGE COLUMN `UPDATED_TIME` `UPDATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,CHANGE COLUMN `UUID` `UUID` VARCHAR(256) NULL DEFAULT NULL ;

ALTER TABLE `apimgt`.`AM_API` CHANGE COLUMN `UPDATED_TIME` `UPDATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ;

ALTER TABLE `apimgt`.`AM_SUBSCRIPTION` CHANGE COLUMN `CREATED_TIME` `CREATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , CHANGE COLUMN `UPDATED_TIME` `UPDATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , CHANGE COLUMN `UUID` `UUID` VARCHAR(256) NULL DEFAULT NULL ;

ALTER TABLE `apimgt`.`AM_SUBSCRIPTION_KEY_MAPPING` CHANGE COLUMN `KEY_TYPE` `KEY_TYPE` VARCHAR(512) NOT NULL ;

ALTER TABLE `apimgt`.`AM_APPLICATION_KEY_MAPPING` CHANGE COLUMN `KEY_TYPE` `KEY_TYPE` VARCHAR(512) NOT NULL ;

ALTER TABLE `apimgt`.`AM_WORKFLOWS` CHANGE COLUMN `WF_CREATED_TIME` `WF_CREATED_TIME` TIMESTAMP NULL ;

ALTER TABLE apimgt.AM_ALERT_TYPES_VALUES DROP INDEX AM_ALERT_TYPES_VALUES_CONSTRAINT;

ALTER TABLE apimgt.AM_ALERT_TYPES_VALUES ADD PRIMARY KEY (ALERT_TYPE_ID,USER_NAME,STAKE_HOLDER);

ALTER TABLE apimgt.AM_ALERT_EMAILLIST DROP INDEX AM_ALERT_EMAILLIST_CONSTRAINT;

ALTER TABLE `apimgt`.`AM_ALERT_EMAILLIST` DROP PRIMARY KEY, ADD PRIMARY KEY (`EMAIL_LIST_ID`, `USER_NAME`, `STAKE_HOLDER`);

ALTER TABLE apimgt.AM_ALERT_EMAILLIST_DETAILS DROP INDEX AM_ALERT_EMAILLIST_DETAILS_CONSTRAINT;

ALTER TABLE apimgt.AM_ALERT_EMAILLIST_DETAILS ADD PRIMARY KEY (EMAIL_LIST_ID,EMAIL);


ALTER TABLE `apimgt`.`AM_POLICY_SUBSCRIPTION` CHANGE COLUMN `NAME` `NAME` VARCHAR(512) NOT NULL , CHANGE COLUMN `UUID` `UUID` VARCHAR(256) NULL DEFAULT NULL ;

ALTER TABLE `apimgt`.`AM_POLICY_APPLICATION` CHANGE COLUMN `NAME` `NAME` VARCHAR(512) NOT NULL , CHANGE COLUMN `UUID` `UUID` VARCHAR(256) NULL DEFAULT NULL ;

ALTER TABLE `apimgt`.`AM_POLICY_HARD_THROTTLING` CHANGE COLUMN `NAME` `NAME` VARCHAR(512) NOT NULL ;

ALTER TABLE `apimgt`.`AM_API_THROTTLE_POLICY` CHANGE COLUMN `NAME` `NAME` VARCHAR(512) NOT NULL , CHANGE COLUMN `UUID` `UUID` VARCHAR(256) NULL DEFAULT NULL ;

ALTER TABLE `apimgt`.`AM_POLICY_GLOBAL` CHANGE COLUMN `NAME` `NAME` VARCHAR(512) NOT NULL , CHANGE COLUMN `UUID` `UUID` VARCHAR(256) NULL DEFAULT NULL ;


ALTER TABLE `apimgt`.`AM_BLOCK_CONDITIONS` CHANGE COLUMN `UUID` `UUID` VARCHAR(256) NULL DEFAULT NULL ;

create index IDX_AAI_CTX on apimgt.AM_API (CONTEXT);

create index IDX_AAUM_TT on apimgt.AM_API_URL_MAPPING (THROTTLING_TIER);


ALTER TABLE `regdb`.`REG_LOG` DROP INDEX `REG_LOG_IND_BY_REG_LOGTIME` , ADD INDEX `REG_LOG_IND_BY_REG_LOG` USING HASH (`REG_LOGGED_TIME`, `REG_TENANT_ID`);

ALTER TABLE `regdb`.`REG_RESOURCE` CHANGE COLUMN `REG_CREATED_TIME` `REG_CREATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , CHANGE COLUMN `REG_LAST_UPDATED_TIME` `REG_LAST_UPDATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ;

ALTER TABLE `regdb`.`REG_RESOURCE` DROP INDEX `REG_RESOURCE_IND_BY_TENANT` , ADD INDEX `REG_RESOURCE_IND_BY_TENAN` USING HASH (`REG_TENANT_ID`, `REG_UUID`);

ALTER TABLE `regdb`.`REG_RESOURCE_HISTORY` CHANGE COLUMN `REG_CREATED_TIME` `REG_CREATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , CHANGE COLUMN `REG_LAST_UPDATED_TIME` `REG_LAST_UPDATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ;


ALTER TABLE `registry`.`REG_LOG` DROP INDEX `REG_LOG_IND_BY_REG_LOGTIME` , ADD INDEX `REG_LOG_IND_BY_REG_LOG` USING HASH (`REG_LOGGED_TIME`, `REG_TENANT_ID`);

ALTER TABLE `registry`.`REG_RESOURCE` CHANGE COLUMN `REG_CREATED_TIME` `REG_CREATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , CHANGE COLUMN `REG_LAST_UPDATED_TIME` `REG_LAST_UPDATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ;

ALTER TABLE `registry`.`REG_RESOURCE` DROP INDEX `REG_RESOURCE_IND_BY_TENANT` , ADD INDEX `REG_RESOURCE_IND_BY_TENAN` USING HASH (`REG_TENANT_ID`, `REG_UUID`);

ALTER TABLE `registry`.`REG_RESOURCE_HISTORY` CHANGE COLUMN `REG_CREATED_TIME` `REG_CREATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , CHANGE COLUMN `REG_LAST_UPDATED_TIME` `REG_LAST_UPDATED_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ;


ALTER TABLE `apimgt`.`IDN_OAUTH2_ACCESS_TOKEN` DROP INDEX `IDX_AT` , ADD INDEX `IDX_AT` (`ACCESS_TOKEN`(250) ASC), DROP INDEX `IDX_IOAT_AT` , ADD INDEX `IDX_IOAT_AT` (`ACCESS_TOKEN`(250) ASC);











