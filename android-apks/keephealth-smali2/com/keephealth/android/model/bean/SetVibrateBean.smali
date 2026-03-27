.class public Lcom/keephealth/android/model/bean/SetVibrateBean;
.super Ljava/lang/Object;
.source "SetVibrateBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private style:I

.field private type:I

.field private vibrateStrong:I

.field private vibrateTime:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStyle()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/keephealth/android/model/bean/SetVibrateBean;->style:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/keephealth/android/model/bean/SetVibrateBean;->type:I

    return v0
.end method

.method public getVibrateStrong()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/keephealth/android/model/bean/SetVibrateBean;->vibrateStrong:I

    return v0
.end method

.method public getVibrateTime()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/keephealth/android/model/bean/SetVibrateBean;->vibrateTime:I

    return v0
.end method

.method public setStyle(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/keephealth/android/model/bean/SetVibrateBean;->style:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 16
    iput p1, p0, Lcom/keephealth/android/model/bean/SetVibrateBean;->type:I

    return-void
.end method

.method public setVibrateStrong(I)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/keephealth/android/model/bean/SetVibrateBean;->vibrateStrong:I

    return-void
.end method

.method public setVibrateTime(I)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/keephealth/android/model/bean/SetVibrateBean;->vibrateTime:I

    return-void
.end method
