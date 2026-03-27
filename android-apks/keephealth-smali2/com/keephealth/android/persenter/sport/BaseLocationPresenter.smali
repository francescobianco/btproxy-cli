.class public abstract Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "BaseLocationPresenter.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseLocation;
.implements Lcom/keephealth/android/app/Constants;


# static fields
.field private static final LOCATION_MAX_TIME:I = 0x3

.field public static isTest:Z

.field public static simpleDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field protected UPDATE_INTERVAL:I

.field protected currentLatlng:Lcom/keephealth/android/model/bean/LatLngBean;

.field protected lastLatlng:Lcom/keephealth/android/model/bean/LatLngBean;

.field lat:D

.field lng:D

.field private locationTime:I

.field protected onceLocation:Z

.field protected totalDistance:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isTestLocation:Z

    sput-boolean v0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->isTest:Z

    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->UPDATE_INTERVAL:I

    .line 33
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->onceLocation:Z

    .line 35
    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->totalDistance:I

    const-wide v0, 0x4036af94855da273L    # 22.68586

    .line 38
    iput-wide v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->lat:D

    const-wide v0, 0x405c7ec42e9899bfL    # 113.980724

    iput-wide v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->lng:D

    .line 40
    new-instance v0, Lcom/keephealth/android/model/bean/LatLngBean;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/LatLngBean;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->currentLatlng:Lcom/keephealth/android/model/bean/LatLngBean;

    return-void
.end method

.method private handlerOnceLocation(Lcom/keephealth/android/model/bean/LocationMessage;)V
    .registers 3

    .line 146
    iget-boolean v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->onceLocation:Z

    if-nez v0, :cond_5

    return-void

    .line 149
    :cond_5
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->saveLocation(Lcom/keephealth/android/model/bean/LocationMessage;)V

    .line 150
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->stopLocation()V

    .line 151
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->onDestory()V

    return-void
.end method

.method private saveLocation(Lcom/keephealth/android/model/bean/LocationMessage;)V
    .registers 5

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LocationMessage;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/LatLngBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LatLngBean;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LocationMessage;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/LatLngBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LatLngBean;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pointKey:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "POINT_KEY"

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LOCATION_DETAIL"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LocationMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "COUNTRY_KEY"

    iget-object v2, p1, Lcom/keephealth/android/model/bean/LocationMessage;->country:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CITY_KEY"

    iget-object v2, p1, Lcom/keephealth/android/model/bean/LocationMessage;->city:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CURRENT_CITY_KEY"

    iget-object v2, p1, Lcom/keephealth/android/model/bean/LocationMessage;->city:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LocationMessage;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/LatLngBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LatLngBean;->getLongitude()D

    .line 165
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LocationMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/LatLngBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LatLngBean;->getLatitude()D

    .line 175
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "COUNTRY_CODE_KEY"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setPeriod()V
    .registers 2

    const/16 v0, 0x1388

    .line 50
    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->UPDATE_INTERVAL:I

    return-void
.end method


# virtual methods
.method protected checkLocationPremission()Z
    .registers 4

    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 89
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->setPeriod()V

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->totalDistance:I

    const-wide v0, 0x4036af94855da273L    # 22.68586

    .line 91
    iput-wide v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->lat:D

    const-wide v0, 0x405c7ec42e9899bfL    # 113.980724

    .line 92
    iput-wide v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->lng:D

    return-void
.end method

.method public onDestory()V
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestory ,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onLocationChanged(Lcom/keephealth/android/model/bean/LocationMessage;)V
    .registers 9

    if-nez p1, :cond_d

    .line 105
    iget-boolean p1, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->onceLocation:Z

    if-eqz p1, :cond_c

    .line 107
    iget p1, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->locationTime:I

    add-int/lit8 p1, p1, 0x1

    .line 110
    iput p1, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->locationTime:I

    :cond_c
    return-void

    .line 114
    :cond_d
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->handlerOnceLocation(Lcom/keephealth/android/model/bean/LocationMessage;)V

    .line 115
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LocationMessage;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/LatLngBean;

    .line 116
    iget-object v1, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->lastLatlng:Lcom/keephealth/android/model/bean/LatLngBean;

    if-nez v1, :cond_1d

    .line 117
    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->lastLatlng:Lcom/keephealth/android/model/bean/LatLngBean;

    goto :goto_59

    .line 119
    :cond_1d
    invoke-static {v0, v1}, Lcom/keephealth/android/util/MapHelper;->getDistance(Lcom/keephealth/android/model/bean/LatLngBean;Lcom/keephealth/android/model/bean/LatLngBean;)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v1, v3

    const/4 v4, 0x0

    if-ltz v3, :cond_6f

    const-wide v5, 0x408f400000000000L    # 1000.0

    cmpl-double v3, v1, v5

    if-lez v3, :cond_32

    goto :goto_6f

    .line 127
    :cond_32
    iget v3, p1, Lcom/keephealth/android/model/bean/LocationMessage;->accurac:F

    const/high16 v5, 0x43960000    # 300.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_50

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u8f68\u8ff9\u70b9\u8fc7\u6ee4----Accuracy:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/keephealth/android/model/bean/LocationMessage;->accurac:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 129
    iput-boolean v4, p1, Lcom/keephealth/android/model/bean/LocationMessage;->isValid:Z

    .line 131
    :cond_50
    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->lastLatlng:Lcom/keephealth/android/model/bean/LatLngBean;

    .line 132
    iget v3, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->totalDistance:I

    int-to-double v3, v3

    add-double/2addr v3, v1

    double-to-int v1, v3

    iput v1, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->totalDistance:I

    .line 134
    :goto_59
    sget-object v1, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/LatLngBean;->setCurrentTimeMillis(Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->totalDistance:I

    iput v0, p1, Lcom/keephealth/android/model/bean/LocationMessage;->totalDistance:I

    .line 137
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(Lcom/keephealth/android/model/bean/BaseMessage;)V

    return-void

    .line 123
    :cond_6f
    :goto_6f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u8f68\u8ff9\u70b9\u8fc7\u6ee4----distance:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 124
    iput-boolean v4, p1, Lcom/keephealth/android/model/bean/LocationMessage;->isValid:Z

    return-void
.end method

.method public startLocation(Z)V
    .registers 4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startLocation  isOnce:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 76
    iput-boolean p1, p0, Lcom/keephealth/android/persenter/sport/BaseLocationPresenter;->onceLocation:Z

    return-void
.end method

.method public stopLocation()V
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopLocation ,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
