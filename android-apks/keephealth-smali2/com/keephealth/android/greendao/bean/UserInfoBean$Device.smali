.class public Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;
.super Ljava/lang/Object;
.source "UserInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/greendao/bean/UserInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation


# instance fields
.field private createTime:Ljava/lang/String;

.field private customId:I

.field private deviceType:I

.field private id:I

.field private mac:Ljava/lang/String;

.field private mid:I

.field private model:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomId()I
    .registers 2

    .line 560
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->customId:I

    return v0
.end method

.method public getDeviceType()I
    .registers 2

    .line 640
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->deviceType:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 568
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->id:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .line 616
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()I
    .registers 2

    .line 584
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->mid:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .line 624
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 608
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .registers 2

    .line 576
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    .line 632
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 592
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .registers 2

    .line 604
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setCustomId(I)V
    .registers 2

    .line 564
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->customId:I

    return-void
.end method

.method public setDeviceType(I)V
    .registers 2

    .line 644
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->deviceType:I

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 572
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->id:I

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .registers 2

    .line 620
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMid(I)V
    .registers 2

    .line 588
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->mid:I

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    .line 628
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->model:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 612
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->name:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .registers 2

    .line 580
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .registers 2

    .line 636
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 596
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->version:Ljava/lang/String;

    return-void
.end method
