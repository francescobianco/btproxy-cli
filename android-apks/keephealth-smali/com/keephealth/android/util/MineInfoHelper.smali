.class public Lcom/keephealth/android/util/MineInfoHelper;
.super Ljava/lang/Object;
.source "MineInfoHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compluteHeight(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0xfa

    .line 55
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    const/4 v0, 0x0

    .line 56
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 58
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 59
    invoke-static {p0}, Lcom/keephealth/android/util/UnitFormat;->cm2inch(I)[I

    move-result-object p0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v0, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4e

    .line 63
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "cm"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4e
    return-object p0
.end method

.method public static compluteWeight(I)Ljava/lang/String;
    .registers 1

    .line 44
    const-string p0, ""

    return-object p0
.end method

.method public static getCurrentUserBean()Lcom/keephealth/android/model/bean/UserBean;
    .registers 1

    .line 84
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    return-object v0
.end method

.method public static resolverBirthday(Ljava/lang/String;Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 4

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 100
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 101
    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/NumUtil;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setYear(I)V

    .line 102
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2b

    .line 103
    aget-object v0, p0, v1

    invoke-static {v0}, Lcom/keephealth/android/util/NumUtil;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setMonth(I)V

    .line 105
    :cond_2b
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3c

    .line 106
    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/NumUtil;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/keephealth/android/model/bean/UserBean;->setDay(I)V

    :cond_3c
    return-void
.end method

.method public static resolverHeight(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 2

    .line 116
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->cm2inchs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/model/bean/UserBean;->setHeightLb(F)V

    return-void
.end method

.method public static resolverWeight(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 2

    .line 124
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/model/bean/UserBean;->setWeightLb(F)V

    .line 125
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->kg2st(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/model/bean/UserBean;->setWeightSt(I)V

    return-void
.end method

.method public static saveHeight(I)V
    .registers 2

    .line 92
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p0}, Lcom/keephealth/android/model/bean/UserBean;->setHeight(I)V

    .line 94
    invoke-static {v0}, Lcom/keephealth/android/util/MineInfoHelper;->saveUserInfo(Lcom/keephealth/android/model/bean/UserBean;)V

    return-void
.end method

.method public static saveSex(I)V
    .registers 2

    .line 72
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Lcom/keephealth/android/model/bean/UserBean;->setGender(I)V

    .line 81
    invoke-static {v0}, Lcom/keephealth/android/util/MineInfoHelper;->saveUserInfo(Lcom/keephealth/android/model/bean/UserBean;)V

    return-void
.end method

.method public static saveUserInfo(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 3

    .line 69
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "USER_INFO_KEY"

    invoke-static {p0}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static saveYear(I)V
    .registers 2

    .line 87
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p0}, Lcom/keephealth/android/model/bean/UserBean;->setYear(I)V

    .line 89
    invoke-static {v0}, Lcom/keephealth/android/util/MineInfoHelper;->saveUserInfo(Lcom/keephealth/android/model/bean/UserBean;)V

    return-void
.end method
