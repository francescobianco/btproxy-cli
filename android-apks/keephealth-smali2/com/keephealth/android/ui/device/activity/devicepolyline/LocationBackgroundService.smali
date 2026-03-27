.class public Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;
.super Landroid/app/Service;
.source "LocationBackgroundService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationService"


# instance fields
.field private betweenDis:D

.field private fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private handler:Landroid/os/Handler;

.field private isDisConnect:Z

.field private isGetGPS:Z

.field private isInSport:Z

.field private lastErrorCode:I

.field private lastGpsType:I

.field private lastLatitude:D

.field private lastLongitude:D

.field locationBeansGoogle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private locationCallback:Lcom/google/android/gms/location/LocationCallback;

.field mSportLatLngsGoogle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private mpathSmoothTool:Lcom/keephealth/android/util/baidumap/PathSmoothTool;

.field private openGPS:Z

.field private startDate:J

.field private timeGps:J


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->betweenDis:D

    const/4 v2, 0x1

    .line 69
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->openGPS:Z

    const-wide/16 v3, 0x0

    .line 87
    iput-wide v3, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->timeGps:J

    .line 88
    new-instance v3, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;-><init>(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->handler:Landroid/os/Handler;

    .line 137
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastGpsType:I

    const/4 v2, 0x0

    .line 138
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastErrorCode:I

    .line 139
    iput-wide v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastLatitude:D

    .line 140
    iput-wide v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastLongitude:D

    .line 229
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isGetGPS:Z

    .line 230
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isInSport:Z

    .line 231
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isDisConnect:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Landroid/os/Handler;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Z
    .registers 1

    .line 63
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->openGPS:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)I
    .registers 1

    .line 63
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastGpsType:I

    return p0
.end method

.method static synthetic access$1002(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;I)I
    .registers 2

    .line 63
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastGpsType:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->timeGps:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;J)J
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->timeGps:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Z
    .registers 1

    .line 63
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isGetGPS:Z

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;Z)Z
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isGetGPS:Z

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Z
    .registers 1

    .line 63
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isInSport:Z

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;J)J
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->startDate:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)D
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastLatitude:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;D)D
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastLatitude:D

    return-wide p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)D
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastLongitude:D

    return-wide v0
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;D)D
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastLongitude:D

    return-wide p1
.end method

.method static synthetic access$802(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;D)D
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->betweenDis:D

    return-wide p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Lcom/keephealth/android/util/baidumap/PathSmoothTool;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->mpathSmoothTool:Lcom/keephealth/android/util/baidumap/PathSmoothTool;

    return-object p0
.end method

.method private savaDataGoogle()V
    .registers 10

    .line 295
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    if-eqz v0, :cond_9

    .line 296
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 298
    :cond_9
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->mpathSmoothTool:Lcom/keephealth/android/util/baidumap/PathSmoothTool;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->setIntensity(I)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationBeansGoogle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u539f\u59cb\u7ed3\u675f\u8fd0\u52a8\u8f68\u8ff9\u5b9a\u4f4dGoogle"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u539f\u59cb\u8fd0\u52a8\u8f68\u8ff9\u6570\u636e\u957f\u5ea6: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationBeansGoogle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->mpathSmoothTool:Lcom/keephealth/android/util/baidumap/PathSmoothTool;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationBeansGoogle:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->pathOptimize(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->mSportLatLngsGoogle:Ljava/util/List;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationBeansGoogle:Ljava/util/List;

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u5e73\u6ed1\u8fd0\u52a8\u8f68\u8ff9\u6570\u636e\u957f\u5ea6: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->mSportLatLngsGoogle:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->mSportLatLngsGoogle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u539f\u59cb\u7ed3\u675f\u8fd0\u52a8\u8f68\u8ff9\u5b9a\u4f4d\u5e73\u6ed1Google"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 308
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->mSportLatLngsGoogle:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_97
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 309
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;-><init>()V

    .line 310
    iget-wide v6, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const/4 v8, 0x6

    invoke-static {v6, v7, v8}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setLatitude(Ljava/lang/Double;)V

    .line 311
    iget-wide v6, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setLongitude(Ljava/lang/Double;)V

    .line 312
    iget-wide v6, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->startDate:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setDate(Ljava/lang/Long;)V

    .line 313
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setEndDate(Ljava/lang/Long;)V

    .line 314
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 316
    :cond_d7
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthGpsItemDao()Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    move-result-object v1

    .line 317
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->saveInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method private startGoogleLocation()V
    .registers 5

    .line 145
    new-instance v0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;

    invoke-direct {v0}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->mpathSmoothTool:Lcom/keephealth/android/util/baidumap/PathSmoothTool;

    .line 147
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 148
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 149
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;-><init>(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 222
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_39

    return-void

    .line 226
    :cond_39
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public handleMessageInner(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessageInner:\u539f\u59cb "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x3ff

    const/4 v2, 0x1

    if-eq v0, v1, :cond_93

    const/16 v1, 0x400

    const/4 v3, 0x0

    if-eq v0, v1, :cond_51

    const/16 p1, 0x270a

    if-eq v0, p1, :cond_49

    packed-switch v0, :pswitch_data_a6

    goto/16 :goto_a4

    .line 272
    :pswitch_2f
    iput-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->openGPS:Z

    goto/16 :goto_a4

    .line 275
    :pswitch_33
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isGetGPS:Z

    .line 276
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->openGPS:Z

    goto :goto_a4

    .line 260
    :pswitch_38
    const-string p1, "\u540e\u53f0\u5f00\u59cb\u5b9a\u4f4d\u9000\u51fa\u8fd0\u52a8\u6d88\u606f\u539f\u59cb"

    const-string v0, "handleMessageInner: \u9000\u51fa\u8fd0\u52a8"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    if-eqz p1, :cond_a4

    .line 262
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->stopService(Landroid/content/Intent;)Z

    goto :goto_a4

    .line 255
    :cond_49
    iput-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isInSport:Z

    .line 256
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isDisConnect:Z

    .line 257
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->savaDataGoogle()V

    goto :goto_a4

    .line 237
    :cond_51
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v0, 0x3

    .line 238
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-ne v0, v1, :cond_7a

    const/4 v0, 0x5

    .line 239
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6b

    .line 240
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isGetGPS:Z

    goto :goto_7a

    .line 242
    :cond_6b
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isDuringExercise:Z

    if-nez v0, :cond_7a

    .line 243
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isInSport:Z

    .line 244
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isDisConnect:Z

    if-eqz v0, :cond_7a

    .line 245
    iput-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isDisConnect:Z

    .line 246
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->startGoogleLocation()V

    .line 251
    :cond_7a
    :goto_7a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessageInner: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u540e\u53f0\u5f00\u59cb\u5b9a\u4f4d\u6d88\u606f\u539f\u59cb"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    .line 267
    :cond_93
    invoke-static {p0}, Lcom/keephealth/android/util/LocationUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 268
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->sendGps(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :cond_a4
    :goto_a4
    return-void

    nop

    :pswitch_data_a6
    .packed-switch 0x402
        :pswitch_38
        :pswitch_33
        :pswitch_2f
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 73
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->register(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isGetGPS:Z

    .line 75
    const-string v0, "LocationService"

    const-string v1, "\u539f\u59cbService Created"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationBeansGoogle:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->startGoogleLocation()V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->timeGps:J

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 283
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 284
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->unregister(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->handler:Landroid/os/Handler;

    .line 287
    sput-object v0, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    .line 288
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->savaDataGoogle()V

    .line 289
    const-string v0, "\u540e\u53f0\u5b9a\u4f4d\u7ed3\u675f"

    const-string v1, "Service Destroyed"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 83
    const-string p1, "LocationService"

    const-string p2, "Service Started"

    invoke-static {p1, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
