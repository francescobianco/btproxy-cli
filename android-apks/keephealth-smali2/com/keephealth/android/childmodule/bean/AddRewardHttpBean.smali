.class public Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;
.super Lcom/keephealth/android/base/BaseBean;
.source "AddRewardHttpBean.java"


# instance fields
.field private coin:I

.field private iconId:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoin()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;->coin:I

    return v0
.end method

.method public getIconId()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;->iconId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCoin(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;->coin:I

    return-void
.end method

.method public setIconId(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;->iconId:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;->name:Ljava/lang/String;

    return-void
.end method
