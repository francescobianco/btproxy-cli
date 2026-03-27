.class public Lcom/keephealth/android/model/bean/InvitedBean;
.super Ljava/lang/Object;
.source "InvitedBean.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private mid:I

.field private nickName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/keephealth/android/model/bean/InvitedBean;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/keephealth/android/model/bean/InvitedBean;->mid:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/keephealth/android/model/bean/InvitedBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/model/bean/InvitedBean;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setMid(I)V
    .registers 2

    .line 13
    iput p1, p0, Lcom/keephealth/android/model/bean/InvitedBean;->mid:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/model/bean/InvitedBean;->nickName:Ljava/lang/String;

    return-void
.end method
