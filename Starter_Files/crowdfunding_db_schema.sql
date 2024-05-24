CREATE TABLE "category" (
    "category_id" varchar(150) NOT NULL,
    "category" varchar(150) NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(150)  NOT NULL,
    "subcategory" varchar(150)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" integer   NOT NULL,
    "contact_id" integer   NOT NULL,
    "company_name" varchar(150)   NOT NULL,
    "description" text   NOT NULL,
	"goal" numeric(10,2)  NOT NULL,
    "pledged" numeric(10,2)   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" integer   NOT NULL,
    "country" varchar(150)   NOT NULL,
    "currency" varchar(150)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(150)   NOT NULL,
    "subcategory_id" varchar(150)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" integer  NOT NULL,
    "first_name" varchar(100)   NOT NULL,
    "last_name" varchar(100)   NOT NULL,
    "email" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);


ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

SELECT * FROM public."Contacts";

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM campaign;









