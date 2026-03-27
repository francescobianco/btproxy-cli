.class public Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;
.super Lcom/keephealth/android/base/BaseBean;
.source "UpdateRewardHttpBean.java"


# instance fields
.field private coin:I

.field private iconId:I

.field public id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoin()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->coin:I

    return v0
.end method

.method public getIconId()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->iconId:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCoin(I)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->coin:I

    return-void
.end method

.method public setIconId(I)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->iconId:I

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 16
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->name:Ljava/lang/String;

    return-void
.end method
