.class public Lcom/keephealth/android/util/CalculateStress;
.super Ljava/lang/Object;
.source "CalculateStress.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateStress(I)I
    .registers 4

    const/16 v0, 0x28

    if-ge p0, v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/16 v1, 0x45

    if-ge p0, v1, :cond_d

    add-int/lit8 p0, p0, -0x27

    return p0

    :cond_d
    const/16 v1, 0x50

    if-ge p0, v1, :cond_14

    add-int/lit8 p0, p0, -0x27

    return p0

    :cond_14
    const/16 v2, 0x64

    if-ge p0, v2, :cond_1e

    sub-int/2addr p0, v1

    .line 22
    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x32

    return p0

    :cond_1e
    const/16 v2, 0x78

    if-ge p0, v2, :cond_24

    sub-int/2addr p0, v0

    return p0

    :cond_24
    const/16 v0, 0xc8

    if-ge p0, v0, :cond_2e

    sub-int/2addr p0, v2

    mul-int/lit8 p0, p0, 0x13

    .line 26
    div-int/2addr p0, v1

    add-int/2addr p0, v1

    return p0

    :cond_2e
    const/16 p0, 0x63

    return p0
.end method

.method public static stressStatus(I)Ljava/lang/String;
    .registers 4

    .line 33
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/16 v1, 0x1d

    if-gt p0, v1, :cond_2c

    if-lez p0, :cond_2c

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1004e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const/16 v1, 0x1e

    const/16 v2, 0x3c

    if-lt p0, v1, :cond_55

    if-ge p0, v2, :cond_55

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10045d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_55
    if-lt p0, v2, :cond_7c

    const/16 v1, 0x50

    if-ge p0, v1, :cond_7c

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100440

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 42
    :cond_7c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10032b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
