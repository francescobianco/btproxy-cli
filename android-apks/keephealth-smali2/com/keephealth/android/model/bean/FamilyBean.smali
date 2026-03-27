.class public Lcom/keephealth/android/model/bean/FamilyBean;
.super Ljava/lang/Object;
.source "FamilyBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private mid:I

.field private myHealthInfoPower:Lcom/keephealth/android/model/bean/FamilyPermisson;

.field private nickName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/keephealth/android/model/bean/FamilyBean;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/keephealth/android/model/bean/FamilyBean;->mid:I

    return v0
.end method

.method public getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/model/bean/FamilyBean;->myHealthInfoPower:Lcom/keephealth/android/model/bean/FamilyPermisson;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/keephealth/android/model/bean/FamilyBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/keephealth/android/model/bean/FamilyBean;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setMid(I)V
    .registers 2

    .line 16
    iput p1, p0, Lcom/keephealth/android/model/bean/FamilyBean;->mid:I

    return-void
.end method

.method public setMyHealthInfoPower(Lcom/keephealth/android/model/bean/FamilyPermisson;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/model/bean/FamilyBean;->myHealthInfoPower:Lcom/keephealth/android/model/bean/FamilyPermisson;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/model/bean/FamilyBean;->nickName:Ljava/lang/String;

    return-void
.end method
