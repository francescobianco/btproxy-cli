.class public Lcom/keephealth/android/views/calendarview/utils/SolarUtil;
.super Ljava/lang/Object;
.source "SolarUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chingMingDay(II)Ljava/lang/String;
    .registers 10

    .line 105
    const-string v0, ""

    const/4 v1, 0x4

    if-lt p1, v1, :cond_35

    const/4 v2, 0x6

    if-gt p1, v2, :cond_35

    const/16 v2, 0x7cf

    .line 106
    const-string v3, "\u6e05\u660e\u8282"

    const-wide v4, 0x3fcf0068db8bac71L    # 0.2422

    if-gt p0, v2, :cond_24

    add-int/lit16 p0, p0, -0x76c

    int-to-double v6, p0

    mul-double/2addr v6, v4

    const-wide v4, 0x40165c28f5c28f5cL    # 5.59

    add-double/2addr v6, v4

    .line 107
    div-int/2addr p0, v1

    int-to-double v1, p0

    sub-double/2addr v6, v1

    double-to-int p0, v6

    if-ne p0, p1, :cond_35

    goto :goto_34

    :cond_24
    add-int/lit16 p0, p0, -0x7d0

    int-to-double v6, p0

    mul-double/2addr v6, v4

    const-wide v4, 0x40133d70a3d70a3dL    # 4.81

    add-double/2addr v6, v4

    .line 112
    div-int/2addr p0, v1

    int-to-double v1, p0

    sub-double/2addr v6, v1

    double-to-int p0, v6

    if-ne p0, p1, :cond_35

    :goto_34
    move-object v0, v3

    :cond_35
    return-object v0
.end method

.method public static getFirstWeekOfMonth(II)I
    .registers 4

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 163
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/Calendar;->set(III)V

    const/4 p0, 0x7

    .line 164
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v1

    return p0
.end method

.method public static getMonthDays(II)I
    .registers 2

    packed-switch p1, :pswitch_data_1e

    const/4 p0, -0x1

    return p0

    :pswitch_5
    const/16 p0, 0x1e

    return p0

    .line 144
    :pswitch_8
    rem-int/lit8 p1, p0, 0x4

    if-nez p1, :cond_10

    rem-int/lit8 p1, p0, 0x64

    if-nez p1, :cond_14

    :cond_10
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_17

    :cond_14
    const/16 p0, 0x1d

    return p0

    :cond_17
    const/16 p0, 0x1c

    return p0

    :pswitch_1a
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_8
        :pswitch_1a
        :pswitch_5
        :pswitch_1a
        :pswitch_5
        :pswitch_1a
        :pswitch_1a
        :pswitch_5
        :pswitch_1a
        :pswitch_5
        :pswitch_1a
    .end packed-switch
.end method

.method public static getSolarHoliday(III)Ljava/lang/String;
    .registers 9

    int-to-double v0, p1

    const/16 v2, 0xa

    if-lt p2, v2, :cond_8

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    goto :goto_a

    :cond_8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_a
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 17
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    int-to-double v2, p2

    add-double/2addr v0, v2

    double-to-int v0, v0

    sparse-switch v0, :sswitch_data_72

    .line 19
    const-string v0, ""

    goto :goto_49

    .line 66
    :sswitch_1a
    const-string v0, "\u5723\u8bde\u8282"

    goto :goto_49

    .line 64
    :sswitch_1d
    const-string v0, "\u5e73\u5b89\u591c"

    goto :goto_49

    .line 61
    :sswitch_20
    const-string v0, "\u5149\u68cd\u8282"

    goto :goto_49

    .line 55
    :sswitch_23
    const-string v0, "\u6559\u5e08\u8282"

    goto :goto_49

    .line 43
    :sswitch_26
    const-string v0, "\u62a4\u58eb\u8282"

    goto :goto_49

    .line 31
    :sswitch_29
    const-string v0, "\u690d\u6811\u8282"

    goto :goto_49

    .line 25
    :sswitch_2c
    const-string v0, "\u60c5\u4eba\u8282"

    goto :goto_49

    .line 58
    :sswitch_2f
    const-string v0, "\u56fd\u5e86\u8282"

    goto :goto_49

    .line 52
    :sswitch_32
    const-string v0, "\u5efa\u519b\u8282"

    goto :goto_49

    .line 49
    :sswitch_35
    const-string v0, "\u5efa\u515a\u8282"

    goto :goto_49

    .line 46
    :sswitch_38
    const-string v0, "\u513f\u7ae5\u8282"

    goto :goto_49

    .line 40
    :sswitch_3b
    const-string v0, "\u9752\u5e74\u8282"

    goto :goto_49

    .line 37
    :sswitch_3e
    const-string v0, "\u52b3\u52a8\u8282"

    goto :goto_49

    .line 34
    :sswitch_41
    const-string v0, "\u611a\u4eba\u8282"

    goto :goto_49

    .line 28
    :sswitch_44
    const-string v0, "\u5987\u5973\u8282"

    goto :goto_49

    .line 22
    :sswitch_47
    const-string v0, "\u5143\u65e6"

    .line 70
    :goto_49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    return-object v0

    :cond_50
    const/4 v1, 0x4

    if-ne p1, v1, :cond_58

    .line 75
    invoke-static {p0, p2}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->chingMingDay(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_71

    :cond_58
    const/4 v1, 0x5

    if-ne p1, v1, :cond_65

    const/4 v1, 0x1

    .line 77
    invoke-static {p0, p1, v1}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->motherFatherDay(III)I

    move-result p0

    if-ne p2, p0, :cond_71

    .line 78
    const-string v0, "\u6bcd\u4eb2\u8282"

    goto :goto_71

    :cond_65
    const/4 v1, 0x6

    if-ne p1, v1, :cond_71

    const/4 v1, 0x2

    .line 81
    invoke-static {p0, p1, v1}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->motherFatherDay(III)I

    move-result p0

    if-ne p2, p0, :cond_71

    .line 82
    const-string v0, "\u7236\u4eb2\u8282"

    :cond_71
    :goto_71
    return-object v0

    :sswitch_data_72
    .sparse-switch
        0xb -> :sswitch_47
        0x26 -> :sswitch_44
        0x29 -> :sswitch_41
        0x33 -> :sswitch_3e
        0x36 -> :sswitch_3b
        0x3d -> :sswitch_38
        0x47 -> :sswitch_35
        0x51 -> :sswitch_32
        0x65 -> :sswitch_2f
        0xd6 -> :sswitch_2c
        0x138 -> :sswitch_29
        0x200 -> :sswitch_26
        0x38e -> :sswitch_23
        0x457 -> :sswitch_20
        0x4c8 -> :sswitch_1d
        0x4c9 -> :sswitch_1a
    .end sparse-switch
.end method

.method private static motherFatherDay(III)I
    .registers 3

    add-int/lit8 p1, p1, -0x1

    .line 98
    invoke-static {p0, p1}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getFirstWeekOfMonth(II)I

    move-result p0

    const/4 p1, 0x7

    if-nez p0, :cond_a

    move p0, p1

    :cond_a
    rsub-int/lit8 p0, p0, 0x8

    mul-int/2addr p2, p1

    add-int/2addr p0, p2

    return p0
.end method
