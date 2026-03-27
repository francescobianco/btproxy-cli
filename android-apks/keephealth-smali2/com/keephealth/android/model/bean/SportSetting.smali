.class public Lcom/keephealth/android/model/bean/SportSetting;
.super Ljava/lang/Object;
.source "SportSetting.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mapSource:I

.field public tipValueUnit:Ljava/lang/String;

.field public tipsState:I

.field public tipsType:I

.field public tipsValue:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/keephealth/android/model/bean/SportSetting;->mapSource:I

    .line 24
    iput v0, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsState:I

    .line 28
    iput v0, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsType:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 32
    iput v0, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsValue:F

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipValueUnit:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/keephealth/android/model/bean/SportSetting;
    .registers 3

    .line 37
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SPORT_SETTING"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/SportSetting;

    if-nez v0, :cond_14

    .line 38
    new-instance v0, Lcom/keephealth/android/model/bean/SportSetting;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/SportSetting;-><init>()V

    :cond_14
    return-object v0
.end method


# virtual methods
.method public getMapSource()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/keephealth/android/model/bean/SportSetting;->mapSource:I

    return v0
.end method

.method public getTipsState()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsState:I

    return v0
.end method

.method public getTipsType()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsType:I

    return v0
.end method

.method public getTipsValue()F
    .registers 2

    .line 66
    iget v0, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsValue:F

    return v0
.end method

.method public getUnit()Ljava/lang/String;
    .registers 3

    .line 74
    iget v0, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsType:I

    if-nez v0, :cond_14

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100775

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_14
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100771

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMapSource(I)V
    .registers 2

    .line 46
    iput p1, p0, Lcom/keephealth/android/model/bean/SportSetting;->mapSource:I

    return-void
.end method

.method public setTipsState(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsState:I

    return-void
.end method

.method public setTipsType(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsType:I

    return-void
.end method

.method public setTipsValue(I)V
    .registers 2

    int-to-float p1, p1

    .line 70
    iput p1, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsValue:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SportSetting{mapSource="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/model/bean/SportSetting;->mapSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tipsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tipsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tipsValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/SportSetting;->tipsValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
