.class public Lcom/keephealth/android/model/bean/VersionBean;
.super Ljava/lang/Object;
.source "VersionBean.java"


# instance fields
.field private upgradeType:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUpgradeType()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/keephealth/android/model/bean/VersionBean;->upgradeType:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/keephealth/android/model/bean/VersionBean;->version:I

    return v0
.end method

.method public setUpgradeType(I)V
    .registers 2

    .line 12
    iput p1, p0, Lcom/keephealth/android/model/bean/VersionBean;->upgradeType:I

    return-void
.end method

.method public setVersion(I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/keephealth/android/model/bean/VersionBean;->version:I

    return-void
.end method
