-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/schema/8RQWI5bLAEOtUKtCi2ctSQ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "Timbres" (
    "ID" int  NOT NULL ,
    "Name1" string  NOT NULL ,
    "Name2" string  NOT NULL ,
    "Name3" string  NOT NULL ,
    "Name4" string  NOT NULL ,
    "Name5" string  NOT NULL ,
    CONSTRAINT "pk_Timbres" PRIMARY KEY (
        "ID"
    )
)

GO

CREATE TABLE "Collection" (
    "Id" int  NOT NULL ,
    "Belgique" string  NOT NULL ,
    "France" string  NOT NULL ,
    "Canada" string  NOT NULL ,
    "Maroc" string  NOT NULL ,
    CONSTRAINT "pk_Collection" PRIMARY KEY (
        "Id"
    )
)

GO

