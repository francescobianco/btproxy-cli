.class public Lcom/keephealth/android/ui/device/bean/DeleRewardHttpBean;
.super Lcom/keephealth/android/base/BaseBean;
.source "DeleRewardHttpBean.java"


# instance fields
.field private id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DeleRewardHttpBean;->id:I

    return v0
.end method

.method public setId(I)V
    .registers 2

    .line 13
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DeleRewardHttpBean;->id:I

    return-void
.end method
