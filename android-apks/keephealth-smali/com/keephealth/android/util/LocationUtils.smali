.class public Lcom/keephealth/android/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/LocationUtils$AddressCallback;
    }
.end annotation


# static fields
.field private static addressCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/util/LocationUtils$AddressCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static location:Landroid/location/Location;

.field private static volatile uniqueInstance:Lcom/keephealth/android/util/LocationUtils;


# instance fields
.field private addressCallback:Lcom/keephealth/android/util/LocationUtils$AddressCallback;

.field private isInit:Z

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/keephealth/android/util/LocationUtils;->isInit:Z

    .line 195
    new-instance v0, Lcom/keephealth/android/util/LocationUtils$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/LocationUtils$1;-><init>(Lcom/keephealth/android/util/LocationUtils;)V

    iput-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->locationListener:Landroid/location/LocationListener;

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/util/LocationUtils;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/keephealth/android/util/LocationUtils;->getLocation()V

    return-void
.end method

.method private addAddressCallback(Lcom/keephealth/android/util/LocationUtils$AddressCallback;)V
    .registers 3

    .line 67
    sget-object v0, Lcom/keephealth/android/util/LocationUtils;->addressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-boolean p1, p0, Lcom/keephealth/android/util/LocationUtils;->isInit:Z

    if-eqz p1, :cond_c

    .line 69
    invoke-direct {p0}, Lcom/keephealth/android/util/LocationUtils;->showLocation()V

    :cond_c
    return-void
.end method

.method private getAddress(DD)V
    .registers 12

    .line 155
    const-string v0, "FF3212"

    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/keephealth/android/util/LocationUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v6, 0x1

    move-wide v2, p1

    move-wide v4, p3

    .line 157
    :try_start_10
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_89

    const/4 p2, 0x0

    .line 160
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 161
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object p3

    .line 162
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    .line 168
    :goto_30
    invoke-virtual {p1, p2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_55

    .line 169
    invoke-virtual {p1, p2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object p4

    .line 171
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addressLine====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_30

    .line 173
    :cond_55
    iget-object p2, p0, Lcom/keephealth/android/util/LocationUtils;->addressCallback:Lcom/keephealth/android/util/LocationUtils$AddressCallback;

    if-eqz p2, :cond_5c

    .line 174
    invoke-interface {p2, p1}, Lcom/keephealth/android/util/LocationUtils$AddressCallback;->onGetAddress(Landroid/location/Address;)V

    .line 179
    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "countryName:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_72} :catch_73

    goto :goto_89

    :catch_73
    move-exception p1

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "e:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_89
    :goto_89
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/keephealth/android/util/LocationUtils;
    .registers 3

    .line 51
    sget-object v0, Lcom/keephealth/android/util/LocationUtils;->uniqueInstance:Lcom/keephealth/android/util/LocationUtils;

    if-nez v0, :cond_1e

    .line 52
    const-class v0, Lcom/keephealth/android/util/LocationUtils;

    monitor-enter v0

    .line 53
    :try_start_7
    sget-object v1, Lcom/keephealth/android/util/LocationUtils;->uniqueInstance:Lcom/keephealth/android/util/LocationUtils;

    if-nez v1, :cond_19

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/keephealth/android/util/LocationUtils;->addressCallbacks:Ljava/util/ArrayList;

    .line 55
    new-instance v1, Lcom/keephealth/android/util/LocationUtils;

    invoke-direct {v1, p0}, Lcom/keephealth/android/util/LocationUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/keephealth/android/util/LocationUtils;->uniqueInstance:Lcom/keephealth/android/util/LocationUtils;

    .line 57
    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0

    .line 59
    :cond_1e
    :goto_1e
    sget-object p0, Lcom/keephealth/android/util/LocationUtils;->uniqueInstance:Lcom/keephealth/android/util/LocationUtils;

    return-object p0
.end method

.method private getLngAndLatWithNetwork()V
    .registers 8

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 224
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 227
    :cond_15
    iget-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const/high16 v5, 0x41200000    # 10.0f

    .line 228
    iget-object v6, p0, Lcom/keephealth/android/util/LocationUtils;->locationListener:Landroid/location/LocationListener;

    const-string v2, "network"

    const-wide/16 v3, 0x1388

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 229
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/LocationUtils;->location:Landroid/location/Location;

    .line 230
    invoke-direct {p0}, Lcom/keephealth/android/util/LocationUtils;->showLocation()V

    return-void
.end method

.method private getLocation()V
    .registers 10

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->locationManager:Landroid/location/LocationManager;

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 95
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_21

    return-void

    .line 100
    :cond_21
    iget-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->locationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 102
    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 104
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "=====GPS_PROVIDER====="

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_37
    move-object v4, v1

    goto :goto_49

    .line 106
    :cond_39
    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 108
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "=====NETWORK_PROVIDER====="

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_37

    .line 120
    :goto_49
    iget-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/LocationUtils;->location:Landroid/location/Location;

    if-eqz v0, :cond_5e

    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "==\u663e\u793a\u5f53\u524d\u8bbe\u5907\u7684\u4f4d\u7f6e\u4fe1\u606f=="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/keephealth/android/util/LocationUtils;->showLocation()V

    goto :goto_68

    .line 126
    :cond_5e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "==Google\u670d\u52a1\u88ab\u5899\u7684\u89e3\u51b3\u529e\u6cd5=="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/keephealth/android/util/LocationUtils;->getLngAndLatWithNetwork()V

    .line 132
    :goto_68
    iget-object v3, p0, Lcom/keephealth/android/util/LocationUtils;->locationManager:Landroid/location/LocationManager;

    const/high16 v7, 0x41200000    # 10.0f

    iget-object v8, p0, Lcom/keephealth/android/util/LocationUtils;->locationListener:Landroid/location/LocationListener;

    const-wide/16 v5, 0x1388

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void

    .line 111
    :cond_74
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "=====NO_PROVIDER====="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/keephealth/android/util/LocationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 239
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 243
    :cond_c
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private removeLocationUpdatesListener()V
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 189
    sput-object v0, Lcom/keephealth/android/util/LocationUtils;->uniqueInstance:Lcom/keephealth/android/util/LocationUtils;

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/keephealth/android/util/LocationUtils;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_e
    return-void
.end method

.method private showLocation()V
    .registers 7

    .line 137
    sget-object v0, Lcom/keephealth/android/util/LocationUtils;->location:Landroid/location/Location;

    if-nez v0, :cond_8

    .line 138
    invoke-direct {p0}, Lcom/keephealth/android/util/LocationUtils;->getLocation()V

    goto :goto_3a

    .line 140
    :cond_8
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 141
    sget-object v2, Lcom/keephealth/android/util/LocationUtils;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 145
    iget-object v4, p0, Lcom/keephealth/android/util/LocationUtils;->addressCallback:Lcom/keephealth/android/util/LocationUtils$AddressCallback;

    if-eqz v4, :cond_19

    .line 146
    invoke-interface {v4, v0, v1, v2, v3}, Lcom/keephealth/android/util/LocationUtils$AddressCallback;->onGetLocation(DD)V

    .line 148
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "latitude:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   longitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FF3212"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/keephealth/android/util/LocationUtils;->getAddress(DD)V

    :goto_3a
    return-void
.end method


# virtual methods
.method public cleareAddressCallback()V
    .registers 2

    .line 87
    invoke-direct {p0}, Lcom/keephealth/android/util/LocationUtils;->removeLocationUpdatesListener()V

    .line 88
    sget-object v0, Lcom/keephealth/android/util/LocationUtils;->addressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAddressCallback()Lcom/keephealth/android/util/LocationUtils$AddressCallback;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/keephealth/android/util/LocationUtils;->addressCallback:Lcom/keephealth/android/util/LocationUtils$AddressCallback;

    return-object v0
.end method

.method public removeAddressCallback(Lcom/keephealth/android/util/LocationUtils$AddressCallback;)V
    .registers 3

    .line 78
    sget-object v0, Lcom/keephealth/android/util/LocationUtils;->addressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 79
    sget-object v0, Lcom/keephealth/android/util/LocationUtils;->addressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public setAddressCallback(Lcom/keephealth/android/util/LocationUtils$AddressCallback;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/keephealth/android/util/LocationUtils;->addressCallback:Lcom/keephealth/android/util/LocationUtils$AddressCallback;

    .line 35
    iget-boolean p1, p0, Lcom/keephealth/android/util/LocationUtils;->isInit:Z

    if-eqz p1, :cond_a

    .line 36
    invoke-direct {p0}, Lcom/keephealth/android/util/LocationUtils;->showLocation()V

    goto :goto_d

    :cond_a
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/keephealth/android/util/LocationUtils;->isInit:Z

    :goto_d
    return-void
.end method
