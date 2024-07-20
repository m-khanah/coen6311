-- Table: public.DepartmentEvent

-- DROP TABLE IF EXISTS public."DepartmentEvent";

CREATE TABLE IF NOT EXISTS public."DepartmentEvent"
(
    "ID" integer NOT NULL DEFAULT nextval('"DepartmentEvent_ID_seq"'::regclass),
    "UserDepartmentID" integer NOT NULL,
    "EventTypeID" integer NOT NULL,
    "Content" character varying(500) COLLATE pg_catalog."default" NOT NULL,
    "Datetime" date NOT NULL,
    CONSTRAINT "DepartmentEvent_pkey" PRIMARY KEY ("ID"),
    CONSTRAINT "DepartmentEvent_eventtypeid" FOREIGN KEY ("EventTypeID")
        REFERENCES public."EventType" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "DepartmentEvent_userdepartmentid" FOREIGN KEY ("UserDepartmentID")
        REFERENCES public."UserDepartment" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."DepartmentEvent"
    OWNER to root;