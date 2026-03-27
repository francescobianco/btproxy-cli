.class public Lcom/keephealth/android/util/CalendarEventsRetriever;
.super Ljava/lang/Object;
.source "CalendarEventsRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;
    }
.end annotation


# static fields
.field private static final HOLIDAY_CALENDAR_NAME:Ljava/lang/String; = "\u4e2d\u56fd\u8282\u5047\u65e5"

.field private static final TAG:Ljava/lang/String; = "CalendarEventRetriever"

.field private static final mHolidayCalendarIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 303
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/CalendarEventsRetriever;->mHolidayCalendarIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndCompareEventApproaches(Landroid/content/Context;)V
    .registers 5

    .line 580
    invoke-static {p0}, Lcom/keephealth/android/util/CalendarEventsRetriever;->getEventsFromEventsTable(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 581
    invoke-static {p0}, Lcom/keephealth/android/util/CalendarEventsRetriever;->getEventsFromInstancesTable(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 583
    const-string v1, "==== \u6bd4\u8f83\u4e24\u79cd\u65b9\u6cd5\u7684\u7ed3\u679c ===="

    const-string v2, "CalendarEventRetriever"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Events\u8868\u83b7\u53d6\u5230 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u6761\u4e8b\u4ef6\u8bb0\u5f55"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Instances\u8868\u83b7\u53d6\u5230 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " \u6761\u4e8b\u4ef6\u5b9e\u4f8b"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4b
    :goto_4b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    .line 589
    iget-object v1, v0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->rrule:Ljava/lang/String;

    if-eqz v1, :cond_4b

    iget-object v1, v0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->rrule:Ljava/lang/String;

    const-string v3, "FREQ=DAILY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u53d1\u73b0\u6bcf\u65e5\u91cd\u590d\u4e8b\u4ef6: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v0, "\u5728Events\u8868\u4e2d\u8fd9\u662f1\u6761\u8bb0\u5f55\uff0c\u4f46\u5728Instances\u8868\u4e2d\u5c06\u5c55\u5f00\u4e3a7\u6761\u8bb0\u5f55\uff08\u4eca\u5929\u52306\u5929\u540e\uff09"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_7f
    return-void
.end method

.method public static getEventsFromEventsTable(Landroid/content/Context;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 243
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 244
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    .line 245
    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 246
    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 247
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v8, 0x6

    .line 250
    invoke-virtual {v1, v8, v8}, Ljava/util/Calendar;->add(II)V

    const/16 v8, 0x17

    .line 251
    invoke-virtual {v1, v2, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x3b

    .line 252
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 253
    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 254
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 256
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 p0, 0x5

    .line 259
    new-array v11, p0, [Ljava/lang/String;

    const-string p0, "_id"

    aput-object p0, v11, v3

    const/4 p0, 0x1

    const-string v5, "title"

    aput-object v5, v11, p0

    const-string v8, "dtstart"

    const/4 v10, 0x2

    aput-object v8, v11, v10

    const/4 v8, 0x3

    const-string v12, "dtend"

    aput-object v12, v11, v8

    const/4 v8, 0x4

    const-string v12, "rrule"

    aput-object v12, v11, v8

    .line 269
    new-array v13, v10, [Ljava/lang/String;

    .line 270
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v13, v3

    .line 271
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, p0

    .line 274
    sget-object v10, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    const-string v12, "dtend >= ? AND dtstart <= ?"

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 282
    const-string v1, "CalendarEventRetriever"

    if-eqz p0, :cond_f9

    .line 284
    :goto_7e
    :try_start_7e
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 285
    new-instance v2, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-direct {v2}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;-><init>()V

    .line 286
    const-string v3, "event_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->id:J

    .line 287
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->title:Ljava/lang/String;

    .line 288
    new-instance v3, Ljava/util/Date;

    const-string v6, "begin"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startTime:Ljava/lang/String;

    .line 289
    new-instance v3, Ljava/util/Date;

    const-string v6, "end"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endTime:Ljava/lang/String;

    .line 290
    new-instance v3, Ljava/util/Date;

    iget-object v6, v2, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startTime:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->displayDate:Ljava/lang/String;

    .line 291
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found event instance: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catchall {:try_start_7e .. :try_end_ef} :catchall_f4

    goto :goto_7e

    .line 296
    :cond_f0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_f9

    :catchall_f4
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 297
    throw v0

    .line 300
    :cond_f9
    :goto_f9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Total events found in Events table: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getEventsFromInstancesTable(Landroid/content/Context;)Ljava/util/List;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;",
            ">;"
        }
    .end annotation

    .line 308
    const-string v0, "_id"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 324
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    .line 325
    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 326
    invoke-virtual {v2, v6, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    .line 327
    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 328
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 329
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v9, 0x6

    const/4 v10, 0x7

    .line 330
    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->add(II)V

    const/16 v11, 0x17

    .line 331
    invoke-virtual {v2, v3, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0x3b

    .line 332
    invoke-virtual {v2, v5, v12}, Ljava/util/Calendar;->set(II)V

    .line 333
    invoke-virtual {v2, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 334
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 336
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v6, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 339
    sget-object v6, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 340
    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 341
    invoke-static {v6, v13, v14}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 343
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v20, 0x0

    .line 349
    :try_start_61
    new-array v3, v15, [Ljava/lang/String;

    aput-object v0, v3, v4

    const-string v16, "account_name"

    aput-object v16, v3, v12

    const-string v16, "calendar_displayName"

    aput-object v16, v3, v11

    .line 354
    sget-object v16, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    move v10, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    .line 355
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_7e} :catch_c9
    .catchall {:try_start_61 .. :try_end_7e} :catchall_c2

    if-eqz v3, :cond_bc

    .line 358
    :goto_80
    :try_start_80
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_bc

    .line 359
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 360
    const-string v9, "account_name"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 361
    const-string v10, "calendar_displayName"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 364
    const-string v11, "CN"

    invoke-static {v9, v10, v11}, Lcom/keephealth/android/util/CalendarEventsRetriever;->isLegalHolidayCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b1

    .line 365
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_b1} :catch_b9
    .catchall {:try_start_80 .. :try_end_b1} :catchall_b5

    :cond_b1
    const/4 v9, 0x6

    const/4 v10, 0x3

    const/4 v11, 0x2

    goto :goto_80

    :catchall_b5
    move-exception v0

    move-object/from16 v20, v3

    goto :goto_c3

    :catch_b9
    move-object/from16 v20, v3

    goto :goto_c9

    :cond_bc
    if-eqz v3, :cond_ce

    .line 371
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_ce

    :catchall_c2
    move-exception v0

    :goto_c3
    if-eqz v20, :cond_c8

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_c8
    throw v0

    :catch_c9
    :goto_c9
    if-eqz v20, :cond_ce

    .line 371
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_ce
    :goto_ce
    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    const-string v0, "event_id"

    aput-object v0, v3, v12

    const-string v5, "title"

    const/4 v9, 0x2

    aput-object v5, v3, v9

    const-string v9, "begin"

    const/4 v10, 0x3

    aput-object v9, v3, v10

    const/4 v10, 0x4

    const-string v11, "end"

    aput-object v11, v3, v10

    const/4 v14, 0x5

    const-string v15, "eventLocation"

    aput-object v15, v3, v14

    const-string v10, "description"

    const/16 v16, 0x6

    aput-object v10, v3, v16

    const-string v4, "rrule"

    const/16 v20, 0x7

    aput-object v4, v3, v20

    const/16 v20, 0x8

    const-string v22, "calendar_id"

    aput-object v22, v3, v20

    const/16 v20, 0x9

    const-string v22, "organizer"

    aput-object v22, v3, v20

    const/16 v20, 0xa

    const-string v22, "customAppPackage"

    aput-object v22, v3, v20

    const-string v20, "allDay"

    const/16 v21, 0xb

    aput-object v20, v3, v21

    .line 390
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 391
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v24

    const/16 v27, 0x0

    const-string v28, "begin ASC"

    const/16 v26, 0x0

    move-object/from16 v25, v3

    .line 390
    invoke-virtual/range {v23 .. v28}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_404

    .line 400
    :goto_124
    :try_start_124
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3fb

    .line 401
    new-instance v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-direct {v6}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;-><init>()V

    .line 402
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v21, v13

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->id:J

    .line 403
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->title:Ljava/lang/String;

    .line 406
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->location:Ljava/lang/String;

    .line 407
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->descrition:Ljava/lang/String;

    .line 409
    const-string v12, "allDay"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1a7

    .line 411
    new-instance v13, Ljava/util/Date;

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lcom/keephealth/android/util/CalendarEventsRetriever;->getLocalStartTime(J)Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    move-object/from16 v23, v15

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startTime:Ljava/lang/String;

    .line 412
    new-instance v13, Ljava/util/Date;

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/keephealth/android/util/CalendarEventsRetriever;->getLocalEndTime(J)Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endTime:Ljava/lang/String;

    goto :goto_1cf

    :cond_1a7
    move-object/from16 v23, v15

    .line 414
    new-instance v13, Ljava/util/Date;

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startTime:Ljava/lang/String;

    .line 415
    new-instance v13, Ljava/util/Date;

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endTime:Ljava/lang/String;

    .line 417
    :goto_1cf
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/keephealth/android/util/DateUtil;->timestampToDateFiveGang(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 419
    array-length v15, v14

    move-object/from16 v24, v0

    const/4 v0, 0x0

    :goto_1ea
    if-ge v0, v15, :cond_203

    aget-object v25, v14, v0
    :try_end_1ee
    .catchall {:try_start_124 .. :try_end_1ee} :catchall_3ff

    .line 421
    :try_start_1ee
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25
    :try_end_1f2
    .catch Ljava/lang/NumberFormatException; {:try_start_1ee .. :try_end_1f2} :catch_1fc
    .catchall {:try_start_1ee .. :try_end_1f2} :catchall_3ff

    move-object/from16 v26, v2

    :try_start_1f4
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1fb
    .catch Ljava/lang/NumberFormatException; {:try_start_1f4 .. :try_end_1fb} :catch_1fe
    .catchall {:try_start_1f4 .. :try_end_1fb} :catchall_3ff

    goto :goto_1fe

    :catch_1fc
    move-object/from16 v26, v2

    :catch_1fe
    :goto_1fe
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v26

    goto :goto_1ea

    :cond_203
    move-object/from16 v26, v2

    .line 426
    :try_start_205
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_263

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_263

    const/4 v0, 0x0

    .line 427
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    .line 428
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v14, 0x2

    .line 429
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ne v12, v15, :cond_23b

    move-object/from16 v25, v5

    const/4 v5, 0x0

    const/4 v15, 0x0

    goto :goto_253

    :cond_23b
    const/4 v15, 0x3

    .line 434
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v25, v5

    const/4 v5, 0x4

    .line 435
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 437
    :goto_253
    invoke-virtual {v6, v0}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setStartYear(I)V

    .line 438
    invoke-virtual {v6, v2}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setStartMonth(I)V

    .line 439
    invoke-virtual {v6, v14}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setStartDay(I)V

    .line 440
    invoke-virtual {v6, v15}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setStartHour(I)V

    .line 441
    invoke-virtual {v6, v5}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setStartMinute(I)V

    goto :goto_265

    :cond_263
    move-object/from16 v25, v5

    .line 443
    :goto_265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/keephealth/android/util/DateUtil;->timestampToDateFiveGang(J)Ljava/lang/String;

    move-result-object v2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 445
    array-length v5, v2

    const/4 v14, 0x0

    :goto_27e
    if-ge v14, v5, :cond_290

    aget-object v15, v2, v14
    :try_end_282
    .catchall {:try_start_205 .. :try_end_282} :catchall_3ff

    .line 447
    :try_start_282
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28d
    .catch Ljava/lang/NumberFormatException; {:try_start_282 .. :try_end_28d} :catch_28d
    .catchall {:try_start_282 .. :try_end_28d} :catchall_3ff

    :catch_28d
    add-int/lit8 v14, v14, 0x1

    goto :goto_27e

    .line 452
    :cond_290
    :try_start_290
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2fe

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_2fe

    const/4 v2, 0x0

    .line 453
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v14, 0x1

    .line 454
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v12, v14, :cond_2c6

    const/4 v12, 0x2

    .line 459
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x17

    const/4 v12, 0x2

    const/16 v13, 0x3b

    goto :goto_2ee

    :cond_2c6
    const/4 v12, 0x2

    .line 461
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v2, 0x3

    .line 462
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/4 v2, 0x4

    .line 463
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v2, v17

    move/from16 v29, v13

    move v13, v0

    move/from16 v0, v29

    .line 465
    :goto_2ee
    invoke-virtual {v6, v5}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setEndYear(I)V

    .line 466
    invoke-virtual {v6, v15}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setEndMonth(I)V

    .line 467
    invoke-virtual {v6, v0}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setEndDay(I)V

    .line 468
    invoke-virtual {v6, v2}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setEndHour(I)V

    .line 469
    invoke-virtual {v6, v13}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setEndMinute(I)V

    goto :goto_300

    :cond_2fe
    const/4 v12, 0x2

    const/4 v14, 0x1

    .line 471
    :goto_300
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->rrule:Ljava/lang/String;

    .line 472
    iget-object v0, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->rrule:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_310
    .catchall {:try_start_290 .. :try_end_310} :catchall_3ff

    const-string v2, "ScheduleType"

    if-nez v0, :cond_37d

    .line 473
    :try_start_314
    iget-object v0, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->rrule:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 474
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 475
    array-length v13, v0

    const/4 v15, 0x0

    :goto_323
    if-ge v15, v13, :cond_33e

    aget-object v12, v0, v15

    .line 476
    const-string v14, "FREQ="

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_338

    const/4 v14, 0x5

    .line 477
    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_339

    :cond_338
    const/4 v14, 0x5

    :goto_339
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x1

    goto :goto_323

    :cond_33e
    const/4 v14, 0x5

    .line 480
    const-string v0, "DAILY"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34d

    .line 481
    const-string v0, " \u662f\u6bcf\u5929\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_383

    .line 483
    :cond_34d
    const-string v0, "WEEKLY"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35b

    .line 484
    const-string v0, " \u662f\u6bcf\u5468\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_383

    .line 486
    :cond_35b
    const-string v0, "MONTHLY"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_369

    .line 487
    const-string v0, " \u662f\u6bcf\u6708\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_383

    .line 489
    :cond_369
    const-string v0, "YEARLY"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_377

    .line 490
    const-string v0, " \u662f\u6bcf\u5e74\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_383

    .line 493
    :cond_377
    const-string v0, " \u662f\u81ea\u5b9a\u4e49\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_383

    :cond_37d
    const/4 v14, 0x5

    .line 497
    const-string v0, " \u662f\u4e0d\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_383
    const-string v0, "calendar_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 503
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v2, v21

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c6

    .line 504
    const-string v0, "CalenderDataStruc2t"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u6cd5\u5b9a\u8282\u5047\u65e5: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v12, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->title:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " (\u65f6\u95f4: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3ef

    .line 506
    :cond_3c6
    const-string v0, "CalenderDataStruc2t"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u666e\u901a\u65e5\u7a0b: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v12, v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->title:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v0, v7, v12

    if-gtz v0, :cond_3ef

    .line 508
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3ef
    .catchall {:try_start_314 .. :try_end_3ef} :catchall_3ff

    :cond_3ef
    :goto_3ef
    move-object v13, v2

    move-object/from16 v15, v23

    move-object/from16 v0, v24

    move-object/from16 v5, v25

    move-object/from16 v2, v26

    const/4 v12, 0x1

    goto/16 :goto_124

    .line 513
    :cond_3fb
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_404

    :catchall_3ff
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 514
    throw v0

    .line 518
    :cond_404
    :goto_404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Total events found in Instances table: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CalendarEventRetriever"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static getLocalEndTime(J)Ljava/util/Calendar;
    .registers 2

    .line 546
    invoke-static {p0, p1}, Lcom/keephealth/android/util/CalendarEventsRetriever;->getLocalStartTime(J)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method private static getLocalStartTime(J)Ljava/util/Calendar;
    .registers 10

    .line 525
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 526
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 527
    const-string p0, "UTC"

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 530
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 531
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 p1, 0x1

    .line 532
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 p1, 0x2

    .line 533
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 p1, 0x5

    .line 534
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 532
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p1, 0xe

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method private static isCustomEvent(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 574
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isLegalHolidayCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 554
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ".*"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".*#holiday@group\\.v\\.calendar\\.google\\.com"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 556
    invoke-static {p2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_26

    :cond_25
    move p0, v1

    .line 561
    :goto_26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_4d

    .line 562
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 564
    const-string p2, "holiday"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4b

    const-string p2, "festival"

    .line 565
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4b

    const-string p2, "\u8282\u5047\u65e5"

    .line 566
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4d

    :cond_4b
    move p1, v0

    goto :goto_4e

    :cond_4d
    move p1, v1

    :goto_4e
    if-nez p0, :cond_52

    if-eqz p1, :cond_53

    :cond_52
    move v1, v0

    :cond_53
    return v1
.end method
