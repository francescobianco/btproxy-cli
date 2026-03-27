.class public Lcom/keephealth/android/util/AlarmUtil;
.super Ljava/lang/Object;
.source "AlarmUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlarmSupportTypes()[I
    .registers 9

    const/16 v0, 0x8

    .line 138
    new-array v1, v0, [Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput-object v3, v1, v2

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const/4 v5, 0x3

    .line 139
    aput-object v3, v1, v5

    const/4 v5, 0x4

    aput-object v3, v1, v5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    const/4 v5, 0x6

    aput-object v3, v1, v5

    const/4 v5, 0x7

    aput-object v3, v1, v5

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v5, v4

    .line 141
    :goto_28
    const-string v6, ","

    if-ge v5, v0, :cond_5f

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u95f9\u949f\u7c7b\u578b\uff0c\u662f\u5426\u652f\u6301\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v1, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 143
    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 147
    :cond_5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u6301\u7684\u7c7b\u578b="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    array-length v1, v0

    new-array v1, v1, [I

    .line 152
    :goto_89
    array-length v2, v0

    if-ge v4, v2, :cond_9b

    .line 153
    aget-object v2, v0, v4

    invoke-static {v2}, Lcom/keephealth/android/util/NumUtil;->isEmptyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    :cond_9b
    return-object v1
.end method

.method public static getAlarmText(Landroid/app/Activity;)[Ljava/lang/String;
    .registers 5

    .line 22
    invoke-static {p0}, Lcom/keephealth/android/util/AlarmUtil;->getAlarmTexts(Landroid/app/Activity;)[Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {}, Lcom/keephealth/android/util/AlarmUtil;->getAlarmSupportTypes()[I

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alarmSupportTypes\u957f\u5ea6\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 28
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 29
    :goto_1f
    array-length v3, v0

    if-ge v2, v3, :cond_2b

    .line 30
    aget v3, v0, v2

    aget-object v3, p0, v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2b
    return-object v1
.end method

.method public static getAlarmTexts(Landroid/app/Activity;)[Ljava/lang/String;
    .registers 2

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setAlarmIcon(I)I
    .registers 1

    packed-switch p0, :pswitch_data_28

    const p0, 0x7f0d0002

    return p0

    :pswitch_7
    const p0, 0x7f0d0034

    return p0

    :pswitch_b
    const p0, 0x7f0d0036

    return p0

    :pswitch_f
    const p0, 0x7f0d003a

    return p0

    :pswitch_13
    const p0, 0x7f0d0035

    return p0

    :pswitch_17
    const p0, 0x7f0d0037

    return p0

    :pswitch_1b
    const p0, 0x7f0d0039

    return p0

    :pswitch_1f
    const p0, 0x7f0d0038

    return p0

    :pswitch_23
    const p0, 0x7f0d003b

    return p0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method public static setAlarmIcon(Landroid/app/Activity;Ljava/lang/String;)I
    .registers 4

    .line 91
    invoke-static {p0}, Lcom/keephealth/android/util/AlarmUtil;->getAlarmTexts(Landroid/app/Activity;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 92
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const p0, 0x7f0d003b

    return p0

    .line 94
    :cond_11
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const p0, 0x7f0d0038

    return p0

    .line 96
    :cond_1d
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const p0, 0x7f0d0039

    return p0

    .line 98
    :cond_29
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const p0, 0x7f0d0037

    return p0

    .line 100
    :cond_35
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const p0, 0x7f0d0035

    return p0

    .line 102
    :cond_41
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const p0, 0x7f0d003a

    return p0

    .line 104
    :cond_4d
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    const p0, 0x7f0d0036

    return p0

    .line 106
    :cond_59
    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    const p0, 0x7f0d0034

    return p0

    :cond_65
    const p0, 0x7f0d0002

    return p0
.end method

.method public static setAlaryTypeIdByAlarmText(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 p0, -0x1

    const/4 v0, 0x0

    .line 76
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 77
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move p0, v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    return p0
.end method
