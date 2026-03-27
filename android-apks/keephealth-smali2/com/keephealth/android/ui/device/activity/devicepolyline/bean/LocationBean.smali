.class public Lcom/keephealth/android/ui/device/activity/devicepolyline/bean/LocationBean;
.super Ljava/lang/Object;
.source "LocationBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private Longitude:D

.field private latitude:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/bean/LocationBean;->latitude:D

    .line 22
    iput-wide p3, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/bean/LocationBean;->Longitude:D

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/bean/LocationBean;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 34
    iget-wide v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/bean/LocationBean;->Longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .registers 3

    .line 30
    iput-wide p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/bean/LocationBean;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .registers 3

    .line 38
    iput-wide p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/bean/LocationBean;->Longitude:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationBean{latitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/bean/LocationBean;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/bean/LocationBean;->Longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
