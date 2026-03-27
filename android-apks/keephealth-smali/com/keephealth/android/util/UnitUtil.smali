.class public Lcom/keephealth/android/util/UnitUtil;
.super Ljava/lang/Object;
.source "UnitUtil.java"


# static fields
.field public static final KG_UNIT:F = 0.4535924f

.field public static final POUND_UNIT:F = 2.2046225f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cm2inch(I)[I
    .registers 5

    const/4 v0, 0x2

    .line 78
    new-array v0, v0, [I

    .line 79
    invoke-static {p0}, Lcom/keephealth/android/util/UnitUtil;->cm2inchs(I)I

    move-result p0

    const/4 v1, 0x1

    aput p0, v0, v1

    .line 80
    div-int/lit8 v2, p0, 0xc

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 81
    rem-int/lit8 p0, p0, 0xc

    aput p0, v0, v1

    return-object v0
.end method

.method public static cm2inchs(I)I
    .registers 2

    int-to-float p0, p0

    const v0, 0x3ec99327

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static ft2in(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public static getKg2Pound(F)F
    .registers 2

    const v0, 0x400d1889

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getKg2St(F)F
    .registers 2

    const v0, 0x3e20c49c    # 0.157f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getKm2mile(F)D
    .registers 3

    .line 225
    invoke-static {p0}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method public static getMode()I
    .registers 1

    .line 292
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v0

    return v0
.end method

.method public static getPaceInt(II)I
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 317
    :cond_4
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_16

    int-to-float p0, p0

    mul-float/2addr p0, v1

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_16
    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-double v0, p0

    int-to-float p0, p1

    .line 320
    invoke-static {p0}, Lcom/keephealth/android/util/UnitUtil;->getKm2mile(F)D

    move-result-wide p0

    div-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method

.method public static getPaceStr(II)Ljava/lang/String;
    .registers 2

    .line 330
    invoke-static {p0, p1}, Lcom/keephealth/android/util/UnitUtil;->getPaceInt(II)I

    move-result p0

    invoke-static {p0}, Lcom/keephealth/android/util/DateUtil;->computeTimeMS(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPound2Kg(F)F
    .registers 2

    const v0, 0x3ee83d43

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getPound2St(F)F
    .registers 2

    const v0, 0x3d8f5c29    # 0.07f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getSt2Kg(F)F
    .registers 2

    const v0, 0x40cb3333    # 6.35f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getSt2Lb(F)F
    .registers 2

    const/high16 v0, 0x41600000    # 14.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getUnit(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    .line 208
    invoke-static {p0}, Lcom/keephealth/android/util/UnitUtil;->getUnitByType(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUnitByType()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    .line 197
    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->getUnitByType(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnitByType(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    .line 184
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 185
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100771

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    .line 187
    :cond_1a
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100774

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_29
    return-object p0
.end method

.method public static getUnitByType(Landroid/app/Activity;I)Ljava/lang/String;
    .registers 2

    .line 175
    invoke-static {p0}, Lcom/keephealth/android/util/UnitUtil;->getUnitByType(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUnitStr()Ljava/lang/String;
    .registers 2

    .line 337
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100771

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v1

    if-nez v1, :cond_28

    .line 339
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100774

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_28
    return-object v0
.end method

.method public static getUnitStr(II)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_7

    .line 304
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 306
    :cond_7
    invoke-static {p0}, Lcom/keephealth/android/util/UnitUtil;->inch2inch(I)[I

    move-result-object p0

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v0, 0x1

    aget p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWeight(Ljava/lang/String;)F
    .registers 3

    .line 264
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/NumUtil;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getmile2Km(F)F
    .registers 1

    .line 241
    invoke-static {p0}, Lcom/keephealth/android/util/UnitUtil;->mile2km(F)F

    move-result p0

    return p0
.end method

.method public static inch2cm(I)I
    .registers 2

    int-to-float p0, p0

    const v0, 0x3ec99327

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static inch2cm([I)I
    .registers 4

    const/4 v0, 0x0

    .line 46
    aget v0, p0, v0

    mul-int/lit8 v0, v0, 0xc

    const/4 v1, 0x1

    aget v2, p0, v1

    add-int/2addr v0, v2

    aput v0, p0, v1

    int-to-float p0, v0

    const v0, 0x3ec99327

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static inch2inch([I)I
    .registers 3

    const/4 v0, 0x0

    .line 58
    aget v0, p0, v0

    mul-int/lit8 v0, v0, 0xc

    const/4 v1, 0x1

    aget p0, p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public static inch2inch(I)[I
    .registers 2

    .line 62
    div-int/lit8 v0, p0, 0xc

    rem-int/lit8 p0, p0, 0xc

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static inchs2cm(I)I
    .registers 2

    int-to-float p0, p0

    const v0, 0x3ec99327

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static kg2lb(F)F
    .registers 2

    const v0, 0x400d1889

    mul-float/2addr p0, v0

    return p0
.end method

.method public static kg2st(I)I
    .registers 5

    int-to-double v0, p0

    const-wide v2, 0x3fc4189374bc6a7fL    # 0.157

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public static km2mile(F)F
    .registers 2

    const v0, 0x3f1f121b

    mul-float/2addr p0, v0

    return p0
.end method

.method public static lb2kg(F)F
    .registers 2

    const v0, 0x3ee83d43

    mul-float/2addr p0, v0

    return p0
.end method

.method public static lb2kgfloat(F)F
    .registers 2

    const v0, 0x3ee83d43

    mul-float/2addr p0, v0

    return p0
.end method

.method public static lb2st(I)I
    .registers 5

    int-to-double v0, p0

    const-wide v2, 0x3fb22d0e56041893L    # 0.071

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public static mile2km(F)F
    .registers 2

    const v0, 0x3fcdfefc

    mul-float/2addr p0, v0

    return p0
.end method

.method public static newCm2inch([I)I
    .registers 3

    const/4 v0, 0x0

    .line 37
    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    add-int/2addr v0, p0

    int-to-float p0, v0

    const v0, 0x40411a7c

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static newInch2cm([I)I
    .registers 1

    .line 27
    invoke-static {p0}, Lcom/keephealth/android/util/UnitUtil;->inch2cm([I)I

    move-result p0

    return p0
.end method

.method public static st2kg(I)I
    .registers 5

    int-to-double v0, p0

    const-wide v2, 0x4019666666666666L    # 6.35

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public static st2lb(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0xe

    return p0
.end method
