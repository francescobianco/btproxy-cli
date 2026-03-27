.class public Lcom/keephealth/android/views/calendarview/utils/LunarUtil;
.super Ljava/lang/Object;
.source "LunarUtil.java"


# static fields
.field private static final LUNAR_INFO:[I

.field private static final MAX_YEAR:I = 0x801

.field private static final MIN_YEAR:I = 0x76c

.field private static final START_DATE:Ljava/lang/String; = "19000130"

.field private static final dayInfo:[Ljava/lang/String;

.field private static final monthInfo:[Ljava/lang/String;

.field private static final solarTerm:[Ljava/lang/String;

.field private static final solarTermInfo:[I

.field private static utcCal:Ljava/util/GregorianCalendar;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/16 v0, 0x96

    .line 12
    new-array v0, v0, [I

    fill-array-data v0, :array_10e

    sput-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->LUNAR_INFO:[I

    const/16 v0, 0x18

    .line 30
    new-array v0, v0, [I

    fill-array-data v0, :array_23e

    sput-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->solarTermInfo:[I

    const/16 v0, 0x18

    .line 36
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5c0f\u5bd2"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u5927\u5bd2"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "\u7acb\u6625"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "\u96e8\u6c34"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "\u60ca\u86f0"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "\u6625\u5206"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "\u6e05\u660e"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "\u8c37\u96e8"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "\u7acb\u590f"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "\u5c0f\u6ee1"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "\u8292\u79cd"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const/16 v1, 0xb

    const-string v13, "\u590f\u81f3"

    aput-object v13, v0, v1

    const/16 v1, 0xc

    const-string v13, "\u5c0f\u6691"

    aput-object v13, v0, v1

    const/16 v1, 0xd

    const-string v13, "\u5927\u6691"

    aput-object v13, v0, v1

    const/16 v1, 0xe

    const-string v13, "\u7acb\u79cb"

    aput-object v13, v0, v1

    const/16 v1, 0xf

    const-string v13, "\u5904\u6691"

    aput-object v13, v0, v1

    const/16 v1, 0x10

    const-string v13, "\u767d\u9732"

    aput-object v13, v0, v1

    const/16 v1, 0x11

    const-string v13, "\u79cb\u5206"

    aput-object v13, v0, v1

    const/16 v1, 0x12

    const-string v13, "\u5bd2\u9732"

    aput-object v13, v0, v1

    const/16 v1, 0x13

    const-string v13, "\u971c\u964d"

    aput-object v13, v0, v1

    const/16 v1, 0x14

    const-string v13, "\u7acb\u51ac"

    aput-object v13, v0, v1

    const/16 v1, 0x15

    const-string v13, "\u5c0f\u96ea"

    aput-object v13, v0, v1

    const/16 v1, 0x16

    const-string v13, "\u5927\u96ea"

    aput-object v13, v0, v1

    const/16 v1, 0x17

    const-string v13, "\u51ac\u81f3"

    aput-object v13, v0, v1

    sput-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->solarTerm:[Ljava/lang/String;

    const/16 v0, 0xd

    .line 40
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "\u6b63\u6708"

    aput-object v1, v0, v3

    const-string v1, "\u4e8c\u6708"

    aput-object v1, v0, v4

    const-string v1, "\u4e09\u6708"

    aput-object v1, v0, v5

    const-string v1, "\u56db\u6708"

    aput-object v1, v0, v6

    const-string v1, "\u4e94\u6708"

    aput-object v1, v0, v7

    const-string v1, "\u516d\u6708"

    aput-object v1, v0, v8

    const-string v1, "\u4e03\u6708"

    aput-object v1, v0, v9

    const-string v1, "\u516b\u6708"

    aput-object v1, v0, v10

    const-string v1, "\u4e5d\u6708"

    aput-object v1, v0, v11

    const-string v1, "\u5341\u6708"

    aput-object v1, v0, v12

    const/16 v1, 0xb

    const-string v13, "\u51ac\u6708"

    aput-object v13, v0, v1

    const/16 v1, 0xc

    const-string v13, "\u814a\u6708"

    aput-object v13, v0, v1

    sput-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->monthInfo:[Ljava/lang/String;

    .line 43
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "\u4e00"

    aput-object v1, v0, v3

    const-string v1, "\u4e8c"

    aput-object v1, v0, v4

    const-string v1, "\u4e09"

    aput-object v1, v0, v5

    const-string v1, "\u56db"

    aput-object v1, v0, v6

    const-string v1, "\u4e94"

    aput-object v1, v0, v7

    const-string v1, "\u516d"

    aput-object v1, v0, v8

    const-string v1, "\u4e03"

    aput-object v1, v0, v9

    const-string v1, "\u516b"

    aput-object v1, v0, v10

    const-string v1, "\u4e5d"

    aput-object v1, v0, v11

    sput-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->dayInfo:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 318
    sput-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->utcCal:Ljava/util/GregorianCalendar;

    return-void

    :array_10e
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data

    :array_23e
    .array-data 4
        0x0
        0x52d8
        0xa5e3
        0xf95c
        0x14d59
        0x1a206
        0x1f763
        0x24d89
        0x2a45d
        0x2fbdf
        0x353d8
        0x3ac35
        0x404af
        0x45d25
        0x4b553
        0x50d19
        0x56446
        0x5bac6
        0x61087
        0x6658a
        0x6b9db
        0x70d90
        0x760cc
        0x7b3b6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized UTC(IIIIII)J
    .registers 16

    const-class v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;

    monitor-enter v0

    .line 360
    :try_start_3
    invoke-static {}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->makeUTCCalendar()V

    .line 361
    sget-object v1, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->utcCal:Ljava/util/GregorianCalendar;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_25

    .line 362
    :try_start_9
    sget-object v2, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->utcCal:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clear()V

    .line 363
    sget-object v3, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->utcCal:Ljava/util/GregorianCalendar;

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 364
    sget-object p0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->utcCal:Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide p0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_22

    monitor-exit v0

    return-wide p0

    :catchall_22
    move-exception p0

    .line 365
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static daysBetween(Ljava/util/Date;Ljava/util/Date;)I
    .registers 8

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 171
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 173
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 174
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 181
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-eqz v3, :cond_2b

    .line 182
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x0

    .line 183
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr v3, p0

    goto :goto_37

    .line 186
    :cond_2b
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x0

    .line 187
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v3, v0

    move-object v0, p0

    :goto_37
    sub-int p0, v2, v1

    .line 190
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge v5, p0, :cond_4a

    .line 192
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    add-int/2addr v3, p0

    .line 194
    invoke-virtual {v0, p1, p1}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_4a
    return v3
.end method

.method public static daysInLunarMonth(II)I
    .registers 3

    .line 312
    sget-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    const/high16 v0, 0x10000

    shr-int p1, v0, p1

    and-int/2addr p0, p1

    if-nez p0, :cond_10

    const/16 p0, 0x1d

    return p0

    :cond_10
    const/16 p0, 0x1e

    return p0
.end method

.method private static getLeapMonth(I)I
    .registers 2

    .line 240
    sget-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static getLeapMonthDays(I)I
    .registers 2

    .line 222
    invoke-static {p0}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getLeapMonth(I)I

    move-result v0

    if-eqz v0, :cond_17

    .line 223
    sget-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    const/high16 v0, 0xf0000

    and-int/2addr p0, v0

    if-nez p0, :cond_14

    const/16 p0, 0x1d

    return p0

    :cond_14
    const/16 p0, 0x1e

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private static getLunarDay(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0xa

    if-ne p0, v0, :cond_7

    .line 249
    const-string p0, "\u521d\u5341"

    return-object p0

    :cond_7
    const/16 v1, 0x14

    if-ne p0, v1, :cond_e

    .line 251
    const-string p0, "\u4e8c\u5341"

    return-object p0

    :cond_e
    const/16 v1, 0x1e

    if-ne p0, v1, :cond_15

    .line 253
    const-string p0, "\u4e09\u5341"

    return-object p0

    .line 257
    :cond_15
    div-int/lit8 v1, p0, 0xa

    if-nez v1, :cond_1c

    .line 259
    const-string v1, "\u521d"

    goto :goto_30

    :cond_1c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 261
    const-string v1, "\u5341"

    goto :goto_30

    :cond_22
    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    .line 263
    const-string v1, "\u5eff"

    goto :goto_30

    :cond_28
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    .line 265
    const-string v1, "\u5345"

    goto :goto_30

    .line 264
    :cond_2e
    const-string v1, ""

    .line 267
    :goto_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->dayInfo:[Ljava/lang/String;

    rem-int/2addr p0, v0

    aget-object p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLunarHoliday(III)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    if-ne p2, v0, :cond_9

    .line 283
    const-string p0, "\u6625\u8282"

    goto/16 :goto_69

    :cond_9
    const/16 v1, 0xf

    if-ne p1, v0, :cond_12

    if-ne p2, v1, :cond_12

    .line 285
    const-string p0, "\u5143\u5bb5\u8282"

    goto :goto_69

    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    if-ne p2, v0, :cond_1a

    .line 287
    const-string p0, "\u9f99\u62ac\u5934"

    goto :goto_69

    :cond_1a
    const/4 v0, 0x5

    if-ne p1, v0, :cond_22

    if-ne p2, v0, :cond_22

    .line 289
    const-string p0, "\u7aef\u5348\u8282"

    goto :goto_69

    :cond_22
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2a

    if-ne p2, v0, :cond_2a

    .line 291
    const-string p0, "\u4e03\u5915"

    goto :goto_69

    :cond_2a
    const/16 v0, 0x8

    if-ne p1, v0, :cond_33

    if-ne p2, v1, :cond_33

    .line 293
    const-string p0, "\u4e2d\u79cb\u8282"

    goto :goto_69

    :cond_33
    const/16 v1, 0x9

    if-ne p1, v1, :cond_3c

    if-ne p2, v1, :cond_3c

    .line 295
    const-string p0, "\u91cd\u9633\u8282"

    goto :goto_69

    :cond_3c
    const/16 v1, 0xc

    if-ne p1, v1, :cond_45

    if-ne p2, v0, :cond_45

    .line 297
    const-string p0, "\u814a\u516b"

    goto :goto_69

    :cond_45
    if-ne p1, v1, :cond_4e

    const/16 v0, 0x17

    if-ne p2, v0, :cond_4e

    .line 299
    const-string p0, "\u5c0f\u5e74"

    goto :goto_69

    :cond_4e
    if-ne p1, v1, :cond_67

    .line 302
    invoke-static {p0, p1}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->daysInLunarMonth(II)I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_5a

    if-eq p2, v1, :cond_64

    .line 303
    :cond_5a
    invoke-static {p0, p1}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->daysInLunarMonth(II)I

    move-result p0

    const/16 p1, 0x1e

    if-ne p0, p1, :cond_67

    if-ne p2, p1, :cond_67

    .line 304
    :cond_64
    const-string p0, "\u9664\u5915"

    goto :goto_69

    .line 308
    :cond_67
    const-string p0, ""

    :goto_69
    return-object p0
.end method

.method private static getLunarMonth(I)Ljava/lang/String;
    .registers 2

    .line 244
    sget-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->monthInfo:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static getMonthDays(II)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1e

    if-ltz p1, :cond_1e

    rsub-int/lit8 p1, p1, 0x10

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 151
    sget-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/2addr p0, p1

    if-nez p0, :cond_1b

    const/16 p0, 0x1d

    return p0

    :cond_1b
    const/16 p0, 0x1e

    return p0

    .line 148
    :cond_1e
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "\u6708\u4efd\u6709\u9519\uff01"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getSolarTermCalendar(II)Ljava/util/Date;
    .registers 10

    add-int/lit16 p0, p0, -0x76c

    int-to-long v0, p0

    const-wide v2, 0x758f07a16L

    mul-long/2addr v0, v2

    .line 338
    sget-object p0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->solarTermInfo:[I

    aget p0, p0, p1

    int-to-long p0, p0

    const-wide/32 v2, 0xea60

    mul-long/2addr p0, v2

    add-long/2addr v0, p0

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/16 v2, 0x76c

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x2

    .line 340
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->UTC(IIIIII)J

    move-result-wide p0

    add-long/2addr v0, p0

    .line 341
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method private static getSolarTermDay(II)I
    .registers 2

    .line 334
    invoke-static {p0, p1}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getSolarTermCalendar(II)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getUTCDay(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static getTermString(III)Ljava/lang/String;
    .registers 4

    mul-int/lit8 p1, p1, 0x2

    .line 325
    invoke-static {p0, p1}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getSolarTermDay(II)I

    move-result v0

    if-ne v0, p2, :cond_d

    .line 326
    sget-object p0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->solarTerm:[Ljava/lang/String;

    aget-object p0, p0, p1

    goto :goto_1c

    :cond_d
    add-int/lit8 p1, p1, 0x1

    .line 327
    invoke-static {p0, p1}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getSolarTermDay(II)I

    move-result p0

    if-ne p0, p2, :cond_1a

    .line 328
    sget-object p0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->solarTerm:[Ljava/lang/String;

    aget-object p0, p0, p1

    goto :goto_1c

    .line 327
    :cond_1a
    const-string p0, ""

    :goto_1c
    return-object p0
.end method

.method private static declared-synchronized getUTCDay(Ljava/util/Date;)I
    .registers 6

    const-class v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;

    monitor-enter v0

    .line 345
    :try_start_3
    invoke-static {}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->makeUTCCalendar()V

    .line 346
    sget-object v1, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->utcCal:Ljava/util/GregorianCalendar;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_24

    .line 347
    :try_start_9
    sget-object v2, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->utcCal:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clear()V

    .line 348
    sget-object v2, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->utcCal:Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 349
    sget-object p0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->utcCal:Ljava/util/GregorianCalendar;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_21

    monitor-exit v0

    return p0

    :catchall_21
    move-exception p0

    .line 350
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getYearDays(I)I
    .registers 5

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_5
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1b

    .line 208
    sget-object v2, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 v3, p0, -0x76c

    aget v2, v2, v3

    const v3, 0xfff0

    and-int/2addr v2, v3

    and-int/2addr v2, v1

    if-eqz v2, :cond_18

    add-int/lit8 v0, v0, 0x1

    :cond_18
    shr-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 212
    :cond_1b
    invoke-static {p0}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getLeapMonthDays(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static makeUTCCalendar()V
    .registers 2

    .line 354
    sget-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->utcCal:Ljava/util/GregorianCalendar;

    if-nez v0, :cond_11

    .line 355
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    sput-object v0, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->utcCal:Ljava/util/GregorianCalendar;

    :cond_11
    return-void
.end method

.method public static solarToLunar(III)[Ljava/lang/String;
    .registers 11

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    const-string v0, "0"

    const/16 v2, 0xa

    if-ge p1, v2, :cond_2b

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3c

    .line 73
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3c
    if-ge p2, v2, :cond_54

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_65

    .line 79
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    :goto_65
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyyMMdd"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 86
    :try_start_6d
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_71
    .catch Ljava/text/ParseException; {:try_start_6d .. :try_end_71} :catch_7a

    .line 87
    :try_start_71
    const-string v0, "19000130"

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2
    :try_end_77
    .catch Ljava/text/ParseException; {:try_start_71 .. :try_end_77} :catch_78

    goto :goto_7f

    :catch_78
    move-exception p1

    goto :goto_7c

    :catch_7a
    move-exception p1

    move-object p0, p2

    .line 89
    :goto_7c
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    .line 92
    :goto_7f
    invoke-static {p2, p0}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->daysBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result p0

    const/4 p1, 0x0

    const/16 p2, 0x76c

    move v0, p1

    :goto_87
    const/16 v2, 0x801

    const/4 v3, 0x1

    if-gt p2, v2, :cond_99

    .line 95
    invoke-static {p2}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getYearDays(I)I

    move-result v0

    sub-int v2, p0, v0

    if-ge v2, v3, :cond_95

    goto :goto_99

    :cond_95
    add-int/lit8 p2, p2, 0x1

    move p0, v2

    goto :goto_87

    .line 104
    :cond_99
    :goto_99
    invoke-static {p2}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getLeapMonth(I)I

    move-result v2

    if-lez v2, :cond_a1

    move v4, v3

    goto :goto_a2

    :cond_a1
    move v4, p1

    :goto_a2
    move v6, p1

    move v5, v3

    :goto_a4
    const/16 v7, 0xc

    if-gt v5, v7, :cond_c7

    add-int/lit8 v7, v2, 0x1

    if-ne v5, v7, :cond_b7

    if-eqz v4, :cond_b7

    .line 115
    invoke-static {p2}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getLeapMonthDays(I)I

    move-result v0

    add-int/lit8 v5, v5, -0x1

    move v4, p1

    move v6, v3

    goto :goto_c0

    .line 121
    :cond_b7
    :try_start_b7
    invoke-static {p2, v5}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getMonthDays(II)I

    move-result v0
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bb} :catch_bc

    goto :goto_c0

    :catch_bc
    move-exception v7

    .line 123
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c0
    sub-int/2addr p0, v0

    if-gtz p0, :cond_c4

    goto :goto_c7

    :cond_c4
    add-int/lit8 v5, v5, 0x1

    goto :goto_a4

    :cond_c7
    :goto_c7
    add-int/2addr p0, v0

    const/4 v0, 0x3

    .line 135
    new-array v0, v0, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v5, v2, :cond_d4

    move v2, v3

    goto :goto_d5

    :cond_d4
    move v2, p1

    :goto_d5
    and-int/2addr v2, v6

    if-eqz v2, :cond_da

    const-string v1, "\u95f0"

    :cond_da
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getLunarMonth(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 136
    invoke-static {p0}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getLunarDay(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const/4 p1, 0x2

    invoke-static {p2, v5, p0}, Lcom/keephealth/android/views/calendarview/utils/LunarUtil;->getLunarHoliday(III)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    return-object v0
.end method
