.class public Lcom/keephealth/android/childmodule/bean/ExchangeRewardHttpBean;
.super Lcom/keephealth/android/base/BaseBean;
.source "ExchangeRewardHttpBean.java"


# instance fields
.field private rewardId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getRewardId()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/ExchangeRewardHttpBean;->rewardId:I

    return v0
.end method

.method public setRewardId(I)V
    .registers 2

    .line 16
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/ExchangeRewardHttpBean;->rewardId:I

    return-void
.end method
