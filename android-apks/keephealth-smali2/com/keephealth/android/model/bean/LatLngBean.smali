.class public Lcom/keephealth/android/model/bean/LatLngBean;
.super Ljava/lang/Object;
.source "LatLngBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public currentTimeMillis:Ljava/lang/String;

.field public isGps:Z

.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/keephealth/android/model/bean/LatLngBean;->latitude:D

    .line 42
    iput-wide p3, p0, Lcom/keephealth/android/model/bean/LatLngBean;->longitude:D

    return-void
.end method


# virtual methods
.method public clone()Lcom/keephealth/android/model/bean/LatLngBean;
    .registers 2

    .line 16
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/LatLngBean;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LatLngBean;->clone()Lcom/keephealth/android/model/bean/LatLngBean;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimeMillis()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/model/bean/LatLngBean;->currentTimeMillis:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/keephealth/android/model/bean/LatLngBean;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 58
    iget-wide v0, p0, Lcom/keephealth/android/model/bean/LatLngBean;->longitude:D

    return-wide v0
.end method

.method public setCurrentTimeMillis(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/keephealth/android/model/bean/LatLngBean;->currentTimeMillis:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .registers 3

    .line 54
    iput-wide p1, p0, Lcom/keephealth/android/model/bean/LatLngBean;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .registers 3

    .line 62
    iput-wide p1, p0, Lcom/keephealth/android/model/bean/LatLngBean;->longitude:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LatLngBean{latitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/keephealth/android/model/bean/LatLngBean;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/model/bean/LatLngBean;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/LatLngBean;->currentTimeMillis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
