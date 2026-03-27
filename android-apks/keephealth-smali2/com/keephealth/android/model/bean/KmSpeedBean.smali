.class public Lcom/keephealth/android/model/bean/KmSpeedBean;
.super Ljava/lang/Object;
.source "KmSpeedBean.java"


# static fields
.field public static final EVERY_KM_SPEED:I = 0x0

.field public static final TOTAL_TIME:I = 0x1


# instance fields
.field private distance:I

.field private evgTime:I

.field private isFullOneKm:Z

.field private isKm:Z

.field private kmCount:Ljava/lang/String;

.field private speed:Ljava/lang/String;

.field private totalTime:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistance()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->distance:I

    return v0
.end method

.method public getEvgTime()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->evgTime:I

    return v0
.end method

.method public getKmCount()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->kmCount:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->speed:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->totalTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->type:I

    return v0
.end method

.method public isFullOneKm()Z
    .registers 2

    .line 23
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->isFullOneKm:Z

    return v0
.end method

.method public isKm()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->isKm:Z

    return v0
.end method

.method public setDistance(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->distance:I

    return-void
.end method

.method public setEvgTime(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->evgTime:I

    return-void
.end method

.method public setFullOneKm(Z)V
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->isFullOneKm:Z

    return-void
.end method

.method public setKm(Z)V
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->isKm:Z

    return-void
.end method

.method public setKmCount(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->kmCount:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->speed:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->totalTime:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/keephealth/android/model/bean/KmSpeedBean;->type:I

    return-void
.end method
