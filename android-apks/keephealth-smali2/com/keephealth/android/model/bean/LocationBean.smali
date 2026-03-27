.class public Lcom/keephealth/android/model/bean/LocationBean;
.super Ljava/lang/Object;
.source "LocationBean.java"


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/model/bean/LocationBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/keephealth/android/model/bean/LocationBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .line 10
    iget-wide v0, p0, Lcom/keephealth/android/model/bean/LocationBean;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 18
    iget-wide v0, p0, Lcom/keephealth/android/model/bean/LocationBean;->longitude:D

    return-wide v0
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/model/bean/LocationBean;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/model/bean/LocationBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .registers 3

    .line 14
    iput-wide p1, p0, Lcom/keephealth/android/model/bean/LocationBean;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .registers 3

    .line 22
    iput-wide p1, p0, Lcom/keephealth/android/model/bean/LocationBean;->longitude:D

    return-void
.end method
