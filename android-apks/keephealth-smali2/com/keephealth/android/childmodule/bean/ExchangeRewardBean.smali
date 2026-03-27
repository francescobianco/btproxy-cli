.class public Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;
.super Ljava/lang/Object;
.source "ExchangeRewardBean.java"


# instance fields
.field private coinTotalSize:I

.field private exchangeReuslt:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoinTotalSize()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;->coinTotalSize:I

    return v0
.end method

.method public getExchangeReuslt()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;->exchangeReuslt:I

    return v0
.end method

.method public setCoinTotalSize(I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;->coinTotalSize:I

    return-void
.end method

.method public setExchangeReuslt(I)V
    .registers 2

    .line 12
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;->exchangeReuslt:I

    return-void
.end method
