.class public Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateToMillis([I)J
    .registers 10

    .line 213
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    move v5, v1

    goto :goto_a

    :cond_7
    aget v0, p0, v2

    move v5, v0

    .line 214
    :goto_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x0

    .line 215
    aget v3, p0, v2

    aget p0, p0, v1

    add-int/lit8 v4, p0, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 216
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static dateToPosition(IIII)I
    .registers 4

    sub-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0xc

    add-int/2addr p0, p1

    sub-int/2addr p0, p3

    return p0
.end method

.method public static getCurrentDate()[I
    .registers 4

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    filled-new-array {v2, v3, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public static getDateBean(III)Lcom/keephealth/android/views/calendarview/bean/DateBean;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-static {p0, p1, p2, v0, v1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->initDateBean(IIIILjava/util/Map;)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object p0

    return-object p0
.end method

.method public static getMonthDate(IILjava/util/Map;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/DateBean;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v1, p1, -0x1

    .line 27
    invoke-static {p0, v1}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getFirstWeekOfMonth(II)I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x1

    if-ne p1, v4, :cond_14

    add-int/lit8 v1, p0, -0x1

    move v5, v3

    goto :goto_16

    :cond_14
    move v5, v1

    move v1, p0

    .line 38
    :goto_16
    invoke-static {v1, v5}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result v6

    .line 40
    invoke-static {p0, p1}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result v7

    if-ne p1, v3, :cond_24

    add-int/lit8 v3, p0, 0x1

    move v8, v4

    goto :goto_28

    :cond_24
    add-int/lit8 v3, p1, 0x1

    move v8, v3

    move v3, p0

    :goto_28
    const/4 v9, 0x0

    move v10, v9

    :goto_2a
    if-ge v10, v2, :cond_3a

    sub-int v11, v6, v2

    add-int/2addr v11, v4

    add-int/2addr v11, v10

    .line 53
    invoke-static {v1, v5, v11, v9, p2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->initDateBean(IIIILjava/util/Map;)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    :cond_3a
    move v1, v9

    :goto_3b
    if-ge v1, v7, :cond_47

    add-int/lit8 v1, v1, 0x1

    .line 57
    invoke-static {p0, p1, v1, v4, p2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->initDateBean(IIIILjava/util/Map;)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 60
    :cond_47
    :goto_47
    invoke-static {p0, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getMonthRows(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v1, v7

    sub-int/2addr v1, v2

    if-ge v9, v1, :cond_5c

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x2

    .line 61
    invoke-static {v3, v8, v9, v1, p2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->initDateBean(IIIILjava/util/Map;)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_5c
    return-object v0
.end method

.method public static getMonthRows(II)I
    .registers 3

    add-int/lit8 v0, p1, -0x1

    .line 115
    invoke-static {p0, v0}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getFirstWeekOfMonth(II)I

    move-result v0

    invoke-static {p0, p1}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 116
    rem-int/lit8 p0, v0, 0x7

    div-int/lit8 v0, v0, 0x7

    if-nez p0, :cond_12

    goto :goto_14

    :cond_12
    add-int/lit8 v0, v0, 0x1

    :goto_14
    const/4 p0, 0x4

    if-ne v0, p0, :cond_18

    const/4 v0, 0x5

    :cond_18
    return v0
.end method

.method public static getNextDate(III)[I
    .registers 5

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 174
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p1, v1

    const/4 p0, 0x2

    .line 175
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 176
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 177
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    filled-new-array {p2, p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static getNextMonth(III)[I
    .registers 5

    .line 182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 183
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p1, v1

    const/4 p0, 0x2

    .line 184
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 185
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 186
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    filled-new-array {p2, p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static getPreDate(III)[I
    .registers 5

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p1, v1

    const/4 p0, 0x2

    .line 166
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 167
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, -0x1

    .line 168
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 169
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    filled-new-array {p2, p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static getPreMonth(III)[I
    .registers 5

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 192
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p1, v1

    const/4 p0, 0x2

    .line 193
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 194
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, -0x1

    .line 195
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->add(II)V

    .line 196
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    filled-new-array {p2, p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static getPxSize(Landroid/content/Context;I)I
    .registers 2

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr p1, p0

    return p1
.end method

.method public static getTextSize(Landroid/content/Context;I)I
    .registers 3

    int-to-float p1, p1

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getTextSize1(Landroid/content/Context;I)I
    .registers 2

    int-to-float p1, p1

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static initDateBean(IIIILjava/util/Map;)Lcom/keephealth/android/views/calendarview/bean/DateBean;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/keephealth/android/views/calendarview/bean/DateBean;"
        }
    .end annotation

    .line 68
    new-instance p4, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 69
    invoke-virtual {p4, p0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 70
    invoke-virtual {p4, p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 71
    invoke-virtual {p4, p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    sub-int/2addr p1, v1

    .line 74
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 75
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    const/4 p1, 0x0

    .line 76
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 77
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 78
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 79
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-virtual {p4, p0, p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDate(J)V

    .line 92
    invoke-virtual {p4, p3}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setType(I)V

    return-object p4
.end method

.method public static positionToDate(III)[I
    .registers 4

    .line 130
    div-int/lit8 v0, p0, 0xc

    add-int/2addr v0, p1

    const/16 p1, 0xc

    .line 131
    rem-int/2addr p0, p1

    add-int/2addr p0, p2

    if-le p0, p1, :cond_d

    .line 135
    rem-int/lit8 p0, p0, 0xc

    add-int/lit8 v0, v0, 0x1

    .line 139
    :cond_d
    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static strToArray(Ljava/lang/String;)[I
    .registers 4

    .line 201
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 202
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 203
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 204
    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 205
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    return-object v0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method
