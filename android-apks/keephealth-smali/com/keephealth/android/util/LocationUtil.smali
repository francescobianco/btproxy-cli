.class public Lcom/keephealth/android/util/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# static fields
.field private static fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field static locationListener:Lcom/google/android/gms/location/LocationCallback;

.field private static locationRequest:Lcom/google/android/gms/location/LocationRequest;

.field static myLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Lcom/keephealth/android/util/LocationUtil$1;

    invoke-direct {v0}, Lcom/keephealth/android/util/LocationUtil$1;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/LocationUtil;->locationListener:Lcom/google/android/gms/location/LocationCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StartLocation(Landroid/content/Context;)V
    .registers 4

    .line 76
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/LocationUtil;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 77
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/LocationUtil;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x2710

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 79
    sget-object v0, Lcom/keephealth/android/util/LocationUtil;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 80
    sget-object v0, Lcom/keephealth/android/util/LocationUtil;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 81
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_31

    return-void

    .line 91
    :cond_31
    const-string p0, "ffr3ddft\u6570\u636e"

    const-string v0, "\u5f00\u59cb\u8bf7\u6c42\u5b9a\u4f4d"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object p0, Lcom/keephealth/android/util/LocationUtil;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    sget-object v0, Lcom/keephealth/android/util/LocationUtil;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    sget-object v1, Lcom/keephealth/android/util/LocationUtil;->locationListener:Lcom/google/android/gms/location/LocationCallback;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;DD)V
    .registers 5

    .line 69
    invoke-static {p0, p1, p2, p3, p4}, Lcom/keephealth/android/util/LocationUtil;->getAddress(Landroid/content/Context;DD)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/android/gms/location/FusedLocationProviderClient;
    .registers 1

    .line 69
    sget-object v0, Lcom/keephealth/android/util/LocationUtil;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-object v0
.end method

.method private static getAddress(Landroid/content/Context;DD)V
    .registers 12

    .line 140
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 142
    new-instance p0, Ljava/lang/Thread;

    new-instance v6, Lcom/keephealth/android/util/LocationUtil$2;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/util/LocationUtil$2;-><init>(Landroid/location/Geocoder;DD)V

    invoke-direct {p0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 175
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getWeather(DDLcom/keephealth/android/model/bean/DeviceModel;Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V
    .registers 10

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"lon\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\",\"lat\":\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\"}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 181
    const-string p1, "application/json; charset=utf-8"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    .line 182
    invoke-virtual {p4}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeatherForecast()Z

    move-result p1

    const-string p2, "\u83b7\u53d6\u5929\u6c14"

    if-eqz p1, :cond_87

    .line 183
    const-string p1, "ffr3ddft\u6570\u636e"

    invoke-static {p1, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "WEATHER_CODE"

    invoke-static {p1, p3}, Lcom/keephealth/android/util/SPHelper;->getWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/model/bean/WeatherBean;

    move-result-object p1

    if-eqz p1, :cond_7e

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iget-wide v0, p1, Lcom/keephealth/android/model/bean/WeatherBean;->date:J

    sub-long/2addr p3, v0

    const-wide/32 v0, 0x36ee80

    cmp-long p3, p3, v0

    if-gez p3, :cond_7e

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "getWeather: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iget-wide v2, p1, Lcom/keephealth/android/model/bean/WeatherBean;->date:J

    sub-long/2addr p3, v2

    cmp-long p3, p3, v0

    if-gez p3, :cond_6e

    const/4 p3, 0x1

    goto :goto_6f

    :cond_6e
    const/4 p3, 0x0

    :goto_6f
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {p1, p5}, Lcom/keephealth/android/util/LocationUtil;->setWeather(Lcom/keephealth/android/model/bean/WeatherBean;Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V

    return-void

    .line 190
    :cond_7e
    new-instance p1, Lcom/keephealth/android/util/LocationUtil$3;

    invoke-direct {p1, p5}, Lcom/keephealth/android/util/LocationUtil$3;-><init>(Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V

    invoke-static {p0, p1}, Lcom/keephealth/android/model/net/http/UserHttp;->getWeatherInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    goto :goto_a3

    .line 221
    :cond_87
    invoke-virtual {p4}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeatherForecastB()Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 222
    invoke-static {p2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 223
    const-string p1, "ffr3ddft"

    const-string p2, "getWeatherThreeDaysInfo2222"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance p1, Lcom/keephealth/android/util/LocationUtil$4;

    invoke-direct {p1, p5}, Lcom/keephealth/android/util/LocationUtil$4;-><init>(Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V

    invoke-static {p0, p1}, Lcom/keephealth/android/model/net/http/UserHttp;->getWeatherThreeDaysInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    goto :goto_a3

    .line 279
    :cond_a0
    invoke-virtual {p5}, Lcom/keephealth/android/util/ble/BleCallbackWrapper;->setSuccess()V

    :cond_a3
    :goto_a3
    return-void
.end method

.method public static getWeatherType(I)I
    .registers 2

    const/16 v0, 0x1f3

    if-eq p0, v0, :cond_48

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_4c

    packed-switch p0, :pswitch_data_5a

    packed-switch p0, :pswitch_data_7a

    packed-switch p0, :pswitch_data_a4

    packed-switch p0, :pswitch_data_b6

    packed-switch p0, :pswitch_data_c2

    packed-switch p0, :pswitch_data_ce

    goto :goto_4a

    :pswitch_1b
    const/16 v0, 0xf

    goto :goto_4a

    :pswitch_1e
    const/16 v0, 0xc

    goto :goto_4a

    :pswitch_21
    const/16 v0, 0xb

    goto :goto_4a

    :pswitch_24
    const/16 v0, 0xa

    goto :goto_4a

    :pswitch_27
    const/16 v0, 0x9

    goto :goto_4a

    :pswitch_2a
    const/4 v0, 0x6

    goto :goto_4a

    :pswitch_2c
    const/4 v0, 0x5

    goto :goto_4a

    :pswitch_2e
    const/4 v0, 0x4

    goto :goto_4a

    :pswitch_30
    const/16 v0, 0xe

    goto :goto_4a

    :pswitch_33
    const/4 v0, 0x7

    goto :goto_4a

    :pswitch_35
    const/16 v0, 0x10

    goto :goto_4a

    :pswitch_38
    const/16 v0, 0x14

    goto :goto_4a

    :pswitch_3b
    const/16 v0, 0x13

    goto :goto_4a

    :pswitch_3e
    const/16 v0, 0x12

    goto :goto_4a

    :pswitch_41
    const/16 v0, 0x11

    goto :goto_4a

    :pswitch_44
    const/4 v0, 0x2

    goto :goto_4a

    :pswitch_46
    const/4 v0, 0x3

    goto :goto_4a

    :cond_48
    :pswitch_48
    const/16 v0, 0x8

    :goto_4a
    :pswitch_4a
    return v0

    nop

    :pswitch_data_4c
    .packed-switch 0x64
        :pswitch_4a
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_44
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0xc8
        :pswitch_41
        :pswitch_4a
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_38
        :pswitch_35
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x12c
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_2a
        :pswitch_2e
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x18f
        :pswitch_2e
        :pswitch_48
        :pswitch_27
        :pswitch_24
        :pswitch_24
        :pswitch_21
        :pswitch_21
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x197
        :pswitch_48
        :pswitch_48
        :pswitch_27
        :pswitch_24
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x1f5
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x1fb
        :pswitch_1b
        :pswitch_1b
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public static setWeather(Lcom/keephealth/android/model/bean/WeatherBean;Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V
    .registers 6

    .line 284
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setWeather(Lcom/keephealth/android/model/bean/WeatherBean;)[B

    move-result-object p0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v3, Lcom/keephealth/android/util/LocationUtil$5;

    invoke-direct {v3, p1}, Lcom/keephealth/android/util/LocationUtil$5;-><init>(Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method public static stopLocation()V
    .registers 2

    .line 135
    sget-object v0, Lcom/keephealth/android/util/LocationUtil;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    if-eqz v0, :cond_9

    .line 136
    sget-object v1, Lcom/keephealth/android/util/LocationUtil;->locationListener:Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    :cond_9
    return-void
.end method
