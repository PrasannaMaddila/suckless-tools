/* user and group to drop privileges to */
static const char *user  = "prasanna";
static const char *group = "prasanna";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "black",     /* after initialization */
	[INPUT] =  "#005577",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* default message */
static const char * message = "Disco Disco Good Good";

/* text color */
static const char * text_color = "#ffffff";

/* text size (must be a valid size) */
static const char * font_name = "-b&h-lucida-medium-r-normal-sans-12-120-75-75-p-71-iso8859-15";
