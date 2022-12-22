CREATE TABLE 'students' (
	"id" serial NOT NULL PRIMARY KEY,
	"name" varchar(255) NOT NULL,
	"cpf" varchar(11) NOT NULL,
	"email" varchar(255) NOT NULL,
	"classId" integer NOT NULL REFERENCES "class"("id"),
);

CREATE TABLE 'class' (
	"id" serial NOT NULL PRIMARY KEY,
	"code" varchar(255) NOT NULL
);

CREATE TABLE 'historyClass' (
	"id" serial NOT NULL PRIMARY KEY,
	"startDate" DATE NOT NULL,
	"endDate" DATE NOT NULL,
	"studentId" integer NOT NULL REFERENCES "students"("id"),
	"classId" integer NOT NULL REFERENCES "class"("id")
);

CREATE TABLE 'projects' (
	"id" serial NOT NULL PRIMARY KEY,
	"name" varchar(255) NOT NULL,
	"date" DATE NOT NULL,
	"moduleId" integer NOT NULL REFERENCES "module"("id")
);

CREATE TABLE 'module' (
	"id" serial NOT NULL PRIMARY KEY,
	"name" varchar(255) NOT NULL
);

CREATE TABLE 'historyProjects' (
	"id" serial NOT NULL PRIMARY KEY,
	"projectId" integer NOT NULL REFERENCES "projects"("id"),
	"studentId" integer NOT NULL REFERENCES "students"("id"),
	"grade" TEXT NOT NULL
);

