.class public Lcom/keephealth/android/util/CalendarManager;
.super Ljava/lang/Object;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/CalendarManager$CalendarEvent;
    }
.end annotation


# static fields
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

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/CalendarManager;->mHolidayCalendarIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEvents(Landroid/content/Context;)Ljava/util/List;
    .registers 41
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

    .line 30
    const-string v0, "calendar_displayName"

    const-string v1, "account_name"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/16 v3, 0x9

    .line 34
    new-array v10, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v10, v11

    const/4 v13, 0x1

    const-string v14, "title"

    aput-object v14, v10, v13

    const/4 v15, 0x2

    const-string v8, "description"

    aput-object v8, v10, v15

    const/4 v7, 0x3

    const-string v6, "eventLocation"

    aput-object v6, v10, v7

    const/4 v5, 0x4

    const-string v4, "dtstart"

    aput-object v4, v10, v5

    const/4 v3, 0x5

    move-object/from16 p0, v8

    const-string v8, "rrule"

    aput-object v8, v10, v3

    move-object/from16 v16, v8

    const/4 v8, 0x6

    move-object/from16 v17, v6

    const-string v6, "dtend"

    aput-object v6, v10, v8

    const-string v18, "allDay"

    const/4 v8, 0x7

    aput-object v18, v10, v8

    const/16 v18, 0x8

    const-string v8, "calendar_id"

    aput-object v8, v10, v18

    const/16 v18, 0x0

    .line 55
    :try_start_47
    new-array v5, v7, [Ljava/lang/String;

    aput-object v12, v5, v11

    aput-object v1, v5, v13

    aput-object v0, v5, v15

    .line 60
    sget-object v22, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_51} :catch_b8
    .catchall {:try_start_47 .. :try_end_51} :catchall_b1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v3, v9

    move-object/from16 v26, v4

    move-object/from16 v4, v22

    move-object/from16 v28, v6

    move-object/from16 v27, v17

    move-object/from16 v6, v25

    move-object/from16 v7, v23

    move-object/from16 v29, p0

    move-object/from16 v31, v8

    move-object/from16 v30, v16

    const/4 v11, 0x7

    const/4 v15, 0x6

    move-object/from16 v8, v24

    .line 61
    :try_start_6e
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_72} :catch_c6
    .catchall {:try_start_6e .. :try_end_72} :catchall_b1

    if-eqz v3, :cond_ab

    .line 64
    :cond_74
    :goto_74
    :try_start_74
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 65
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 66
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 70
    const-string v8, "CN"

    invoke-static {v6, v7, v8}, Lcom/keephealth/android/util/CalendarManager;->isLegalHolidayCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 71
    sget-object v6, Lcom/keephealth/android/util/CalendarManager;->mHolidayCalendarIds:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_a3} :catch_a8
    .catchall {:try_start_74 .. :try_end_a3} :catchall_a4

    goto :goto_74

    :catchall_a4
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_b2

    :catch_a8
    move-object/from16 v18, v3

    goto :goto_c6

    :cond_ab
    if-eqz v3, :cond_cb

    .line 77
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_cb

    :catchall_b1
    move-exception v0

    :goto_b2
    if-eqz v18, :cond_b7

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_b7
    throw v0

    :catch_b8
    move-object/from16 v29, p0

    move-object/from16 v26, v4

    move-object/from16 v28, v6

    move-object/from16 v31, v8

    move-object/from16 v30, v16

    move-object/from16 v27, v17

    const/4 v11, 0x7

    const/4 v15, 0x6

    :catch_c6
    :goto_c6
    if-eqz v18, :cond_cb

    .line 77
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_cb
    :goto_cb
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 85
    invoke-virtual {v0, v15, v11}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0xe

    .line 86
    invoke-virtual {v0, v1, v13}, Ljava/util/Calendar;->add(II)V

    .line 87
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5f00\u59cb\u65f6\u95f4:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   \u7ed3\u675f\u65f6\u95f4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ffrt5re"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v3, 0x0

    .line 100
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 101
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 102
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v15, v11}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x2

    .line 109
    new-array v7, v4, [Ljava/lang/String;

    .line 110
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    .line 111
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v13

    .line 114
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    .line 116
    const-string v6, "((dtstart >= ?) AND (dtend <= ?))"

    move-object v3, v9

    move-object v5, v10

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_44a

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_44a

    .line 133
    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    .line 136
    :goto_156
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 137
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v1

    move/from16 v21, v5

    move-object/from16 v1, v26

    .line 138
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/keephealth/android/util/DateUtil;->timestampToDateFiveGang(J)Ljava/lang/String;

    move-result-object v5

    move/from16 v22, v6

    move-object/from16 v1, v28

    .line 139
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lcom/keephealth/android/util/DateUtil;->timestampToDateFiveGang(J)Ljava/lang/String;

    move-result-object v6

    move/from16 v23, v7

    move-object/from16 v1, v29

    .line 142
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v24, v8

    move-object/from16 v1, v27

    .line 143
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move/from16 v25, v9

    .line 146
    const-string v9, "-"

    move/from16 v32, v10

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move/from16 v33, v11

    .line 147
    array-length v11, v10

    move-object/from16 v34, v12

    const/4 v12, 0x0

    :goto_1b9
    if-ge v12, v11, :cond_1d2

    aget-object v35, v10, v12

    .line 149
    :try_start_1bd
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35
    :try_end_1c1
    .catch Ljava/lang/NumberFormatException; {:try_start_1bd .. :try_end_1c1} :catch_1cb

    move-object/from16 v36, v10

    :try_start_1c3
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1ca
    .catch Ljava/lang/NumberFormatException; {:try_start_1c3 .. :try_end_1ca} :catch_1cd

    goto :goto_1cd

    :catch_1cb
    move-object/from16 v36, v10

    :catch_1cd
    :goto_1cd
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, v36

    goto :goto_1b9

    .line 154
    :cond_1d2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 156
    array-length v11, v9

    const/4 v12, 0x0

    :goto_1dd
    if-ge v12, v11, :cond_1f6

    aget-object v35, v9, v12

    .line 158
    :try_start_1e1
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35
    :try_end_1e5
    .catch Ljava/lang/NumberFormatException; {:try_start_1e1 .. :try_end_1e5} :catch_1ef

    move-object/from16 v36, v9

    :try_start_1e7
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1ee
    .catch Ljava/lang/NumberFormatException; {:try_start_1e7 .. :try_end_1ee} :catch_1f1

    goto :goto_1f1

    :catch_1ef
    move-object/from16 v36, v9

    :catch_1f1
    :goto_1f1
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v36

    goto :goto_1dd

    .line 163
    :cond_1f6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_243

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x5

    if-ne v9, v11, :cond_243

    const/4 v9, 0x0

    .line 164
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v12, 0x1

    .line 165
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v11, 0x2

    .line 166
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v19, v9

    const/4 v9, 0x3

    .line 167
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/4 v9, 0x4

    .line 168
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v38, v1

    move/from16 v1, v19

    move/from16 v37, v21

    goto :goto_24e

    :cond_243
    const/4 v9, 0x4

    move/from16 v1, v19

    move/from16 v12, v21

    move/from16 v11, v22

    move/from16 v37, v23

    move/from16 v38, v24

    .line 170
    :goto_24e
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    const-string v14, "listEndTime:"

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, "  listEndTime.get(3):"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v21, v15

    const/4 v14, 0x3

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v14, "CalenderDataStruct"

    invoke-static {v14, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2c8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    const/4 v14, 0x5

    if-ne v9, v14, :cond_2c8

    const/4 v9, 0x0

    .line 172
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    .line 173
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/4 v9, 0x2

    .line 174
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v18, v9

    const/4 v9, 0x3

    .line 175
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v21, v9

    const/4 v9, 0x4

    .line 176
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move/from16 v9, v18

    move/from16 v22, v21

    move-object/from16 v18, v2

    move/from16 v21, v10

    move-object/from16 v10, v30

    goto :goto_2d7

    :cond_2c8
    const/4 v9, 0x4

    move/from16 v22, v21

    move/from16 v14, v25

    move-object/from16 v10, v30

    move/from16 v15, v32

    move/from16 v9, v33

    move/from16 v21, v18

    move-object/from16 v18, v2

    .line 180
    :goto_2d7
    :try_start_2d7
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23
    :try_end_2e3
    .catch Ljava/lang/Exception; {:try_start_2d7 .. :try_end_2e3} :catch_378

    move-object/from16 v30, v10

    const-string v10, "ScheduleType"

    if-nez v23, :cond_369

    move/from16 v23, v9

    .line 182
    :try_start_2eb
    const-string v9, ";"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 183
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_2f6
    .catch Ljava/lang/Exception; {:try_start_2eb .. :try_end_2f6} :catch_37c

    move/from16 v24, v15

    .line 184
    :try_start_2f8
    array-length v15, v2
    :try_end_2f9
    .catch Ljava/lang/Exception; {:try_start_2f8 .. :try_end_2f9} :catch_366

    move/from16 v25, v14

    const/4 v14, 0x0

    :goto_2fc
    if-ge v14, v15, :cond_31d

    move/from16 v32, v15

    :try_start_300
    aget-object v15, v2, v14

    move-object/from16 v33, v2

    .line 185
    const-string v2, "FREQ="

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_30a
    .catch Ljava/lang/Exception; {:try_start_300 .. :try_end_30a} :catch_380

    if-eqz v2, :cond_315

    const/4 v2, 0x5

    .line 186
    :try_start_30d
    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_316

    :cond_315
    const/4 v2, 0x5

    :goto_316
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v32

    move-object/from16 v2, v33

    goto :goto_2fc

    :cond_31d
    const/4 v2, 0x5

    .line 189
    const-string v14, "DAILY"

    invoke-interface {v9, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_32e

    .line 190
    const-string v9, " \u662f\u6bcf\u5929\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v9, "\u6bcf\u5929"

    goto :goto_383

    .line 192
    :cond_32e
    const-string v14, "WEEKLY"

    invoke-interface {v9, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_33e

    .line 193
    const-string v9, " \u662f\u6bcf\u5468\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v9, "\u6bcf\u5468"

    goto :goto_383

    .line 195
    :cond_33e
    const-string v14, "MONTHLY"

    invoke-interface {v9, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34e

    .line 196
    const-string v9, " \u662f\u6bcf\u6708\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v9, "\u6bcf\u6708"

    goto :goto_383

    .line 198
    :cond_34e
    const-string v14, "YEARLY"

    invoke-interface {v9, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35e

    .line 199
    const-string v9, " \u662f\u6bcf\u5e74\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v9, "\u6bcf\u5e74"

    goto :goto_383

    .line 202
    :cond_35e
    const-string v9, " \u662f\u81ea\u5b9a\u4e49\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v9, "\u81ea\u5b9a\u4e49"

    goto :goto_383

    :catch_366
    move/from16 v25, v14

    goto :goto_380

    :cond_369
    move/from16 v23, v9

    move/from16 v25, v14

    move/from16 v24, v15

    const/4 v2, 0x5

    .line 206
    const-string v9, " \u662f\u4e0d\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v9, "\u4e0d\u91cd\u590d"
    :try_end_377
    .catch Ljava/lang/Exception; {:try_start_30d .. :try_end_377} :catch_381

    goto :goto_383

    :catch_378
    move/from16 v23, v9

    move-object/from16 v30, v10

    :catch_37c
    move/from16 v25, v14

    move/from16 v24, v15

    :catch_380
    :goto_380
    const/4 v2, 0x5

    :catch_381
    move-object/from16 v9, v20

    :goto_383
    move-object/from16 v10, v31

    .line 211
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 213
    sget-object v2, Lcom/keephealth/android/util/CalendarManager;->mHolidayCalendarIds:Ljava/util/Set;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v14, "CalenderDataStruc2t"

    if-eqz v2, :cond_3be

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v15, "\u6cd5\u5b9a\u8282\u5047\u65e5: "

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " (\u65f6\u95f4: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ")"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d0

    .line 216
    :cond_3be
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v15, "\u666e\u901a\u65e5\u7a0b: "

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_3d0
    new-instance v2, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-direct {v2}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;-><init>()V

    .line 219
    invoke-virtual {v2, v3, v4}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setId(J)V

    const/4 v3, 0x1

    .line 220
    invoke-static {v13, v3}, Lcom/keephealth/android/util/TruncateStringUtil;->truncateStringToByte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setTitle(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2, v5}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setStartTime(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2, v6}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setEndTime(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 223
    invoke-static {v7, v4}, Lcom/keephealth/android/util/TruncateStringUtil;->truncateStringToByte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setDescrition(Ljava/lang/String;)V

    const/4 v5, 0x3

    .line 224
    invoke-static {v8, v5}, Lcom/keephealth/android/util/TruncateStringUtil;->truncateStringToByte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setLocation(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2, v9}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setType(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2, v1}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setStartYear(I)V

    .line 227
    invoke-virtual {v2, v12}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setStartMonth(I)V

    .line 228
    invoke-virtual {v2, v11}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setStartDay(I)V

    move/from16 v6, v37

    .line 229
    invoke-virtual {v2, v6}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setStartHour(I)V

    move/from16 v7, v38

    .line 230
    invoke-virtual {v2, v7}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setStartMinute(I)V

    move/from16 v14, v25

    .line 231
    invoke-virtual {v2, v14}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setEndYear(I)V

    move/from16 v15, v24

    .line 232
    invoke-virtual {v2, v15}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setEndMonth(I)V

    move/from16 v8, v23

    .line 233
    invoke-virtual {v2, v8}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setEndDay(I)V

    move/from16 v13, v22

    .line 234
    invoke-virtual {v2, v13}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setEndHour(I)V

    move/from16 v3, v21

    .line 235
    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->setEndMinute(I)V

    move-object/from16 v4, v18

    .line 236
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_434

    .line 238
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_44b

    :cond_434
    move-object v2, v4

    move-object/from16 v31, v10

    move v5, v12

    move v10, v15

    move-object/from16 v12, v34

    move v4, v1

    move-object v1, v9

    move v15, v13

    move v9, v14

    move-object/from16 v14, v19

    move/from16 v39, v7

    move v7, v6

    move v6, v11

    move v11, v8

    move/from16 v8, v39

    goto/16 :goto_156

    :cond_44a
    move-object v4, v2

    :goto_44b
    return-object v4
.end method

.method private static isLegalHolidayCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 444
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 445
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

    .line 446
    invoke-static {p2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_26

    :cond_25
    move p0, v1

    .line 451
    :goto_26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_4d

    .line 452
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 454
    const-string p2, "holiday"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4b

    const-string p2, "festival"

    .line 455
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4b

    const-string p2, "\u8282\u5047\u65e5"

    .line 456
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
