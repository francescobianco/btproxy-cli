.class public Lcom/keephealth/android/util/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDateStringToTimestamp(Ljava/lang/String;)J
    .registers 4

    .line 1269
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1271
    :try_start_9
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 1272
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_11} :catch_12

    return-wide v0

    :catch_12
    move-exception p0

    .line 1274
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static convertDateStringToTimestampDay(Ljava/lang/String;)J
    .registers 4

    .line 1279
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1281
    :try_start_9
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 1282
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_11} :catch_12

    return-wide v0

    :catch_12
    move-exception p0

    .line 1284
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static date2TimeStamp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 502
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 503
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 505
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 507
    const-string p0, ""

    return-object p0
.end method

.method public static dateToStamp(IIIIII)J
    .registers 6

    .line 747
    invoke-static/range {p0 .. p5}, Lcom/keephealth/android/util/TimeUtil;->getDate(IIIIII)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 749
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0

    :cond_b
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static dateToString(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    .line 179
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 180
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format12To24(IZ)I
    .registers 3

    const/16 v0, 0xc

    if-eqz p1, :cond_8

    if-ne p0, v0, :cond_d

    const/4 p0, 0x0

    goto :goto_d

    :cond_8
    if-ne p0, v0, :cond_b

    goto :goto_c

    :cond_b
    add-int/2addr v0, p0

    :goto_c
    move p0, v0

    :cond_d
    :goto_d
    return p0
.end method

.method public static format24To12(I)I
    .registers 3

    .line 1210
    rem-int/lit8 v0, p0, 0xc

    const/16 v1, 0xc

    if-ne p0, v1, :cond_a

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_d

    :cond_a
    if-nez v0, :cond_d

    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0
.end method

.method public static formatTime(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 197
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 198
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTime(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    .line 167
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 168
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCalendarFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .registers 2

    .line 482
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getDateFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 484
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 485
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurrentFormattedTime()Ljava/lang/String;
    .registers 4

    .line 1290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1291
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1294
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1295
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentFormattedTime(J)Ljava/lang/String;
    .registers 4

    .line 1314
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 1317
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "MM-dd HH:mm"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1318
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentFormattedTime2()Ljava/lang/String;
    .registers 4

    .line 1298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1299
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1302
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1303
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentFormattedTime2(J)Ljava/lang/String;
    .registers 4

    .line 1306
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 1309
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "HH:mm"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1310
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentMonth()I
    .registers 2

    .line 281
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getCurrentYear()I
    .registers 2

    .line 357
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getCurrentYearMonthDay()[I
    .registers 5

    .line 329
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 330
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 331
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 332
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v3, v1

    .line 333
    filled-new-array {v2, v3, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public static getDate()Ljava/util/Date;
    .registers 3

    .line 814
    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->getYear()I

    move-result v0

    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->getMonth()I

    move-result v1

    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->getDay()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/TimeUtil;->getDate(III)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(III)Ljava/util/Date;
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    .line 826
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/TimeUtil;->getDate(IIIIII)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getDate(IIIIII)Ljava/util/Date;
    .registers 14

    .line 841
    new-instance v7, Ljava/util/GregorianCalendar;

    add-int/lit8 v2, p1, -0x1

    move-object v0, v7

    move v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 5

    .line 467
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1e

    .line 471
    :cond_e
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 474
    :try_start_15
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p0

    .line 476
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_1e
    :goto_1e
    return-object v1
.end method

.method public static getDay()I
    .registers 2

    .line 778
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDayFromTimestamp(J)I
    .registers 3

    .line 1337
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1338
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x5

    .line 1339
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getDayHistoryMonth(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .registers 4

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getFirstDayOfMonth(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getLastDayOfMonth(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDayHistoryWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .registers 5

    .line 259
    const-string v0, "WEEK_START_INDEX"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getWeekStartIndex(Ljava/lang/String;I)I

    move-result v0

    .line 261
    const-string v2, "-"

    if-eqz v0, :cond_4f

    if-eq v0, v1, :cond_31

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    const-string p0, ""

    goto :goto_6c

    .line 269
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getMondayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getSundayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6c

    .line 266
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getSundayPreviousWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getSaturdayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6c

    .line 263
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getSaturdayPreviousWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getFridayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6c
    return-object p0
.end method

.method public static getDayHistoryYear(I)Ljava/lang/String;
    .registers 3

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/01-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/12"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDayMonthOfCurrentYear()I
    .registers 1

    const/16 v0, 0xc

    return v0
.end method

.method public static getDayOfCurrentWeek()I
    .registers 1

    const/4 v0, 0x7

    return v0
.end method

.method public static getDayOfMonth()I
    .registers 2

    .line 598
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 599
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDayOfWeek(Ljava/util/Date;)I
    .registers 2

    .line 620
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 621
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 622
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getDayOfWeekString(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 632
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 633
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 635
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    packed-switch p0, :pswitch_data_4a

    const-string p0, ""

    goto :goto_49

    :pswitch_12
    const p0, 0x7f100130

    .line 655
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :pswitch_1a
    const p0, 0x7f10012f

    .line 652
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :pswitch_22
    const p0, 0x7f10012e

    .line 649
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :pswitch_2a
    const p0, 0x7f10012d

    .line 646
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :pswitch_32
    const p0, 0x7f10012c

    .line 643
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :pswitch_3a
    const p0, 0x7f10012b

    .line 640
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :pswitch_42
    const p0, 0x7f100131

    .line 637
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_49
    return-object p0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3a
        :pswitch_32
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
        :pswitch_12
    .end packed-switch
.end method

.method public static getDaysByYearMonth(II)I
    .registers 4

    .line 341
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 342
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    sub-int/2addr p1, v1

    .line 343
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 344
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, -0x1

    .line 345
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->roll(II)V

    .line 346
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getEndDate(III)Ljava/util/Date;
    .registers 9

    const/16 v4, 0x3b

    const/16 v5, 0x3b

    const/16 v3, 0x17

    move v0, p0

    move v1, p1

    move v2, p2

    .line 732
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/TimeUtil;->getDate(IIIIII)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getEndDateToStamp(III)J
    .registers 9

    const/16 v4, 0x3b

    const/16 v5, 0x3b

    const/16 v3, 0x17

    move v0, p0

    move v1, p1

    move v2, p2

    .line 720
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/TimeUtil;->dateToStamp(IIIIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getEnddayCurrentWeek(Ljava/util/Date;I)Ljava/util/Date;
    .registers 8

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 126
    const-string p0, "WEEK_START_INDEX"

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getWeekStartIndex(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_13

    const/4 v1, -0x1

    goto :goto_1b

    :cond_13
    if-ne p0, v1, :cond_16

    goto :goto_1a

    :cond_16
    const/4 v3, 0x2

    if-ne p0, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v1, v2

    :goto_1b
    const/4 p0, 0x7

    .line 135
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, v1

    rsub-int/lit8 v1, v3, 0x7

    if-gez v1, :cond_26

    const/4 v1, 0x6

    :cond_26
    if-lt v1, p0, :cond_29

    goto :goto_2a

    :cond_29
    move v2, v1

    .line 143
    :goto_2a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getEnddayThisWeek \u5f80\u540e\u63a8:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",offDay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    mul-int/2addr p1, p0

    add-int/2addr v2, p1

    const/4 p0, 0x5

    .line 144
    invoke-virtual {v0, p0, v2}, Ljava/util/Calendar;->add(II)V

    .line 145
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getEnddayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .registers 9

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 45
    const-string v1, "WEEK_START_INDEX"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getWeekStartIndex(Ljava/lang/String;I)I

    const/4 v1, 0x7

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rsub-int/lit8 v3, v2, 0x7

    if-gez v3, :cond_16

    const/4 v3, 0x6

    :cond_16
    if-lt v3, v1, :cond_19

    const/4 v3, 0x0

    .line 62
    :cond_19
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getEnddayThisWeek \u5f80\u540e\u63a8:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",offDay:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    mul-int/2addr p1, v1

    add-int/2addr v3, p1

    const/4 p1, 0x5

    .line 63
    invoke-virtual {v0, p1, v3}, Ljava/util/Calendar;->add(II)V

    .line 64
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstDayOfMonth(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .registers 4

    .line 302
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 303
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 304
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 305
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFridayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .registers 2

    .line 39
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getEnddayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHour()I
    .registers 2

    .line 787
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getHourAndMin(IZ)[I
    .registers 4

    .line 1171
    div-int/lit8 v0, p0, 0x3c

    if-eqz p1, :cond_5

    goto :goto_11

    .line 1173
    :cond_5
    rem-int/lit8 p1, v0, 0xc

    const/16 v1, 0xc

    if-nez p1, :cond_d

    move v0, v1

    goto :goto_11

    :cond_d
    if-le v0, v1, :cond_11

    add-int/lit8 v0, v0, -0xc

    .line 1174
    :cond_11
    :goto_11
    rem-int/lit8 p0, p0, 0x3c

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static getLastDayOfMonth(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .registers 4

    .line 316
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 317
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 318
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 319
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMinute()I
    .registers 2

    .line 796
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getMondayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .registers 2

    .line 226
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getStartdayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMonth()I
    .registers 2

    .line 760
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getMonthFromTimestamp(J)I
    .registers 3

    .line 1330
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1331
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x2

    .line 1332
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getMonthOfYearMonthDay(IIII)I
    .registers 4

    if-le p0, p2, :cond_8

    sub-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0xc

    sub-int/2addr p1, p3

    add-int/2addr p0, p1

    goto :goto_e

    :cond_8
    if-le p1, p3, :cond_d

    sub-int p0, p1, p3

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static getSaturdayPreviousWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .registers 2

    .line 35
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getStartdayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSaturdayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .registers 2

    .line 248
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getEnddayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSecond()I
    .registers 2

    .line 805
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getStartDate(III)Ljava/util/Date;
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    .line 708
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/TimeUtil;->getDate(IIIIII)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getStartDateThisWeek(I)Ljava/util/Calendar;
    .registers 10

    .line 1237
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1238
    const-string v1, "WEEK_START_INDEX"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getWeekStartIndex(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    const/4 v2, -0x1

    goto :goto_18

    :cond_10
    if-ne v1, v2, :cond_13

    goto :goto_17

    :cond_13
    const/4 v4, 0x2

    if-ne v1, v4, :cond_17

    goto :goto_18

    :cond_17
    :goto_17
    move v2, v3

    :goto_18
    const/4 v1, 0x7

    .line 1247
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v2

    neg-int v2, v4

    add-int/lit8 v5, v2, 0x1

    .line 1249
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getStartdayThisWeek day_of_week:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",offDay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-lez v5, :cond_43

    add-int/lit8 v5, v2, -0x6

    :cond_43
    const/4 v2, -0x7

    if-gt v5, v2, :cond_47

    goto :goto_48

    :cond_47
    move v3, v5

    .line 1256
    :goto_48
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getStartdayThisWeek \u5f80\u524d\u63a8....:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",offDay....:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    mul-int/2addr p0, v1

    add-int/2addr v3, p0

    const/4 p0, 0x5

    .line 1257
    invoke-virtual {v0, p0, v3}, Ljava/util/Calendar;->add(II)V

    return-object v0
.end method

.method public static getStartDateToStamp(III)J
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    .line 696
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/TimeUtil;->dateToStamp(IIIIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStartdayCurrentWeek(Ljava/util/Date;I)Ljava/util/Date;
    .registers 10

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 97
    const-string p0, "WEEK_START_INDEX"

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getWeekStartIndex(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_13

    const/4 v1, -0x1

    goto :goto_1b

    :cond_13
    if-ne p0, v1, :cond_16

    goto :goto_1a

    :cond_16
    const/4 v3, 0x2

    if-ne p0, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v1, v2

    :goto_1b
    const/4 p0, 0x7

    .line 106
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, v1

    neg-int v1, v3

    add-int/lit8 v4, v1, 0x1

    .line 108
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getStartdayThisWeek day_of_week:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",offDay:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-lez v4, :cond_46

    add-int/lit8 v4, v1, -0x6

    :cond_46
    const/4 v1, -0x7

    if-gt v4, v1, :cond_4a

    goto :goto_4b

    :cond_4a
    move v2, v4

    .line 115
    :goto_4b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getStartdayThisWeek \u5f80\u524d\u63a8....:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",offDay....:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    mul-int/2addr p1, p0

    add-int/2addr v2, p1

    const/4 p0, 0x5

    .line 116
    invoke-virtual {v0, p0, v2}, Ljava/util/Calendar;->add(II)V

    .line 118
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getStartdayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .registers 11

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    const-string v1, "WEEK_START_INDEX"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getWeekStartIndex(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    const/4 v2, -0x1

    goto :goto_18

    :cond_10
    if-ne v1, v2, :cond_13

    goto :goto_17

    :cond_13
    const/4 v4, 0x2

    if-ne v1, v4, :cond_17

    goto :goto_18

    :cond_17
    :goto_17
    move v2, v3

    :goto_18
    const/4 v1, 0x7

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v2

    neg-int v2, v4

    add-int/lit8 v5, v2, 0x1

    .line 80
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getStartdayThisWeek day_of_week:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",offDay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-lez v5, :cond_43

    add-int/lit8 v5, v2, -0x6

    :cond_43
    const/4 v2, -0x7

    if-gt v5, v2, :cond_47

    goto :goto_48

    :cond_47
    move v3, v5

    .line 87
    :goto_48
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getStartdayThisWeek \u5f80\u524d\u63a8....:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",offDay....:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    mul-int/2addr p1, v1

    add-int/2addr v3, p1

    const/4 p1, 0x5

    .line 88
    invoke-virtual {v0, p1, v3}, Ljava/util/Calendar;->add(II)V

    .line 90
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSundayPreviousWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .registers 2

    .line 156
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getStartdayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSundayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .registers 2

    .line 238
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getEnddayThisWeek(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTime()Landroid/text/format/Time;
    .registers 2

    .line 608
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    return-object v0
.end method

.method public static getToDayTotalMinutes(J)I
    .registers 3

    .line 672
    const-string v0, "HH/mm"

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/TimeUtil;->timeStamp2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 673
    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 674
    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static getWeekOfYearMonthDay(III)I
    .registers 5

    .line 870
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 871
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Calendar;->set(III)V

    .line 879
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 p0, 0x3

    .line 885
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getYear()I
    .registers 2

    .line 769
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getYearFromTimestamp(J)I
    .registers 3

    .line 1323
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1324
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    .line 1325
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getYearMonthDay(III)Ljava/lang/String;
    .registers 5

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%02d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getYearOfYearMonthDay(II)I
    .registers 2

    if-le p0, p1, :cond_4

    sub-int/2addr p0, p1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static is24Hour()Z
    .registers 2

    .line 377
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 379
    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    const-string v1, "24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static is24Hour(Landroid/content/Context;)Z
    .registers 1

    .line 368
    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->is24Hour()Z

    move-result p0

    return p0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .registers 1

    .line 684
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isAM(I)Z
    .registers 2

    const/16 v0, 0xc

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isSameDay(JJ)Z
    .registers 6

    .line 845
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 846
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 848
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 849
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 851
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ne p2, p3, :cond_3b

    const/4 p2, 0x2

    .line 852
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p3, p2, :cond_3b

    const/4 p2, 0x5

    .line 853
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq p3, p0, :cond_3a

    goto :goto_3b

    :cond_3a
    return p1

    :cond_3b
    :goto_3b
    const/4 p0, 0x0

    return p0
.end method

.method public static m2HM(I)Ljava/lang/String;
    .registers 3

    .line 208
    div-int/lit8 v0, p0, 0x3c

    .line 209
    rem-int/lit8 p0, p0, 0x3c

    .line 210
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02d:%02d"

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeFormatter(IIZ[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 1112
    const-string v1, "%1$02d:%2$02d"

    if-eqz p2, :cond_1d

    .line 1113
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 p3, 0x18

    if-ne p0, p3, :cond_c

    move p0, v0

    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const/16 p2, 0xc

    if-ge p0, p2, :cond_24

    .line 1115
    aget-object p3, p3, v0

    goto :goto_27

    :cond_24
    const/4 v0, 0x1

    aget-object p3, p3, v0

    :goto_27
    if-le p0, p2, :cond_2b

    add-int/lit8 p0, p0, -0xc

    .line 1117
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-nez p0, :cond_35

    goto :goto_36

    :cond_35
    move p2, p0

    :goto_36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeFormatter(IIZ[Ljava/lang/String;Z)Ljava/lang/String;
    .registers 15

    const/4 v0, 0x1

    .line 1002
    const-string v1, "am"

    const-string v2, "pm"

    const-string v3, ""

    const/16 v4, 0x5a0

    const/16 v5, 0x2d0

    const/16 v6, 0x18

    const-string v7, "%1$02d:%2$02d:%3$02d"

    const/4 v8, 0x0

    if-ltz p0, :cond_77

    if-ge p0, v4, :cond_77

    .line 1003
    invoke-static {p0, p2}, Lcom/keephealth/android/util/TimeUtil;->getHourAndMin(IZ)[I

    move-result-object v4

    aget v4, v4, v8

    .line 1004
    rem-int/lit8 v9, p0, 0x3c

    if-eqz p2, :cond_39

    .line 1006
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_23

    goto :goto_24

    :cond_23
    move v8, v4

    :goto_24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    if-eqz p4, :cond_4b

    if-eqz p3, :cond_46

    if-ge p0, v5, :cond_42

    .line 1011
    aget-object p0, p3, v8

    goto :goto_44

    :cond_42
    aget-object p0, p3, v0

    :goto_44
    move-object v3, p0

    goto :goto_4b

    :cond_46
    if-ge p0, v5, :cond_49

    goto :goto_4a

    :cond_49
    move-object v1, v2

    :goto_4a
    move-object v3, v1

    .line 1016
    :cond_4b
    :goto_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_59

    goto :goto_5a

    :cond_59
    move v8, v4

    :goto_5a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p3, p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_77
    if-lt p0, v4, :cond_e3

    add-int/lit16 p0, p0, -0x5a0

    if-lez p0, :cond_86

    .line 1023
    invoke-static {p0, p2}, Lcom/keephealth/android/util/TimeUtil;->getHourAndMin(IZ)[I

    move-result-object v4

    aget v4, v4, v8

    .line 1024
    rem-int/lit8 v9, p0, 0x3c

    goto :goto_88

    :cond_86
    move v4, v8

    move v9, v4

    :goto_88
    if-eqz p2, :cond_a5

    .line 1027
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_8f

    goto :goto_90

    :cond_8f
    move v8, v4

    :goto_90
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a5
    if-eqz p4, :cond_b7

    if-eqz p3, :cond_b2

    if-ge p0, v5, :cond_ae

    .line 1032
    aget-object p0, p3, v8

    goto :goto_b0

    :cond_ae
    aget-object p0, p3, v0

    :goto_b0
    move-object v3, p0

    goto :goto_b7

    :cond_b2
    if-ge p0, v5, :cond_b5

    goto :goto_b6

    :cond_b5
    move-object v1, v2

    :goto_b6
    move-object v3, v1

    .line 1037
    :cond_b7
    :goto_b7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_c5

    goto :goto_c6

    :cond_c5
    move v8, v4

    :goto_c6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p3, p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1043
    :cond_e3
    const-string p0, "00:00"

    return-object p0
.end method

.method public static timeFormatter(IZ[Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x1

    .line 949
    const-string v1, "am"

    const-string v2, "pm"

    const/16 v3, 0x5a0

    const/16 v4, 0x2d0

    const/16 v5, 0x18

    const-string v6, "%1$02d:%2$02d"

    const/4 v7, 0x0

    if-ltz p0, :cond_6a

    if-ge p0, v3, :cond_6a

    .line 950
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getHourAndMin(IZ)[I

    move-result-object v3

    aget v3, v3, v7

    .line 951
    rem-int/lit8 v8, p0, 0x3c

    if-eqz p1, :cond_33

    .line 953
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v3, v5, :cond_21

    goto :goto_22

    :cond_21
    move v7, v3

    :goto_22
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v6, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    if-eqz p2, :cond_3d

    if-ge p0, v4, :cond_3a

    .line 958
    aget-object p0, p2, v7

    goto :goto_42

    :cond_3a
    aget-object p0, p2, v0

    goto :goto_42

    :cond_3d
    if-ge p0, v4, :cond_40

    goto :goto_41

    :cond_40
    move-object v1, v2

    :goto_41
    move-object p0, v1

    .line 962
    :goto_42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v3, v5, :cond_50

    goto :goto_51

    :cond_50
    move v7, v3

    :goto_51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v6, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6a
    if-lt p0, v3, :cond_cb

    add-int/lit16 p0, p0, -0x5a0

    if-lez p0, :cond_79

    .line 969
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getHourAndMin(IZ)[I

    move-result-object v3

    aget v3, v3, v7

    .line 970
    rem-int/lit8 v8, p0, 0x3c

    goto :goto_7b

    :cond_79
    move v3, v7

    move v8, v3

    :goto_7b
    if-eqz p1, :cond_94

    .line 973
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v3, v5, :cond_82

    goto :goto_83

    :cond_82
    move v7, v3

    :goto_83
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v6, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_94
    if-eqz p2, :cond_9e

    if-ge p0, v4, :cond_9b

    .line 977
    aget-object p0, p2, v7

    goto :goto_a3

    :cond_9b
    aget-object p0, p2, v0

    goto :goto_a3

    :cond_9e
    if-ge p0, v4, :cond_a1

    goto :goto_a2

    :cond_a1
    move-object v1, v2

    :goto_a2
    move-object p0, v1

    .line 982
    :goto_a3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v3, v5, :cond_ad

    goto :goto_ae

    :cond_ad
    move v7, v3

    :goto_ae
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 988
    :cond_cb
    const-string p0, "00:00"

    return-object p0
.end method

.method public static timeFormatter(IZ[Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x1

    .line 895
    const-string v1, "am"

    const-string v2, "pm"

    const-string v3, ""

    const/16 v4, 0x5a0

    const/16 v5, 0x2d0

    const/16 v6, 0x18

    const-string v7, "%1$02d:%2$02d"

    const/4 v8, 0x0

    if-ltz p0, :cond_a8

    if-ge p0, v4, :cond_a8

    .line 896
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getHourAndMin(IZ)[I

    move-result-object v4

    aget v4, v4, v8

    .line 897
    rem-int/lit8 v9, p0, 0x3c

    if-eqz p1, :cond_35

    .line 899
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_23

    goto :goto_24

    :cond_23
    move v8, v4

    :goto_24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    if-eqz p3, :cond_47

    if-eqz p2, :cond_42

    if-ge p0, v5, :cond_3e

    .line 904
    aget-object p0, p2, v8

    goto :goto_40

    :cond_3e
    aget-object p0, p2, v0

    :goto_40
    move-object v3, p0

    goto :goto_47

    :cond_42
    if-ge p0, v5, :cond_45

    goto :goto_46

    :cond_45
    move-object v1, v2

    :goto_46
    move-object v3, v1

    .line 909
    :cond_47
    :goto_47
    const-string p0, "\u4e0b\u5348"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_80

    const-string p0, "\u4e0a\u5348"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    goto :goto_80

    .line 912
    :cond_58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_62

    goto :goto_63

    :cond_62
    move v8, v4

    :goto_63
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v7, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 910
    :cond_80
    :goto_80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_8e

    goto :goto_8f

    :cond_8e
    move v8, v4

    :goto_8f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v7, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a8
    if-lt p0, v4, :cond_10c

    add-int/lit16 p0, p0, -0x5a0

    if-lez p0, :cond_b7

    .line 920
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getHourAndMin(IZ)[I

    move-result-object v4

    aget v4, v4, v8

    .line 921
    rem-int/lit8 v9, p0, 0x3c

    goto :goto_b9

    :cond_b7
    move v4, v8

    move v9, v4

    :goto_b9
    if-eqz p1, :cond_d2

    .line 924
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_c0

    goto :goto_c1

    :cond_c0
    move v8, v4

    :goto_c1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d2
    if-eqz p3, :cond_e4

    if-eqz p2, :cond_df

    if-ge p0, v5, :cond_db

    .line 929
    aget-object p0, p2, v8

    goto :goto_dd

    :cond_db
    aget-object p0, p2, v0

    :goto_dd
    move-object v3, p0

    goto :goto_e4

    :cond_df
    if-ge p0, v5, :cond_e2

    goto :goto_e3

    :cond_e2
    move-object v1, v2

    :goto_e3
    move-object v3, v1

    .line 935
    :cond_e4
    :goto_e4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_ee

    goto :goto_ef

    :cond_ee
    move v8, v4

    :goto_ef
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v7, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 939
    :cond_10c
    const-string p0, "00:00"

    return-object p0
.end method

.method public static timeFormatter(IZ[Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 16

    .line 1053
    const-string v0, "am"

    const-string v1, "pm"

    const-string v2, ""

    const/16 v3, 0x5a0

    const/16 v4, 0x2d0

    const/4 v5, 0x1

    const/16 v6, 0x18

    const-string v7, "%1$02d:%2$02d"

    const/4 v8, 0x0

    .line 1061
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-ltz p0, :cond_71

    if-ge p0, v3, :cond_71

    .line 1054
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getHourAndMin(IZ)[I

    move-result-object v3

    aget v3, v3, v8

    .line 1055
    rem-int/lit8 v10, p0, 0x3c

    if-nez p4, :cond_26

    if-eqz v10, :cond_26

    add-int/lit8 v3, v3, 0x1

    :cond_26
    if-eqz p1, :cond_3b

    .line 1061
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v3, v6, :cond_2d

    goto :goto_2e

    :cond_2d
    move v8, v3

    :goto_2e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    if-eqz p3, :cond_4d

    if-eqz p2, :cond_48

    if-ge p0, v4, :cond_44

    .line 1066
    aget-object p0, p2, v8

    goto :goto_46

    :cond_44
    aget-object p0, p2, v5

    :goto_46
    move-object v2, p0

    goto :goto_4d

    :cond_48
    if-ge p0, v4, :cond_4b

    goto :goto_4c

    :cond_4b
    move-object v0, v1

    :goto_4c
    move-object v2, v0

    .line 1071
    :cond_4d
    :goto_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v3, v6, :cond_5b

    goto :goto_5c

    :cond_5b
    move v8, v3

    :goto_5c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, v9}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v7, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_71
    if-lt p0, v3, :cond_d3

    add-int/lit16 p0, p0, -0x5a0

    if-lez p0, :cond_80

    .line 1078
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getHourAndMin(IZ)[I

    move-result-object v3

    aget v3, v3, v8

    .line 1079
    rem-int/lit8 v10, p0, 0x3c

    goto :goto_82

    :cond_80
    move v3, v8

    move v10, v3

    :goto_82
    if-nez p4, :cond_88

    if-eqz v10, :cond_88

    add-int/lit8 v3, v3, 0x1

    :cond_88
    if-eqz p1, :cond_9d

    .line 1086
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v3, v6, :cond_8f

    goto :goto_90

    :cond_8f
    move v8, v3

    :goto_90
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9d
    if-eqz p3, :cond_af

    if-eqz p2, :cond_aa

    if-ge p0, v4, :cond_a6

    .line 1091
    aget-object p0, p2, v8

    goto :goto_a8

    :cond_a6
    aget-object p0, p2, v5

    :goto_a8
    move-object v2, p0

    goto :goto_af

    :cond_aa
    if-ge p0, v4, :cond_ad

    goto :goto_ae

    :cond_ad
    move-object v0, v1

    :goto_ae
    move-object v2, v0

    .line 1096
    :cond_af
    :goto_af
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v3, v6, :cond_bd

    goto :goto_be

    :cond_bd
    move v8, v3

    :goto_be
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, v9}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v7, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1102
    :cond_d3
    const-string p0, "00:00"

    return-object p0
.end method

.method public static timeFormatterForTimeAxis(IZ[Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x1

    const/16 v1, 0x2d0

    const/16 v2, 0x5a0

    const/16 v3, 0x18

    .line 1128
    const-string v4, "%1$02d:%2$02d"

    const/4 v5, 0x0

    if-ltz p0, :cond_51

    if-ge p0, v2, :cond_51

    .line 1129
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getHourAndMin(IZ)[I

    move-result-object v2

    aget v2, v2, v5

    .line 1130
    rem-int/lit8 v6, p0, 0x3c

    if-eqz p1, :cond_2f

    .line 1132
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v5, v2

    :goto_1e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    if-eqz p3, :cond_3a

    if-eqz p2, :cond_3a

    if-ge p0, v1, :cond_38

    .line 1137
    aget-object p0, p2, v5

    goto :goto_3a

    :cond_38
    aget-object p0, p2, v0

    .line 1142
    :cond_3a
    :goto_3a
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v2, v3, :cond_3f

    goto :goto_40

    :cond_3f
    move v5, v2

    :goto_40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_51
    if-lt p0, v2, :cond_9d

    add-int/lit16 p0, p0, -0x5a0

    if-lez p0, :cond_60

    .line 1149
    invoke-static {p0, p1}, Lcom/keephealth/android/util/TimeUtil;->getHourAndMin(IZ)[I

    move-result-object v2

    aget v2, v2, v5

    .line 1150
    rem-int/lit8 v6, p0, 0x3c

    goto :goto_62

    :cond_60
    move v2, v5

    move v6, v2

    :goto_62
    if-eqz p1, :cond_7b

    .line 1153
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v2, v3, :cond_69

    goto :goto_6a

    :cond_69
    move v5, v2

    :goto_6a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7b
    if-eqz p3, :cond_86

    if-eqz p2, :cond_86

    if-ge p0, v1, :cond_84

    .line 1158
    aget-object p0, p2, v5

    goto :goto_86

    :cond_84
    aget-object p0, p2, v0

    .line 1163
    :cond_86
    :goto_86
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v2, v3, :cond_8b

    goto :goto_8c

    :cond_8b
    move v5, v2

    :goto_8c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1167
    :cond_9d
    const-string p0, "00:00"

    return-object p0
.end method

.method public static timeStamp2Date(J)Ljava/lang/String;
    .registers 5

    .line 396
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 397
    new-instance v1, Ljava/util/Date;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeStamp2Date(JLjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 418
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 419
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeStamp2Date(JLjava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 444
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-eqz p3, :cond_1b

    .line 446
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 448
    :cond_1b
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 449
    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, ":"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_75

    .line 450
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 451
    aget-object p2, p0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 452
    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/keephealth/android/util/NumUtil;->isEmptyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 453
    aget-object p2, p2, v2

    invoke-static {p2}, Lcom/keephealth/android/util/NumUtil;->isEmptyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, p2

    .line 455
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0, p3, p4, v2}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IZ[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 457
    :cond_75
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 458
    aget-object p1, p0, v1

    invoke-static {p1}, Lcom/keephealth/android/util/NumUtil;->isEmptyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 459
    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/keephealth/android/util/NumUtil;->isEmptyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p0

    .line 461
    invoke-static {p1, p3, p4, v2}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IZ[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 430
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    .line 433
    :cond_d
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 434
    new-instance p1, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 431
    :cond_26
    :goto_26
    const-string p0, ""

    return-object p0
.end method

.method public static timeStampDateNoHMS()Ljava/lang/String;
    .registers 4

    .line 406
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 407
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static timestampToDate(J)Ljava/lang/String;
    .registers 5

    .line 1264
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1265
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 1266
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDayOfWeek(III)I
    .registers 5

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    const/4 p1, 0x7

    .line 186
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method
