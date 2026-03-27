.class public Lcom/keephealth/android/ui/device/bean/NotGameBean;
.super Ljava/lang/Object;
.source "NotGameBean.java"


# instance fields
.field private cycle:[I

.field private endTimeHour:I

.field private endTimeMin:I

.field private onOrOff:I

.field private startTimeHour:I

.field private startTimeMin:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCycle()[I
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/NotGameBean;->cycle:[I

    return-object v0
.end method

.method public getEndTimeHour()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/NotGameBean;->endTimeHour:I

    return v0
.end method

.method public getEndTimeMin()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/NotGameBean;->endTimeMin:I

    return v0
.end method

.method public getOnOrOff()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/NotGameBean;->onOrOff:I

    return v0
.end method

.method public getStartTimeHour()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/NotGameBean;->startTimeHour:I

    return v0
.end method

.method public getStartTimeMin()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/NotGameBean;->startTimeMin:I

    return v0
.end method

.method public setCycle([I)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/NotGameBean;->cycle:[I

    return-void
.end method

.method public setEndTimeHour(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/NotGameBean;->endTimeHour:I

    return-void
.end method

.method public setEndTimeMin(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/NotGameBean;->endTimeMin:I

    return-void
.end method

.method public setOnOrOff(I)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/NotGameBean;->onOrOff:I

    return-void
.end method

.method public setStartTimeHour(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/NotGameBean;->startTimeHour:I

    return-void
.end method

.method public setStartTimeMin(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/NotGameBean;->startTimeMin:I

    return-void
.end method
