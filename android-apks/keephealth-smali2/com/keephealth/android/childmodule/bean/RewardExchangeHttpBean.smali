.class public Lcom/keephealth/android/childmodule/bean/RewardExchangeHttpBean;
.super Lcom/keephealth/android/base/BaseBean;
.source "RewardExchangeHttpBean.java"


# instance fields
.field private exchangeMonth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getExchangeMonth()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/RewardExchangeHttpBean;->exchangeMonth:Ljava/lang/String;

    return-object v0
.end method

.method public setExchangeMonth(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/RewardExchangeHttpBean;->exchangeMonth:Ljava/lang/String;

    return-void
.end method
