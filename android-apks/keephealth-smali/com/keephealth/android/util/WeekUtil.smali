.class public Lcom/keephealth/android/util/WeekUtil;
.super Ljava/lang/Object;
.source "WeekUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDayOfMonth()I
    .registers 2

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDayOfWeek()I
    .registers 2

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getMonthOfYear()I
    .registers 2

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getOffsetIndex(Lcom/keephealth/android/model/bean/WeekMonthYearEnum;)I
    .registers 4

    .line 91
    sget-object v0, Lcom/keephealth/android/util/WeekUtil$1;->$SwitchMap$com$keephealth$android$model$bean$WeekMonthYearEnum:[I

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p0, v1, :cond_1f

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    goto :goto_3e

    .line 111
    :cond_13
    invoke-static {}, Lcom/keephealth/android/util/WeekUtil;->getMonthOfYear()I

    move-result p0

    add-int/lit8 v2, p0, -0x1

    goto :goto_3e

    .line 108
    :cond_1a
    invoke-static {}, Lcom/keephealth/android/util/WeekUtil;->getDayOfMonth()I

    move-result v2

    goto :goto_3e

    .line 93
    :cond_1f
    const-string p0, "WEEK_START_INDEX"

    invoke-static {p0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getWeekStartIndex(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_38

    if-eq p0, v1, :cond_32

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2d

    goto :goto_3e

    .line 97
    :cond_2d
    invoke-static {}, Lcom/keephealth/android/util/WeekUtil;->getDayOfWeek()I

    move-result p0

    goto :goto_3d

    .line 103
    :cond_32
    invoke-static {}, Lcom/keephealth/android/util/WeekUtil;->getDayOfWeek()I

    move-result p0

    sub-int/2addr p0, v0

    goto :goto_3d

    .line 100
    :cond_38
    invoke-static {}, Lcom/keephealth/android/util/WeekUtil;->getDayOfWeek()I

    move-result p0

    sub-int/2addr p0, v1

    :goto_3d
    move v2, p0

    :goto_3e
    return v2
.end method

.method public static getSelectWeeks(II[Z)[Z
    .registers 7

    if-eqz p2, :cond_3c

    .line 222
    array-length v0, p2

    if-lez v0, :cond_3c

    .line 223
    array-length v0, p2

    new-array v1, v0, [Z

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    if-lez p0, :cond_22

    :goto_c
    if-ge p1, v0, :cond_3a

    if-ge p1, p0, :cond_19

    .line 228
    array-length v2, p2

    sub-int v3, p0, p1

    sub-int/2addr v2, v3

    aget-boolean v3, p2, p1

    aput-boolean v3, v1, v2

    goto :goto_1f

    :cond_19
    sub-int v2, p1, p0

    .line 230
    aget-boolean v3, p2, p1

    aput-boolean v3, v1, v2

    :goto_1f
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_22
    if-gez p0, :cond_3b

    :goto_24
    if-ge p1, v0, :cond_3a

    neg-int v2, p0

    if-ge p1, v2, :cond_31

    .line 236
    array-length v2, p2

    add-int/2addr v2, p1

    add-int/2addr v2, p0

    aget-boolean v2, p2, v2

    aput-boolean v2, v1, p1

    goto :goto_37

    :cond_31
    add-int v2, p1, p0

    .line 238
    aget-boolean v2, p2, v2

    aput-boolean v2, v1, p1

    :goto_37
    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_3a
    move-object p2, v1

    :cond_3b
    return-object p2

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSelectWeeksByWeekStartIndex()[Z
    .registers 4

    const/4 v0, 0x7

    .line 148
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_c

    const/4 v3, 0x1

    .line 150
    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-object v1
.end method

.method public static getSelectWeeksByWeekStartIndex(I)[Z
    .registers 8

    const/4 v0, 0x7

    .line 162
    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_35

    const/4 v4, 0x1

    if-eqz p0, :cond_28

    const/4 v5, 0x6

    if-eq p0, v4, :cond_1d

    const/4 v6, 0x2

    if-eq p0, v6, :cond_11

    goto :goto_32

    :cond_11
    const/4 v6, 0x5

    if-eq v3, v6, :cond_1a

    if-ne v3, v5, :cond_17

    goto :goto_1a

    .line 183
    :cond_17
    aput-boolean v4, v1, v3

    goto :goto_32

    .line 181
    :cond_1a
    :goto_1a
    aput-boolean v2, v1, v3

    goto :goto_32

    :cond_1d
    if-eqz v3, :cond_25

    if-ne v3, v5, :cond_22

    goto :goto_25

    .line 176
    :cond_22
    aput-boolean v4, v1, v3

    goto :goto_32

    .line 174
    :cond_25
    :goto_25
    aput-boolean v2, v1, v3

    goto :goto_32

    :cond_28
    if-eqz v3, :cond_30

    if-ne v3, v4, :cond_2d

    goto :goto_30

    .line 169
    :cond_2d
    aput-boolean v4, v1, v3

    goto :goto_32

    .line 167
    :cond_30
    :goto_30
    aput-boolean v2, v1, v3

    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_35
    return-object v1
.end method

.method public static getWeekStr([Z[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 126
    const-string v0, ""

    const/4 v1, 0x0

    move-object v2, v0

    :goto_4
    array-length v3, p0

    if-ge v1, v3, :cond_30

    .line 127
    aget-boolean v3, p0, v1

    if-eqz v3, :cond_2d

    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 130
    aget-object v2, p1, v1

    goto :goto_2d

    .line 132
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 137
    :cond_30
    const-string p0, "\u65e5,\u4e00,\u4e8c,\u4e09,\u56db,\u4e94,\u516d"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    const-string p0, "\u4e00,\u4e8c,\u4e09,\u56db,\u4e94,\u516d,\u65e5"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    const-string p0, "\u516d,\u65e5,\u4e00,\u4e8c,\u4e09,\u56db,\u4e94"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 138
    :cond_48
    const-string v2, "\u6bcf\u5929"

    :cond_4a
    return-object v2
.end method

.method public static getWeeksByWeekStartDay(Landroid/content/Context;I)[Ljava/lang/String;
    .registers 6

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 31
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_27

    .line 33
    :goto_12
    array-length p1, p0

    if-ge v1, p1, :cond_4c

    if-nez v1, :cond_1e

    .line 35
    array-length p1, p0

    sub-int/2addr p1, v2

    aget-object p1, p0, p1

    aput-object p1, v0, v1

    goto :goto_24

    :cond_1e
    add-int/lit8 p1, v1, -0x1

    .line 37
    aget-object p1, p0, p1

    aput-object p1, v0, v1

    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_27
    if-ne p1, v2, :cond_33

    .line 41
    :goto_29
    array-length p1, p0

    if-ge v1, p1, :cond_4c

    .line 42
    aget-object p1, p0, v1

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_33
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4c

    move p1, v1

    .line 45
    :goto_37
    array-length v3, p0

    if-ge p1, v3, :cond_4c

    .line 46
    array-length v3, p0

    sub-int/2addr v3, v2

    if-ne p1, v3, :cond_43

    .line 47
    aget-object v3, p0, v1

    aput-object v3, v0, p1

    goto :goto_49

    :cond_43
    add-int/lit8 v3, p1, 0x1

    .line 49
    aget-object v3, p0, v3

    aput-object v3, v0, p1

    :goto_49
    add-int/lit8 p1, p1, 0x1

    goto :goto_37

    :cond_4c
    return-object v0
.end method
