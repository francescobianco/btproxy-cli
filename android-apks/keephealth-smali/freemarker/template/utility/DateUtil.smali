.class public Lfreemarker/template/utility/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/utility/DateUtil$DateParseException;,
        Lfreemarker/template/utility/DateUtil$TrivialCalendarFieldsToDateConverter;,
        Lfreemarker/template/utility/DateUtil$TrivialDateToISO8601CalendarFactory;,
        Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;,
        Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;
    }
.end annotation


# static fields
.field public static final ACCURACY_HOURS:I = 0x4

.field public static final ACCURACY_MILLISECONDS:I = 0x7

.field public static final ACCURACY_MILLISECONDS_FORCED:I = 0x8

.field public static final ACCURACY_MINUTES:I = 0x5

.field public static final ACCURACY_SECONDS:I = 0x6

.field private static final MSG_YEAR_0_NOT_ALLOWED:Ljava/lang/String; = "Year 0 is not allowed in XML schema dates. BC 1 is -1, AD 1 is 1."

.field private static final PATTERN_ISO8601_BASIC_DATE:Ljava/util/regex/Pattern;

.field private static final PATTERN_ISO8601_BASIC_DATE_TIME:Ljava/util/regex/Pattern;

.field private static final PATTERN_ISO8601_BASIC_TIME:Ljava/util/regex/Pattern;

.field private static final PATTERN_ISO8601_EXTENDED_DATE:Ljava/util/regex/Pattern;

.field private static final PATTERN_ISO8601_EXTENDED_DATE_TIME:Ljava/util/regex/Pattern;

.field private static final PATTERN_ISO8601_EXTENDED_TIME:Ljava/util/regex/Pattern;

.field private static final PATTERN_XS_DATE:Ljava/util/regex/Pattern;

.field private static final PATTERN_XS_DATE_TIME:Ljava/util/regex/Pattern;

.field private static final PATTERN_XS_TIME:Ljava/util/regex/Pattern;

.field private static final PATTERN_XS_TIME_ZONE:Ljava/util/regex/Pattern;

.field private static final REGEX_ISO8601_BASIC_DATE_BASE:Ljava/lang/String; = "(-?[0-9]{4,}?)([0-9]{2})([0-9]{2})"

.field private static final REGEX_ISO8601_BASIC_OPTIONAL_TIME_ZONE:Ljava/lang/String; = "(Z|(?:[-+][0-9]{2}(?:[0-9]{2})?))?"

.field private static final REGEX_ISO8601_BASIC_TIME_BASE:Ljava/lang/String; = "([0-9]{2})(?:([0-9]{2})(?:([0-9]{2})(?:[\\.,]([0-9]+))?)?)?"

.field private static final REGEX_ISO8601_BASIC_TIME_ZONE:Ljava/lang/String; = "Z|(?:[-+][0-9]{2}(?:[0-9]{2})?)"

.field private static final REGEX_ISO8601_EXTENDED_DATE_BASE:Ljava/lang/String; = "(-?[0-9]{4,})-([0-9]{2})-([0-9]{2})"

.field private static final REGEX_ISO8601_EXTENDED_OPTIONAL_TIME_ZONE:Ljava/lang/String; = "(Z|(?:[-+][0-9]{2}(?::[0-9]{2})?))?"

.field private static final REGEX_ISO8601_EXTENDED_TIME_BASE:Ljava/lang/String; = "([0-9]{2})(?::([0-9]{2})(?::([0-9]{2})(?:[\\.,]([0-9]+))?)?)?"

.field private static final REGEX_ISO8601_EXTENDED_TIME_ZONE:Ljava/lang/String; = "Z|(?:[-+][0-9]{2}(?::[0-9]{2})?)"

.field private static final REGEX_XS_DATE_BASE:Ljava/lang/String; = "(-?[0-9]+)-([0-9]{2})-([0-9]{2})"

.field private static final REGEX_XS_OPTIONAL_TIME_ZONE:Ljava/lang/String; = "(Z|(?:[-+][0-9]{2}:[0-9]{2}))?"

.field private static final REGEX_XS_TIME_BASE:Ljava/lang/String; = "([0-9]{2}):([0-9]{2}):([0-9]{2})(?:\\.([0-9]+))?"

.field private static final REGEX_XS_TIME_ZONE:Ljava/lang/String; = "Z|(?:[-+][0-9]{2}:[0-9]{2})"

.field public static final UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/DateUtil;->UTC:Ljava/util/TimeZone;

    .line 91
    const-string v0, "(-?[0-9]+)-([0-9]{2})-([0-9]{2})(Z|(?:[-+][0-9]{2}:[0-9]{2}))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_XS_DATE:Ljava/util/regex/Pattern;

    .line 93
    const-string v0, "(-?[0-9]{4,}?)([0-9]{2})([0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_ISO8601_BASIC_DATE:Ljava/util/regex/Pattern;

    .line 95
    const-string v0, "(-?[0-9]{4,})-([0-9]{2})-([0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_ISO8601_EXTENDED_DATE:Ljava/util/regex/Pattern;

    .line 98
    const-string v0, "([0-9]{2}):([0-9]{2}):([0-9]{2})(?:\\.([0-9]+))?(Z|(?:[-+][0-9]{2}:[0-9]{2}))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_XS_TIME:Ljava/util/regex/Pattern;

    .line 100
    const-string v0, "([0-9]{2})(?:([0-9]{2})(?:([0-9]{2})(?:[\\.,]([0-9]+))?)?)?(Z|(?:[-+][0-9]{2}(?:[0-9]{2})?))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_ISO8601_BASIC_TIME:Ljava/util/regex/Pattern;

    .line 102
    const-string v0, "([0-9]{2})(?::([0-9]{2})(?::([0-9]{2})(?:[\\.,]([0-9]+))?)?)?(Z|(?:[-+][0-9]{2}(?::[0-9]{2})?))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_ISO8601_EXTENDED_TIME:Ljava/util/regex/Pattern;

    .line 105
    const-string v0, "(-?[0-9]+)-([0-9]{2})-([0-9]{2})T([0-9]{2}):([0-9]{2}):([0-9]{2})(?:\\.([0-9]+))?(Z|(?:[-+][0-9]{2}:[0-9]{2}))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_XS_DATE_TIME:Ljava/util/regex/Pattern;

    .line 109
    const-string v0, "(-?[0-9]{4,}?)([0-9]{2})([0-9]{2})T([0-9]{2})(?:([0-9]{2})(?:([0-9]{2})(?:[\\.,]([0-9]+))?)?)?(Z|(?:[-+][0-9]{2}(?:[0-9]{2})?))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_ISO8601_BASIC_DATE_TIME:Ljava/util/regex/Pattern;

    .line 113
    const-string v0, "(-?[0-9]{4,})-([0-9]{2})-([0-9]{2})T([0-9]{2})(?::([0-9]{2})(?::([0-9]{2})(?:[\\.,]([0-9]+))?)?)?(Z|(?:[-+][0-9]{2}(?::[0-9]{2})?))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_ISO8601_EXTENDED_DATE_TIME:Ljava/util/regex/Pattern;

    .line 118
    const-string v0, "Z|(?:[-+][0-9]{2}:[0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_XS_TIME_ZONE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append00([CII)I
    .registers 5

    add-int/lit8 v0, p1, 0x1

    .line 411
    div-int/lit8 v1, p2, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, p0, p1

    add-int/lit8 p1, p1, 0x2

    .line 412
    rem-int/lit8 p2, p2, 0xa

    add-int/lit8 p2, p2, 0x30

    int-to-char p2, p2

    aput-char p2, p0, v0

    return p1
.end method

.method public static dateToISO8601String(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 249
    invoke-static/range {v0 .. v7}, Lfreemarker/template/utility/DateUtil;->dateToString(Ljava/util/Date;ZZZILjava/util/TimeZone;ZLfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dateToString(Ljava/util/Date;ZZZILjava/util/TimeZone;ZLfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;
    .registers 25

    move/from16 v0, p4

    if-nez p6, :cond_11

    if-nez p2, :cond_11

    if-nez p3, :cond_9

    goto :goto_11

    .line 271
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ISO 8601:2004 doesn\'t specify any formats where the offset is shown but the time isn\'t."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_11
    if-nez p5, :cond_18

    .line 277
    sget-object v1, Lfreemarker/template/utility/DateUtil;->UTC:Ljava/util/TimeZone;

    move-object/from16 v2, p0

    goto :goto_1c

    :cond_18
    move-object/from16 v2, p0

    move-object/from16 v1, p5

    :goto_1c
    move-object/from16 v3, p7

    .line 280
    invoke-interface {v3, v1, v2}, Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;->get(Ljava/util/TimeZone;Ljava/util/Date;)Ljava/util/GregorianCalendar;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-nez p2, :cond_2e

    if-eqz p6, :cond_2a

    move v6, v4

    goto :goto_2b

    :cond_2a
    move v6, v5

    :goto_2b
    add-int/lit8 v6, v6, 0xa

    goto :goto_35

    :cond_2e
    if-nez p1, :cond_33

    const/16 v6, 0x12

    goto :goto_35

    :cond_33
    const/16 v6, 0x1d

    .line 292
    :goto_35
    new-array v7, v6, [C

    const/4 v8, 0x3

    const/4 v9, 0x5

    const/16 v10, 0x2d

    const/4 v11, 0x1

    if-eqz p1, :cond_bb

    .line 296
    invoke-virtual {v3, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-lez v12, :cond_4e

    .line 297
    invoke-virtual {v3, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v13

    if-nez v13, :cond_4e

    neg-int v12, v12

    xor-int/lit8 v13, p6, 0x1

    add-int/2addr v12, v13

    :cond_4e
    const/4 v13, 0x2

    const/4 v14, 0x4

    if-ltz v12, :cond_77

    const/16 v15, 0x270f

    if-ge v12, v15, :cond_77

    .line 301
    div-int/lit16 v6, v12, 0x3e8

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    aput-char v6, v7, v5

    .line 302
    rem-int/lit16 v6, v12, 0x3e8

    div-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    aput-char v6, v7, v11

    .line 303
    rem-int/lit8 v6, v12, 0x64

    div-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    aput-char v6, v7, v13

    .line 304
    rem-int/lit8 v12, v12, 0xa

    add-int/lit8 v12, v12, 0x30

    int-to-char v6, v12

    aput-char v6, v7, v8

    goto :goto_98

    .line 306
    :cond_77
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    sub-int/2addr v6, v14

    .line 309
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v6, v12

    .line 310
    new-array v6, v6, [C

    move v12, v5

    move v14, v12

    .line 312
    :goto_85
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v12, v15, :cond_97

    add-int/lit8 v15, v14, 0x1

    .line 313
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v16

    aput-char v16, v6, v14

    add-int/lit8 v12, v12, 0x1

    move v14, v15

    goto :goto_85

    :cond_97
    move-object v7, v6

    :goto_98
    add-int/lit8 v6, v14, 0x1

    .line 317
    aput-char v10, v7, v14

    .line 319
    invoke-virtual {v3, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    add-int/2addr v12, v11

    .line 320
    invoke-static {v7, v6, v12}, Lfreemarker/template/utility/DateUtil;->append00([CII)I

    move-result v6

    add-int/lit8 v12, v6, 0x1

    .line 322
    aput-char v10, v7, v6

    .line 324
    invoke-virtual {v3, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 325
    invoke-static {v7, v12, v6}, Lfreemarker/template/utility/DateUtil;->append00([CII)I

    move-result v6

    if-eqz p2, :cond_bc

    add-int/lit8 v12, v6, 0x1

    const/16 v13, 0x54

    .line 328
    aput-char v13, v7, v6

    move v6, v12

    goto :goto_bc

    :cond_bb
    move v6, v5

    :cond_bc
    :goto_bc
    const/16 v12, 0x3a

    if-eqz p2, :cond_125

    const/16 v13, 0xb

    .line 333
    invoke-virtual {v3, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v13

    .line 334
    invoke-static {v7, v6, v13}, Lfreemarker/template/utility/DateUtil;->append00([CII)I

    move-result v6

    if-lt v0, v9, :cond_125

    add-int/lit8 v9, v6, 0x1

    .line 337
    aput-char v12, v7, v6

    const/16 v6, 0xc

    .line 339
    invoke-virtual {v3, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 340
    invoke-static {v7, v9, v6}, Lfreemarker/template/utility/DateUtil;->append00([CII)I

    move-result v6

    if-lt v0, v4, :cond_125

    add-int/lit8 v4, v6, 0x1

    .line 343
    aput-char v12, v7, v6

    const/16 v6, 0xd

    .line 345
    invoke-virtual {v3, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 346
    invoke-static {v7, v4, v6}, Lfreemarker/template/utility/DateUtil;->append00([CII)I

    move-result v6

    const/4 v4, 0x7

    if-lt v0, v4, :cond_125

    const/16 v4, 0xe

    .line 349
    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    if-ne v0, v4, :cond_f8

    goto :goto_f9

    :cond_f8
    move v8, v5

    :goto_f9
    if-nez v3, :cond_fd

    if-eqz v8, :cond_125

    :cond_fd
    const/16 v0, 0x3e7

    if-gt v3, v0, :cond_11d

    add-int/lit8 v0, v6, 0x1

    const/16 v4, 0x2e

    .line 357
    aput-char v4, v7, v6

    :goto_107
    add-int/lit8 v6, v0, 0x1

    .line 359
    div-int/lit8 v4, v3, 0x64

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v7, v0

    add-int/lit8 v8, v8, -0x1

    .line 361
    rem-int/lit8 v3, v3, 0x64

    mul-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_11b

    if-gtz v8, :cond_11b

    goto :goto_125

    :cond_11b
    move v0, v6

    goto :goto_107

    .line 354
    :cond_11d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Calendar.MILLISECOND > 999"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_125
    :goto_125
    if-eqz p3, :cond_172

    .line 370
    sget-object v0, Lfreemarker/template/utility/DateUtil;->UTC:Ljava/util/TimeZone;

    const/16 v3, 0x5a

    if-ne v1, v0, :cond_133

    add-int/lit8 v0, v6, 0x1

    .line 371
    aput-char v3, v7, v6

    :goto_131
    move v6, v0

    goto :goto_172

    .line 373
    :cond_133
    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    if-gez v0, :cond_13f

    neg-int v0, v0

    move v11, v5

    .line 382
    :cond_13f
    div-int/lit16 v0, v0, 0x3e8

    .line 383
    rem-int/lit8 v1, v0, 0x3c

    .line 384
    div-int/lit8 v0, v0, 0x3c

    .line 385
    rem-int/lit8 v2, v0, 0x3c

    .line 386
    div-int/lit8 v0, v0, 0x3c

    if-nez v1, :cond_154

    if-nez v2, :cond_154

    if-nez v0, :cond_154

    add-int/lit8 v0, v6, 0x1

    .line 390
    aput-char v3, v7, v6

    goto :goto_131

    :cond_154
    add-int/lit8 v3, v6, 0x1

    if-eqz v11, :cond_15a

    const/16 v10, 0x2b

    .line 392
    :cond_15a
    aput-char v10, v7, v6

    .line 393
    invoke-static {v7, v3, v0}, Lfreemarker/template/utility/DateUtil;->append00([CII)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 394
    aput-char v12, v7, v0

    .line 395
    invoke-static {v7, v3, v2}, Lfreemarker/template/utility/DateUtil;->append00([CII)I

    move-result v6

    if-eqz v1, :cond_172

    add-int/lit8 v0, v6, 0x1

    .line 397
    aput-char v12, v7, v6

    .line 398
    invoke-static {v7, v0, v1}, Lfreemarker/template/utility/DateUtil;->append00([CII)I

    move-result v6

    .line 404
    :cond_172
    :goto_172
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7, v5, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static dateToXSString(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;
    .registers 15

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 261
    invoke-static/range {v0 .. v7}, Lfreemarker/template/utility/DateUtil;->dateToString(Ljava/util/Date;ZZZILjava/util/TimeZone;ZLfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/UnrecognizedTimeZoneException;
        }
    .end annotation

    .line 138
    invoke-static {p0}, Lfreemarker/template/utility/DateUtil;->isGMTish(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 139
    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 140
    sget-object p0, Lfreemarker/template/utility/DateUtil;->UTC:Ljava/util/TimeZone;

    return-object p0

    .line 142
    :cond_11
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    .line 144
    :cond_16
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/template/utility/DateUtil;->isGMTish(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    return-object v0

    .line 146
    :cond_25
    new-instance v0, Lfreemarker/template/utility/UnrecognizedTimeZoneException;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UnrecognizedTimeZoneException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static groupToInt(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    .line 718
    const-string v0, "The "

    if-eqz p0, :cond_9a

    .line 727
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    move v3, v1

    .line 736
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v1, v4, :cond_23

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_23
    if-eqz v1, :cond_29

    .line 740
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 744
    :cond_29
    :try_start_29
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2d} :catch_81

    if-eqz v3, :cond_30

    neg-int p0, p0

    .line 748
    :cond_30
    const-string v1, "."

    if-lt p0, p2, :cond_5c

    if-gt p0, p3, :cond_37

    return p0

    .line 753
    :cond_37
    :try_start_37
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " part can\'t be more than "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 749
    :cond_5c
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " part must be at least "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_81} :catch_81

    .line 758
    :catch_81
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " part is a malformed integer."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 719
    :cond_9a
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " part is missing."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static groupToMillisecond(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 800
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_f

    .line 801
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 803
    :cond_f
    const-string v1, "partial-seconds"

    const v2, 0x7fffffff

    invoke-static {p0, v1, v0, v2}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 804
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    mul-int/lit8 v0, v0, 0x64

    goto :goto_2b

    :cond_22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2b

    mul-int/lit8 v0, v0, 0xa

    :cond_2b
    :goto_2b
    return v0
.end method

.method private static isGMTish(Ljava/lang/String;)Z
    .registers 12

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_9

    return v1

    .line 159
    :cond_9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v3, 0x1

    .line 160
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x2

    .line 161
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x47

    const/16 v7, 0x74

    const/16 v8, 0x54

    if-eq v0, v6, :cond_23

    const/16 v6, 0x67

    if-ne v0, v6, :cond_2f

    :cond_23
    const/16 v6, 0x4d

    if-eq v4, v6, :cond_2b

    const/16 v6, 0x6d

    if-ne v4, v6, :cond_2f

    :cond_2b
    if-eq v5, v8, :cond_50

    if-eq v5, v7, :cond_50

    :cond_2f
    const/16 v6, 0x75

    const/16 v9, 0x55

    if-eq v0, v9, :cond_37

    if-ne v0, v6, :cond_43

    :cond_37
    if-eq v4, v8, :cond_3b

    if-ne v4, v7, :cond_43

    :cond_3b
    const/16 v10, 0x43

    if-eq v5, v10, :cond_50

    const/16 v10, 0x63

    if-eq v5, v10, :cond_50

    :cond_43
    if-eq v0, v9, :cond_47

    if-ne v0, v6, :cond_4f

    :cond_47
    if-eq v4, v8, :cond_4b

    if-ne v4, v7, :cond_4f

    :cond_4b
    const/16 v0, 0x31

    if-eq v5, v0, :cond_50

    :cond_4f
    return v1

    .line 184
    :cond_50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_57

    return v3

    .line 188
    :cond_57
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 189
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 190
    const-string v0, "+0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "+00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "+00:00"

    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7c

    :cond_7b
    move v1, v3

    :cond_7c
    return v1

    .line 193
    :cond_7d
    const-string v0, "-0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const-string v0, "-00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const-string v0, "-00:00"

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_96

    :cond_95
    move v1, v3

    :cond_96
    return v1
.end method

.method private static parseDateTime_parseMatcher(Ljava/util/regex/Matcher;Ljava/util/TimeZone;ZLfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    .line 634
    const-string v0, "defaultTZ"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 636
    :try_start_6
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "year"

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_28

    neg-int v1, v1

    xor-int/2addr p2, v0

    add-int/2addr v1, p2

    if-eqz v1, :cond_20

    move p2, v1

    move v1, v2

    goto :goto_2a

    .line 646
    :cond_20
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    const-string p1, "Year 0 is not allowed in XML schema dates. BC 1 is -1, AD 1 is 1."

    invoke-direct {p0, p1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    move p2, v1

    move v1, v0

    :goto_2a
    const/4 v3, 0x2

    .line 652
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "month"

    const/16 v5, 0xc

    invoke-static {v3, v4, v0, v5}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v4, 0x3

    .line 653
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "day-of-month"

    const/16 v6, 0x1f

    invoke-static {v4, v5, v0, v6}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x4

    .line 657
    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hour-of-day"

    const/16 v7, 0x18

    invoke-static {v5, v6, v2, v7}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v7, :cond_57

    move v9, v0

    move v5, v2

    goto :goto_58

    :cond_57
    move v9, v2

    :goto_58
    const/4 v0, 0x5

    .line 667
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 668
    const-string v6, "minute"

    const/16 v7, 0x3b

    invoke-static {v0, v6, v2, v7}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    move v6, v0

    goto :goto_6a

    :cond_69
    move v6, v2

    :goto_6a
    const/4 v0, 0x6

    .line 670
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 672
    const-string v7, "second"

    const/16 v8, 0x3c

    invoke-static {v0, v7, v2, v8}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    :cond_79
    move v7, v2

    const/4 v0, 0x7

    .line 674
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/utility/DateUtil;->groupToMillisecond(Ljava/lang/String;)I

    move-result v8

    const/16 v0, 0x8

    .line 678
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lfreemarker/template/utility/DateUtil;->parseMatchingTimeZone(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/TimeZone;

    move-result-object v10

    if-eqz v9, :cond_9e

    if-nez v6, :cond_96

    if-nez v7, :cond_96

    if-nez v8, :cond_96

    goto :goto_9e

    .line 683
    :cond_96
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    const-string p1, "Hour 24 is only allowed in the case of midnight."

    invoke-direct {p0, p1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9e
    :goto_9e
    move-object v0, p3

    move v2, p2

    .line 689
    invoke-interface/range {v0 .. v10}, Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;->calculate(IIIIIIIIZLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object p0
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_a4} :catch_a5

    return-object p0

    .line 693
    :catch_a5
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    const-string p1, "Date-time calculation faliure. Probably the date-time is formally correct, but refers to an unexistent date-time (like February 30)."

    invoke-direct {p0, p1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseDate_parseMatcher(Ljava/util/regex/Matcher;Ljava/util/TimeZone;ZLfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    .line 468
    const-string v0, "defaultTZ"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 470
    :try_start_6
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "year"

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    if-gtz v1, :cond_2a

    neg-int v1, v1

    xor-int/lit8 v2, p2, 0x1

    add-int/2addr v1, v2

    if-eqz v1, :cond_22

    const/4 v2, 0x0

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_2c

    .line 480
    :cond_22
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    const-string p1, "Year 0 is not allowed in XML schema dates. BC 1 is -1, AD 1 is 1."

    invoke-direct {p0, p1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    move v2, v1

    move v1, v0

    :goto_2c
    const/4 v3, 0x2

    .line 486
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "month"

    const/16 v5, 0xc

    invoke-static {v3, v4, v0, v5}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v4, 0x3

    .line 487
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "day-of-month"

    const/16 v6, 0x1f

    invoke-static {v4, v5, v0, v6}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    if-eqz p2, :cond_52

    const/4 p2, 0x4

    .line 489
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lfreemarker/template/utility/DateUtil;->parseMatchingTimeZone(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/TimeZone;

    move-result-object p1

    :cond_52
    move-object v10, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    .line 491
    invoke-interface/range {v0 .. v10}, Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;->calculate(IIIIIIIIZLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object p0
    :try_end_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_5d} :catch_5e

    return-object p0

    .line 494
    :catch_5e
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    const-string p1, "Date calculation faliure. Probably the date is formally correct, but refers to an unexistent date (like February 30)."

    invoke-direct {p0, p1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseISO8601Date(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    .line 450
    sget-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_ISO8601_EXTENDED_DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_39

    .line 452
    sget-object v1, Lfreemarker/template/utility/DateUtil;->PATTERN_ISO8601_BASIC_DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 453
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object v1, p0

    goto :goto_39

    .line 454
    :cond_1a
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The value didn\'t match the expected pattern: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " or "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    :goto_39
    const/4 p0, 0x0

    .line 459
    invoke-static {v1, p1, p0, p2}, Lfreemarker/template/utility/DateUtil;->parseDate_parseMatcher(Ljava/util/regex/Matcher;Ljava/util/TimeZone;ZLfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseISO8601DateTime(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    .line 616
    sget-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_ISO8601_EXTENDED_DATE_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 617
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_43

    .line 618
    sget-object v1, Lfreemarker/template/utility/DateUtil;->PATTERN_ISO8601_BASIC_DATE_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 619
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v1, v2

    goto :goto_43

    .line 620
    :cond_1a
    new-instance p1, Lfreemarker/template/utility/DateUtil$DateParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "The value ("

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ") didn\'t match the expected pattern: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " or "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_43
    :goto_43
    const/4 p0, 0x0

    .line 625
    invoke-static {v1, p1, p0, p2}, Lfreemarker/template/utility/DateUtil;->parseDateTime_parseMatcher(Ljava/util/regex/Matcher;Ljava/util/TimeZone;ZLfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseISO8601Time(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    .line 522
    sget-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_ISO8601_EXTENDED_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 523
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_39

    .line 524
    sget-object v1, Lfreemarker/template/utility/DateUtil;->PATTERN_ISO8601_BASIC_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 525
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object v1, p0

    goto :goto_39

    .line 526
    :cond_1a
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The value didn\'t match the expected pattern: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " or "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 531
    :cond_39
    :goto_39
    invoke-static {v1, p1, p2}, Lfreemarker/template/utility/DateUtil;->parseTime_parseMatcher(Ljava/util/regex/Matcher;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static parseMatchingTimeZone(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/TimeZone;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    if-nez p0, :cond_3

    return-object p1

    .line 769
    :cond_3
    const-string p1, "Z"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 770
    sget-object p0, Lfreemarker/template/utility/DateUtil;->UTC:Ljava/util/TimeZone;

    return-object p0

    .line 773
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 774
    const-string v0, "GMT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 775
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 777
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 778
    const-string v3, "offset-hours"

    const/16 v4, 0x17

    invoke-static {v1, v3, v0, v4}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    .line 779
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_54

    .line 784
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_41

    const/4 v2, 0x4

    :cond_41
    add-int/lit8 v1, v2, 0x2

    .line 785
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 786
    const-string v1, "offset-minutes"

    const/16 v2, 0x3b

    invoke-static {p0, v1, v0, v2}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    .line 787
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method private static parseTime_parseMatcher(Ljava/util/regex/Matcher;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 538
    const-string v2, "defaultTZ"

    invoke-static {v2, v1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 542
    :try_start_a
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hour-of-day"

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v5, :cond_1c

    move v3, v2

    move v12, v6

    goto :goto_1e

    :cond_1c
    move v12, v3

    move v3, v6

    :goto_1e
    const/4 v4, 0x2

    .line 552
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 553
    const-string v7, "minute"

    const/16 v8, 0x3b

    invoke-static {v5, v7, v6, v8}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v5

    move v13, v5

    goto :goto_30

    :cond_2f
    move v13, v6

    :goto_30
    const/4 v5, 0x3

    .line 555
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3f

    .line 557
    const-string v7, "second"

    const/16 v8, 0x3c

    invoke-static {v5, v7, v6, v8}, Lfreemarker/template/utility/DateUtil;->groupToInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    :cond_3f
    move v14, v6

    const/4 v5, 0x4

    .line 559
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfreemarker/template/utility/DateUtil;->groupToMillisecond(Ljava/lang/String;)I

    move-result v15

    const/4 v5, 0x5

    .line 563
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lfreemarker/template/utility/DateUtil;->parseMatchingTimeZone(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/TimeZone;

    move-result-object v17

    if-eqz v3, :cond_64

    if-nez v13, :cond_5c

    if-nez v14, :cond_5c

    if-nez v15, :cond_5c

    move v11, v4

    goto :goto_65

    .line 571
    :cond_5c
    new-instance v0, Lfreemarker/template/utility/DateUtil$DateParseException;

    const-string v1, "Hour 24 is only allowed in the case of midnight."

    invoke-direct {v0, v1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    move v11, v2

    :goto_65
    const/4 v10, 0x0

    const/16 v16, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x7b2

    move-object/from16 v7, p2

    .line 579
    invoke-interface/range {v7 .. v17}, Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;->calculate(IIIIIIIIZLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0
    :try_end_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_71} :catch_72

    return-object v0

    .line 583
    :catch_72
    new-instance v0, Lfreemarker/template/utility/DateUtil$DateParseException;

    const-string v1, "Unexpected time calculation faliure."

    invoke-direct {v0, v1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseXSDate(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    .line 435
    sget-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_XS_DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 436
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 439
    invoke-static {p0, p1, v0, p2}, Lfreemarker/template/utility/DateUtil;->parseDate_parseMatcher(Ljava/util/regex/Matcher;Ljava/util/TimeZone;ZLfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 437
    :cond_12
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The value didn\'t match the expected pattern: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseXSDateTime(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    .line 601
    sget-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_XS_DATE_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 602
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 606
    invoke-static {p0, p1, v0, p2}, Lfreemarker/template/utility/DateUtil;->parseDateTime_parseMatcher(Ljava/util/regex/Matcher;Ljava/util/TimeZone;ZLfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 603
    :cond_12
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The value didn\'t match the expected pattern: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseXSTime(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    .line 509
    sget-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_XS_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 510
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 513
    invoke-static {p0, p1, p2}, Lfreemarker/template/utility/DateUtil;->parseTime_parseMatcher(Ljava/util/regex/Matcher;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 511
    :cond_11
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The value didn\'t match the expected pattern: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseXSTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation

    .line 707
    sget-object v0, Lfreemarker/template/utility/DateUtil;->PATTERN_XS_TIME_ZONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 708
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    .line 712
    invoke-static {p0, v0}, Lfreemarker/template/utility/DateUtil;->parseMatchingTimeZone(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    .line 709
    :cond_12
    new-instance p0, Lfreemarker/template/utility/DateUtil$DateParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The time zone offset didn\'t match the expected pattern: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/template/utility/DateUtil$DateParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
