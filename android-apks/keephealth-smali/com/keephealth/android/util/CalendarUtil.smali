.class public Lcom/keephealth/android/util/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# static fields
.field private static CALENDER_EVENT_URL:Ljava/lang/String; = "content://com.android.calendar/events"

.field private static CALENDER_REMINDER_URL:Ljava/lang/String; = "content://com.android.calendar/reminders"

.field private static CALENDER_URL:Ljava/lang/String; = "content://com.android.calendar/calendars"

.field private static final TAG:Ljava/lang/String; = "Main_calendarUtil"

.field private static afterDayTime:J = 0x7fffffffffffffffL

.field private static currentTime:J = 0x0L

.field private static mTm:Landroid/telephony/TelephonyManager; = null

.field private static onedayMS:J = 0x5265c00L

.field static permissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 277
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/keephealth/android/util/CalendarUtil;->permissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCalenderSchedule(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/CalenderDataStruct;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object p0, Lcom/keephealth/android/util/CalendarUtil;->CALENDER_EVENT_URL:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const-string v6, "dtstart DESC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 162
    :goto_18
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 164
    const-string v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    const-string v1, "description"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 166
    const-string v1, "eventLocation"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 167
    const-string v1, "dtstart"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/CalendarUtil;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v4

    .line 168
    const-string v1, "dtend"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/CalendarUtil;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v5

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/keephealth/android/util/CalendarUtil;->getWeek(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 170
    new-instance v1, Lcom/keephealth/android/model/CalenderDataStruct;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/keephealth/android/model/CalenderDataStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_7d
    return-object v0
.end method

.method public static GetCalenderScheduleFormNow(Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/CalenderDataStruct;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/keephealth/android/util/CalendarUtil;->currentTime:J

    if-lez p1, :cond_f

    int-to-long v2, p1

    .line 60
    sget-wide v4, Lcom/keephealth/android/util/CalendarUtil;->onedayMS:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    sput-wide v2, Lcom/keephealth/android/util/CalendarUtil;->afterDayTime:J

    .line 70
    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x6

    const/16 v4, 0x1e

    .line 74
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 75
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/4 v0, 0x2

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    .line 77
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 78
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    const/4 v0, 0x3

    .line 80
    new-array v0, v0, [Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object p0, Lcom/keephealth/android/util/CalendarUtil;->CALENDER_EVENT_URL:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string v0, ""

    move-object v1, v0

    .line 91
    :cond_47
    :goto_47
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_159

    .line 92
    const-string v2, "dtstart"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 95
    sget-wide v5, Lcom/keephealth/android/util/CalendarUtil;->currentTime:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_47

    sget-wide v5, Lcom/keephealth/android/util/CalendarUtil;->afterDayTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_47

    .line 97
    const-string v3, "title"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 98
    const-string v3, "description"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 99
    const-string v3, "eventLocation"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 100
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/CalendarUtil;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v6

    .line 101
    const-string v2, "dtend"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b1

    .line 102
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/CalendarUtil;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_b1
    :try_start_b1
    const-string v2, "rrule"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_bf} :catch_137

    const-string v4, "ScheduleType"

    if-nez v3, :cond_12f

    .line 108
    :try_start_c3
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    array-length v7, v2

    const/4 v10, 0x0

    :goto_d0
    if-ge v10, v7, :cond_e7

    aget-object v11, v2, v10

    .line 111
    const-string v12, "FREQ="

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e4

    const/4 v12, 0x5

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e4
    add-int/lit8 v10, v10, 0x1

    goto :goto_d0

    .line 115
    :cond_e7
    const-string v2, "DAILY"

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 116
    const-string v2, " \u662f\u6bcf\u5929\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v1, "\u6bcf\u5929"

    goto :goto_14c

    .line 118
    :cond_f7
    const-string v2, "WEEKLY"

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 119
    const-string v2, " \u662f\u6bcf\u5468\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v1, "\u6bcf\u5468"

    goto :goto_14c

    .line 121
    :cond_107
    const-string v2, "MONTHLY"

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 122
    const-string v2, " \u662f\u6bcf\u6708\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v1, "\u6bcf\u6708"

    goto :goto_14c

    .line 124
    :cond_117
    const-string v2, "YEARLY"

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 125
    const-string v2, " \u662f\u6bcf\u5e74\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v1, "\u6bcf\u5e74"

    goto :goto_14c

    .line 128
    :cond_127
    const-string v2, " \u662f\u81ea\u5b9a\u4e49\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v1, "\u81ea\u5b9a\u4e49"

    goto :goto_14c

    .line 132
    :cond_12f
    const-string v2, " \u662f\u4e0d\u91cd\u590d\u7684\u65e5\u7a0b"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v1, "\u4e0d\u91cd\u590d"
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_136} :catch_137

    goto :goto_14c

    :catch_137
    move-exception v2

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CalenderDataStruct"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_14c
    new-instance v2, Lcom/keephealth/android/model/CalenderDataStruct;

    move-object v4, v2

    move-object v7, v0

    move-object v10, v1

    invoke-direct/range {v4 .. v10}, Lcom/keephealth/android/model/CalenderDataStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    :cond_159
    return-object p1
.end method

.method private static checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 10

    .line 297
    const-string v0, "checkPermissions: \u68c0\u6d4b\u6743\u9650"

    const-string v1, "Main_calendarUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_31

    aget-object v5, p1, v4

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkPermissions: permission "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2e

    .line 306
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 311
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4b

    .line 312
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 313
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 314
    const-string p0, "checkPermissions: \u5df2\u7ecf\u83b7\u5f97\u4e86\u6240\u6709\u6743\u9650"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_4b
    const-string p0, "checkPermissions: Is Over"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static checkPermissionsForUnity(Landroid/app/Activity;)V
    .registers 2

    .line 286
    sget-object v0, Lcom/keephealth/android/util/CalendarUtil;->permissions:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/CalendarUtil;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void
.end method

.method private static getCalendar(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 10

    .line 186
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object p0, Lcom/keephealth/android/util/CalendarUtil;->CALENDER_EVENT_URL:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 189
    :goto_17
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 190
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 191
    const-string v2, "title"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    const-string v3, "description"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    const-string v5, "eventLocation"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 194
    const-string v6, "dtstart"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keephealth/android/util/CalendarUtil;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v6

    .line 195
    const-string v7, "dtend"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/keephealth/android/util/CalendarUtil;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v7

    .line 197
    :try_start_64
    const-string v8, "eventTitle"

    invoke-virtual {v1, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v2, "location"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v2, "startTime"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v2, "endTime"

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception v2

    .line 203
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 205
    :goto_80
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_17

    :cond_84
    return-object v0
.end method

.method private static getWeek(Ljava/lang/String;)I
    .registers 6

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pTime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CalenderDataStruct"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 241
    :try_start_1f
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_26
    .catch Ljava/text/ParseException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 245
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_2b
    const/4 p0, 0x7

    .line 247
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 250
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    .line 253
    :goto_39
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_41

    goto :goto_42

    :cond_41
    move v2, v0

    .line 256
    :goto_42
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v4, v2

    .line 259
    :goto_4b
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_53

    goto :goto_54

    :cond_53
    move v3, v4

    .line 262
    :goto_54
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_5c

    goto :goto_5d

    :cond_5c
    move v2, v3

    .line 265
    :goto_5d
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p0, :cond_64

    goto :goto_65

    :cond_64
    move v4, v2

    :goto_65
    return v4
.end method

.method private static timeStamp2Date(J)Ljava/lang/String;
    .registers 4

    .line 217
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 218
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
