-- Table: public.UserEvent

-- DROP TABLE IF EXISTS public."UserEvent";

CREATE TABLE IF NOT EXISTS public."UserEvent"
(
    "ID" integer NOT NULL DEFAULT nextval('"UserEvent_ID_seq"'::regclass),
    "UserID" integer NOT NULL,
    "DepartmentEventID" integer NOT NULL,
    CONSTRAINT "UserEvent_pkey" PRIMARY KEY ("ID"),
    CONSTRAINT "UserEvent_departmenteventid" FOREIGN KEY ("DepartmentEventID")
        REFERENCES public."DepartmentEvent" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "UserEvent_userid" FOREIGN KEY ("UserID")
        REFERENCES public."Users" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."UserEvent"
    OWNER to root;