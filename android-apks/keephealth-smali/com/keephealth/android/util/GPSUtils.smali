.class public Lcom/keephealth/android/util/GPSUtils;
.super Ljava/lang/Object;
.source "GPSUtils.java"


# static fields
.field public static final LOCATION_CODE:I = 0x3e8

.field public static final OPEN_GPS_CODE:I = 0x3e9

.field private static instance:Lcom/keephealth/android/util/GPSUtils;


# instance fields
.field private locationManager:Landroid/location/LocationManager;

.field public province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/util/GPSUtils;->province:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/keephealth/android/util/GPSUtils;
    .registers 1

    .line 35
    sget-object v0, Lcom/keephealth/android/util/GPSUtils;->instance:Lcom/keephealth/android/util/GPSUtils;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/keephealth/android/util/GPSUtils;

    invoke-direct {v0}, Lcom/keephealth/android/util/GPSUtils;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/GPSUtils;->instance:Lcom/keephealth/android/util/GPSUtils;

    .line 38
    :cond_b
    sget-object v0, Lcom/keephealth/android/util/GPSUtils;->instance:Lcom/keephealth/android/util/GPSUtils;

    return-object v0
.end method


# virtual methods
.method public getAddress(DD)Ljava/lang/String;
    .registers 11

    .line 96
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    .line 98
    :try_start_c
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_2a

    :catch_11
    move-exception p1

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "e:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FF3212"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    .line 103
    :goto_2a
    const-string p2, ""

    if-eqz p1, :cond_67

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_67

    const/4 p3, 0x0

    .line 104
    :goto_35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_67

    .line 105
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/location/Address;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "---"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p3, p3, 0x1

    goto :goto_35

    :cond_67
    return-object p2
.end method

.method public getProvince()Ljava/lang/String;
    .registers 7

    .line 43
    const-string v0, "GPS: "

    const-string v1, "getProvince"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/app/AppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/keephealth/android/util/GPSUtils;->locationManager:Landroid/location/LocationManager;

    .line 49
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/app/AppApplication;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "GG332"

    if-nez v0, :cond_36

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/util/GPSUtils;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/util/GPSUtils;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 63
    const-string v2, "\u5df2\u7ecf\u6388\u6743"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 65
    :cond_36
    const-string v0, "\u6ca1\u6709\u6388\u6743\u5b9a\u4f4d\u6743\u9650"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 72
    :goto_3c
    const-string v2, "FF3212"

    if-eqz v0, :cond_8b

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7ecf\u5ea6\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7eac\u5ea6\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/keephealth/android/util/GPSUtils;->getAddress(DD)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "location\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 84
    :cond_8b
    const-string v0, "\u83b7\u53d6\u4f4d\u7f6e\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u662f\u591f\u5f00\u542fGPS,\u662f\u5426\u6388\u6743"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_92
    return-object v0
.end method
