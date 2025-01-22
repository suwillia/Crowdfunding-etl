DROP TABLE IF EXISTS campaigns;
CREATE TABLE campaign (
    "cf_id" VARCHAR   NOT NULL PRIMARY KEY,
    "contact_id" VARCHAR(20) NOT NULL,
    "company_name" VARCHAR (256) NOT NULL,
    "description" VARCHAR (256) NOT NULL,
    "goal" VARCHAR  NOT NULL,
    "pledged" VARCHAR NOT NULL,
    "outcome" VARCHAR (256) NOT NULL,
    "backers_count" VARCHAR NOT NULL,
    "country" VARCHAR (20) NOT NULL,
    "currency" VARCHAR (20) NOT NULL,
    "launch_date" VARCHAR NOT NULL,
    "end_date" VARCHAR NOT NULL,
    "category_id" VARCHAR(20) NOT NULL,
    "subcategory_id" VARCHAR(20) NOT NULL);


DROP TABLE IF EXISTS category;
CREATE TABLE "category" (
    "category_id" VARCHAR(20) NOT NULL PRIMARY KEY,
    "category_name" VARCHAR (256) NOT NULL
    
);
DROP TABLE IF EXISTS subcategory;
CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(20) NOT NULL PRIMARY KEY,
    "subcategory_name" VARCHAR (256) NOT NULL
);
DROP TABLE IF EXISTS contacts;
CREATE TABLE "contacts" (
    "contact_id" VARCHAR (20)  NOT NULL PRIMARY KEY,
    "first_name" VARCHAR (256) NOT NULL,
    "last_name" VARCHAR (256) NOT NULL,
    "email" VARCHAR (256) NOT NULL
 
     
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id")

