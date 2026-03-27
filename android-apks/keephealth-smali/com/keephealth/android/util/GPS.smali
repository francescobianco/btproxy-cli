.class public Lcom/keephealth/android/util/GPS;
.super Ljava/lang/Object;
.source "GPS.java"


# instance fields
.field private lat:D

.field private lon:D


# direct methods
.method public constructor <init>(DD)V
    .registers 5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/keephealth/android/util/GPS;->lat:D

    .line 9
    iput-wide p3, p0, Lcom/keephealth/android/util/GPS;->lon:D

    return-void
.end method


# virtual methods
.method public getLat()D
    .registers 3

    .line 13
    iget-wide v0, p0, Lcom/keephealth/android/util/GPS;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .registers 3

    .line 21
    iget-wide v0, p0, Lcom/keephealth/android/util/GPS;->lon:D

    return-wide v0
.end method

.method public setLat(D)V
    .registers 3

    .line 17
    iput-wide p1, p0, Lcom/keephealth/android/util/GPS;->lat:D

    return-void
.end method

.method public setLon(D)V
    .registers 3

    .line 25
    iput-wide p1, p0, Lcom/keephealth/android/util/GPS;->lon:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/keephealth/android/util/GPS;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/util/GPS;->lon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
