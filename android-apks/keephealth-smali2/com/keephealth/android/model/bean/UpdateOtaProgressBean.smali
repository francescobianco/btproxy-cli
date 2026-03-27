.class public Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;
.super Ljava/lang/Object;
.source "UpdateOtaProgressBean.java"


# instance fields
.field private progress:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->progress:I

    return v0
.end method

.method public getTotal()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->total:I

    return v0
.end method

.method public setProgress(I)V
    .registers 2

    .line 12
    iput p1, p0, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->progress:I

    return-void
.end method

.method public setTotal(I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->total:I

    return-void
.end method
