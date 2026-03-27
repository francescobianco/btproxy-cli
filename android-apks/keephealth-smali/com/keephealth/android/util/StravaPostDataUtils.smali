.class public Lcom/keephealth/android/util/StravaPostDataUtils;
.super Ljava/lang/Object;
.source "StravaPostDataUtils.java"


# static fields
.field private static auth_success:Z = false

.field public static currentUploadTime:J = 0x0L

.field private static healthGpsItemDao:Lcom/keephealth/android/greendao/gen/HealthGpsItemDao; = null

.field public static lastUploadTime:J = 0x0L

.field private static mTrajectories:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthGpsItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final oneLoadCount:I = 0x3

.field private static final timeDis:J = 0x1b7740L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CreateActivityFile(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/garmin/fit/DateTime;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/garmin/fit/Mesg;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/garmin/fit/DateTime;",
            ")V"
        }
    .end annotation

    .line 309
    const-string v0, "text/plain"

    const-string v1, "ttrt5"

    .line 0
    const-string v2, "\u521b\u5efa\u6587\u4ef6\u6210\u529f:"

    .line 309
    sget-object v3, Lcom/garmin/fit/File;->ACTIVITY:Lcom/garmin/fit/File;

    .line 314
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 315
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startTime:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/garmin/fit/DateTime;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "YYT6T"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v5, Lcom/garmin/fit/FileIdMesg;

    invoke-direct {v5}, Lcom/garmin/fit/FileIdMesg;-><init>()V

    .line 321
    invoke-virtual {v5, v3}, Lcom/garmin/fit/FileIdMesg;->setType(Lcom/garmin/fit/File;)V

    const/16 v3, 0xff

    .line 322
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/garmin/fit/FileIdMesg;->setManufacturer(Ljava/lang/Integer;)V

    const/4 v6, 0x0

    .line 323
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/garmin/fit/FileIdMesg;->setProduct(Ljava/lang/Integer;)V

    .line 324
    invoke-virtual {v5, p3}, Lcom/garmin/fit/FileIdMesg;->setTimeCreated(Lcom/garmin/fit/DateTime;)V

    int-to-long v8, v4

    .line 325
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/garmin/fit/FileIdMesg;->setSerialNumber(Ljava/lang/Long;)V

    .line 328
    new-instance v4, Lcom/garmin/fit/DeviceInfoMesg;

    invoke-direct {v4}, Lcom/garmin/fit/DeviceInfoMesg;-><init>()V

    .line 329
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/garmin/fit/DeviceInfoMesg;->setDeviceIndex(Ljava/lang/Short;)V

    .line 330
    invoke-virtual {v4, v3}, Lcom/garmin/fit/DeviceInfoMesg;->setManufacturer(Ljava/lang/Integer;)V

    .line 331
    invoke-virtual {v4, v7}, Lcom/garmin/fit/DeviceInfoMesg;->setProduct(Ljava/lang/Integer;)V

    .line 332
    const-string v3, "FIT Cookbook"

    invoke-virtual {v4, v3}, Lcom/garmin/fit/DeviceInfoMesg;->setProductName(Ljava/lang/String;)V

    .line 333
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/garmin/fit/DeviceInfoMesg;->setSerialNumber(Ljava/lang/Long;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 334
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/garmin/fit/DeviceInfoMesg;->setSoftwareVersion(Ljava/lang/Float;)V

    .line 335
    invoke-virtual {v4, p3}, Lcom/garmin/fit/DeviceInfoMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 339
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    :try_start_7c
    new-instance v3, Lcom/garmin/fit/FileEncoder;

    sget-object v6, Lcom/garmin/fit/Fit$ProtocolVersion;->V2_0:Lcom/garmin/fit/Fit$ProtocolVersion;

    invoke-direct {v3, p3, v6}, Lcom/garmin/fit/FileEncoder;-><init>(Ljava/io/File;Lcom/garmin/fit/Fit$ProtocolVersion;)V

    .line 342
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Lcom/garmin/fit/FitRuntimeException; {:try_start_7c .. :try_end_93} :catch_163

    .line 351
    invoke-virtual {v3, v5}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 352
    invoke-virtual {v3, v4}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 354
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_ad

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/garmin/fit/Mesg;

    .line 355
    invoke-virtual {v3, p3}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    goto :goto_9d

    .line 360
    :cond_ad
    :try_start_ad
    invoke-virtual {v3}, Lcom/garmin/fit/FileEncoder;->close()V

    .line 361
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    const-string p3, "multipart/form-data"

    invoke-static {p3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    invoke-static {p3, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p3

    .line 363
    const-string v2, "file"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v6

    .line 367
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    const-string v2, "KeepHealth+"

    invoke-static {p3, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 368
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    const-string v2, "KeepHealth+ sport"

    invoke-static {p3, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v8

    .line 371
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    const-string v0, "fit"

    invoke-static {p3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v9

    .line 380
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bearer "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "strava_token"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 383
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "token:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance p0, Lretrofit2/Retrofit$Builder;

    invoke-direct {p0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string p3, "https://www.strava.com/api/v3/"

    .line 385
    invoke-virtual {p0, p3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 386
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p3

    invoke-virtual {p0, p3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 387
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    .line 389
    const-class p3, Lcom/keephealth/android/model/net/api/UserApi;

    invoke-virtual {p0, p3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/keephealth/android/model/net/api/UserApi;

    .line 390
    invoke-interface/range {v4 .. v9}, Lcom/keephealth/android/model/net/api/UserApi;->uploadFileWithFields(Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p0

    .line 391
    new-instance p3, Lcom/keephealth/android/util/StravaPostDataUtils$1;

    invoke-direct {p3, p1}, Lcom/keephealth/android/util/StravaPostDataUtils$1;-><init>(Ljava/io/File;)V

    invoke-interface {p0, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_142
    .catch Lcom/garmin/fit/FitRuntimeException; {:try_start_ad .. :try_end_142} :catch_157

    .line 412
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Encoded FIT Activity file "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :catch_157
    move-exception p0

    .line 408
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "Error closing encode."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/garmin/fit/FitRuntimeException;->printStackTrace()V

    return-void

    :catch_163
    move-exception p0

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u521b\u5efa\u6587\u4ef6\u5931\u8d25:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error opening file "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/garmin/fit/FitRuntimeException;->printStackTrace()V

    return-void
.end method

.method public static CreateTimeBasedActivity(Landroid/content/Context;)V
    .registers 27

    move-object/from16 v0, p0

    .line 69
    const-string v1, "auth_success"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/keephealth/android/util/StravaPostDataUtils;->auth_success:Z

    .line 70
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthGpsItemDao()Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/util/StravaPostDataUtils;->healthGpsItemDao:Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    .line 71
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentDate:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ytyu7"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v2, Lcom/keephealth/android/util/StravaPostDataUtils;->healthGpsItemDao:Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 74
    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v4, 0x0

    .line 129
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 74
    new-array v7, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v1, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 279
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 135
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    .line 74
    new-array v9, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v10, v9, v4

    .line 75
    invoke-virtual {v1, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/util/StravaPostDataUtils;->mTrajectories:Ljava/util/List;

    .line 77
    const-string v9, "  "

    const/4 v10, 0x2

    if-eqz v1, :cond_be

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v10, :cond_be

    move v1, v4

    .line 78
    :goto_81
    sget-object v11, Lcom/keephealth/android/util/StravaPostDataUtils;->mTrajectories:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_c3

    .line 79
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u7ecf\u7eac\u5ea6:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/keephealth/android/util/StravaPostDataUtils;->mTrajectories:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getLatitude()Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/keephealth/android/util/StravaPostDataUtils;->mTrajectories:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getLongitude()Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 82
    :cond_be
    const-string v1, "mTrajectories == null"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_c3
    sget-boolean v1, Lcom/keephealth/android/util/StravaPostDataUtils;->auth_success:Z

    if-eqz v1, :cond_676

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "keephealthplus.fit"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 93
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v14

    .line 95
    invoke-virtual {v12, v14}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    invoke-virtual {v12, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 97
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "totalMilisSeconds:   dateTime:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ytyu6"

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_112
    new-instance v14, Ljava/text/SimpleDateFormat;

    invoke-direct {v14, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12
    :try_end_11b
    .catch Ljava/text/ParseException; {:try_start_112 .. :try_end_11b} :catch_66f

    .line 104
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "beginTime:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v11

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "YYT6T"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v10, Lcom/garmin/fit/DateTime;

    invoke-direct {v10, v12}, Lcom/garmin/fit/DateTime;-><init>(Ljava/util/Date;)V

    .line 106
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "startTime000:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/garmin/fit/DateTime;->getDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v10}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v9, Lcom/garmin/fit/EventMesg;

    invoke-direct {v9}, Lcom/garmin/fit/EventMesg;-><init>()V

    .line 110
    invoke-virtual {v9, v10}, Lcom/garmin/fit/EventMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 111
    sget-object v11, Lcom/garmin/fit/Event;->TIMER:Lcom/garmin/fit/Event;

    invoke-virtual {v9, v11}, Lcom/garmin/fit/EventMesg;->setEvent(Lcom/garmin/fit/Event;)V

    .line 112
    sget-object v11, Lcom/garmin/fit/EventType;->START:Lcom/garmin/fit/EventType;

    invoke-virtual {v9, v11}, Lcom/garmin/fit/EventMesg;->setEventType(Lcom/garmin/fit/EventType;)V

    .line 113
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v9, Lcom/garmin/fit/DeveloperDataIdMesg;

    invoke-direct {v9}, Lcom/garmin/fit/DeveloperDataIdMesg;-><init>()V

    const/16 v11, 0x10

    .line 118
    new-array v12, v11, [B

    fill-array-data v12, :array_678

    move v13, v4

    :goto_17e
    if-ge v13, v11, :cond_18e

    .line 126
    aget-byte v17, v12, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v9, v13, v11}, Lcom/garmin/fit/DeveloperDataIdMesg;->setApplicationId(ILjava/lang/Byte;)V

    add-int/lit8 v13, v13, 0x1

    const/16 v11, 0x10

    goto :goto_17e

    .line 129
    :cond_18e
    invoke-virtual {v9, v5}, Lcom/garmin/fit/DeveloperDataIdMesg;->setDeveloperDataIndex(Ljava/lang/Short;)V

    .line 130
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v11, Lcom/garmin/fit/FieldDescriptionMesg;

    invoke-direct {v11}, Lcom/garmin/fit/FieldDescriptionMesg;-><init>()V

    .line 134
    invoke-virtual {v11, v5}, Lcom/garmin/fit/FieldDescriptionMesg;->setDeveloperDataIndex(Ljava/lang/Short;)V

    .line 135
    invoke-virtual {v11, v8}, Lcom/garmin/fit/FieldDescriptionMesg;->setFieldDefinitionNumber(Ljava/lang/Short;)V

    const/16 v12, 0x88

    .line 136
    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/garmin/fit/FieldDescriptionMesg;->setFitBaseTypeId(Ljava/lang/Short;)V

    .line 137
    const-string v12, "doughnuts"

    invoke-virtual {v11, v4, v12}, Lcom/garmin/fit/FieldDescriptionMesg;->setUnits(ILjava/lang/String;)V

    const/16 v12, 0x12

    .line 138
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/garmin/fit/FieldDescriptionMesg;->setNativeMesgNum(Ljava/lang/Integer;)V

    .line 139
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v12, Lcom/garmin/fit/FieldDescriptionMesg;

    invoke-direct {v12}, Lcom/garmin/fit/FieldDescriptionMesg;-><init>()V

    .line 142
    invoke-virtual {v12, v5}, Lcom/garmin/fit/FieldDescriptionMesg;->setDeveloperDataIndex(Ljava/lang/Short;)V

    .line 143
    invoke-virtual {v12, v8}, Lcom/garmin/fit/FieldDescriptionMesg;->setFieldDefinitionNumber(Ljava/lang/Short;)V

    const/4 v5, 0x2

    .line 144
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/garmin/fit/FieldDescriptionMesg;->setFitBaseTypeId(Ljava/lang/Short;)V

    .line 145
    const-string v5, "Heart Rate"

    invoke-virtual {v12, v4, v5}, Lcom/garmin/fit/FieldDescriptionMesg;->setFieldName(ILjava/lang/String;)V

    .line 146
    const-string v5, "bpm"

    invoke-virtual {v12, v4, v5}, Lcom/garmin/fit/FieldDescriptionMesg;->setUnits(ILjava/lang/String;)V

    const/4 v5, 0x3

    .line 147
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/garmin/fit/FieldDescriptionMesg;->setNativeFieldNum(Ljava/lang/Short;)V

    const/16 v8, 0x14

    .line 148
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/garmin/fit/FieldDescriptionMesg;->setNativeMesgNum(Ljava/lang/Integer;)V

    .line 149
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "hrFieldDescMesg:"

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v13, v12}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v13, "ttrt5"

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v8, Lcom/garmin/fit/DateTime;

    invoke-direct {v8, v10}, Lcom/garmin/fit/DateTime;-><init>(Lcom/garmin/fit/DateTime;)V

    .line 154
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v5, "timestamp11:"

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/keephealth/android/util/DateUtil;->computeTimeHMS(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 156
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 157
    invoke-virtual {v5, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 158
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    sput-wide v18, Lcom/keephealth/android/util/StravaPostDataUtils;->currentUploadTime:J

    const/16 v14, 0xb

    .line 159
    invoke-virtual {v5, v14, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xc

    .line 160
    invoke-virtual {v5, v14, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xd

    .line 161
    invoke-virtual {v5, v14, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xe

    .line 162
    invoke-virtual {v5, v14, v4}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 164
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v14, "LAST_SYS_TIME"

    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5, v14, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)J

    .line 165
    sput-wide v20, Lcom/keephealth/android/util/StravaPostDataUtils;->lastUploadTime:J

    cmp-long v2, v20, v18

    if-gez v2, :cond_26b

    .line 168
    sput-wide v18, Lcom/keephealth/android/util/StravaPostDataUtils;->lastUploadTime:J

    .line 170
    :cond_26b
    sget-wide v18, Lcom/keephealth/android/util/StravaPostDataUtils;->currentUploadTime:J

    sget-wide v20, Lcom/keephealth/android/util/StravaPostDataUtils;->lastUploadTime:J

    sub-long v18, v18, v20

    const-wide/32 v20, 0x1b7740

    div-long v18, v18, v20

    .line 172
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    sget-wide v18, Lcom/keephealth/android/util/StravaPostDataUtils;->lastUploadTime:J

    .line 174
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    sget-wide v18, Lcom/keephealth/android/util/StravaPostDataUtils;->currentUploadTime:J

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v5, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v2, v5, v4

    .line 175
    invoke-virtual {v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "healthHeartRateItems.size():"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_457

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_457

    .line 180
    :goto_2cf
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_457

    .line 182
    new-instance v2, Ljava/util/Date;

    move-object v5, v10

    move-object v14, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 183
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd"

    invoke-direct {v2, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, v16

    .line 184
    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v1

    .line 186
    new-instance v1, Ljava/util/Date;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDate()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 187
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_443

    .line 191
    new-instance v5, Lcom/garmin/fit/RecordMesg;

    invoke-direct {v5}, Lcom/garmin/fit/RecordMesg;-><init>()V

    .line 192
    invoke-virtual {v5, v8}, Lcom/garmin/fit/RecordMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "formattedDate:"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "  formattedDate2:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 195
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/garmin/fit/RecordMesg;->setDistance(Ljava/lang/Float;)V

    .line 196
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/RecordMesg;->setSpeed(Ljava/lang/Float;)V

    .line 199
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    .line 200
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v2

    const/16 v6, 0x3c

    if-ge v2, v6, :cond_365

    .line 201
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/RecordMesg;->setHeartRate(Ljava/lang/Short;)V

    goto :goto_36d

    :cond_365
    int-to-short v1, v1

    .line 203
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/RecordMesg;->setHeartRate(Ljava/lang/Short;)V

    .line 205
    :goto_36d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HeartRate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/garmin/fit/RecordMesg;->getHeartRate()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    rem-int/lit16 v1, v4, 0xff

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/garmin/fit/RecordMesg;->setCadence(Ljava/lang/Short;)V

    const/16 v2, 0x9d

    if-ge v1, v2, :cond_394

    const/16 v1, 0x96

    goto :goto_396

    :cond_394
    const/16 v1, 0xfa

    .line 207
    :goto_396
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/RecordMesg;->setPower(Ljava/lang/Integer;)V

    int-to-double v1, v4

    const-wide v22, 0x406fe00000000000L    # 255.0

    rem-double v22, v1, v22

    .line 208
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    const-wide v24, 0x405fc00000000000L    # 127.0

    move-object v6, v11

    sub-double v10, v22, v24

    double-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/garmin/fit/RecordMesg;->setAltitude(Ljava/lang/Float;)V

    .line 211
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/app/AppApplication;->getaMapLocation()Lcom/keephealth/android/model/bean/LocationBean;

    move-result-object v10

    if-eqz v10, :cond_3f1

    .line 212
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/app/AppApplication;->getaMapLocation()Lcom/keephealth/android/model/bean/LocationBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/LocationBean;->getLatitude()D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/garmin/fit/RecordMesg;->setPositionLat(Ljava/lang/Integer;)V

    .line 213
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/app/AppApplication;->getaMapLocation()Lcom/keephealth/android/model/bean/LocationBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/LocationBean;->getLongitude()D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/garmin/fit/RecordMesg;->setPositionLong(Ljava/lang/Integer;)V

    move-object/from16 v21, v14

    move-object v11, v15

    move-object/from16 v10, v19

    goto :goto_40c

    :cond_3f1
    move-object/from16 v10, v19

    .line 215
    invoke-virtual {v5, v10}, Lcom/garmin/fit/RecordMesg;->setPositionLat(Ljava/lang/Integer;)V

    const-wide v18, 0x405acb126e978d50L    # 107.173

    mul-double v18, v18, v1

    move-object/from16 v21, v14

    move-object v11, v15

    .line 216
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/garmin/fit/RecordMesg;->setPositionLong(Ljava/lang/Integer;)V

    .line 221
    :goto_40c
    new-instance v14, Lcom/garmin/fit/DeveloperField;

    invoke-direct {v14, v12, v9}, Lcom/garmin/fit/DeveloperField;-><init>(Lcom/garmin/fit/FieldDescriptionMesg;Lcom/garmin/fit/DeveloperDataIdMesg;)V

    .line 222
    invoke-virtual {v5, v14}, Lcom/garmin/fit/RecordMesg;->addDeveloperField(Lcom/garmin/fit/DeveloperField;)V

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    mul-double v1, v1, v18

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    add-double v1, v1, v18

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v1, v1, v18

    .line 223
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v1, v1, v18

    double-to-int v1, v1

    int-to-short v1, v1

    int-to-double v1, v1

    mul-double v1, v1, v24

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/garmin/fit/DeveloperField;->setValue(Ljava/lang/Object;)V

    .line 226
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x1

    .line 229
    invoke-virtual {v8, v1, v2}, Lcom/garmin/fit/DateTime;->add(J)V

    goto :goto_449

    :cond_443
    move-object v6, v11

    move-object/from16 v21, v14

    move-object v11, v15

    move-object/from16 v10, v19

    :goto_449
    add-int/lit8 v4, v4, 0x1

    move-object v15, v11

    move-object/from16 v1, v16

    move-object/from16 v11, v21

    move-object/from16 v16, v6

    move-object v6, v10

    move-object/from16 v10, v20

    goto/16 :goto_2cf

    :cond_457
    move-object/from16 v16, v1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object v10, v6

    .line 239
    new-instance v0, Lcom/garmin/fit/EventMesg;

    invoke-direct {v0}, Lcom/garmin/fit/EventMesg;-><init>()V

    .line 240
    invoke-virtual {v0, v8}, Lcom/garmin/fit/EventMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 241
    sget-object v1, Lcom/garmin/fit/Event;->TIMER:Lcom/garmin/fit/Event;

    invoke-virtual {v0, v1}, Lcom/garmin/fit/EventMesg;->setEvent(Lcom/garmin/fit/Event;)V

    .line 242
    sget-object v1, Lcom/garmin/fit/EventType;->STOP_ALL:Lcom/garmin/fit/EventType;

    invoke-virtual {v0, v1}, Lcom/garmin/fit/EventMesg;->setEventType(Lcom/garmin/fit/EventType;)V

    .line 243
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eventMesgStop:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v0, Lcom/garmin/fit/LapMesg;

    invoke-direct {v0}, Lcom/garmin/fit/LapMesg;-><init>()V

    .line 247
    invoke-virtual {v0, v10}, Lcom/garmin/fit/LapMesg;->setMessageIndex(Ljava/lang/Integer;)V

    .line 248
    invoke-virtual {v0, v8}, Lcom/garmin/fit/LapMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    move-object/from16 v1, v20

    .line 249
    invoke-virtual {v0, v1}, Lcom/garmin/fit/LapMesg;->setStartTime(Lcom/garmin/fit/DateTime;)V

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "startTime:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/DateUtil;->computeTimeHMS(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "timestamp22:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/DateUtil;->computeTimeHMS(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v8}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v4, v11

    long-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/garmin/fit/LapMesg;->setTotalElapsedTime(Ljava/lang/Float;)V

    .line 253
    invoke-virtual {v8}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v4, v11

    long-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/garmin/fit/LapMesg;->setTotalTimerTime(Ljava/lang/Float;)V

    .line 254
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "lapMesg:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Lcom/garmin/fit/SessionMesg;

    invoke-direct {v0}, Lcom/garmin/fit/SessionMesg;-><init>()V

    .line 258
    invoke-virtual {v0, v10}, Lcom/garmin/fit/SessionMesg;->setMessageIndex(Ljava/lang/Integer;)V

    .line 259
    invoke-virtual {v0, v8}, Lcom/garmin/fit/SessionMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 260
    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setStartTime(Lcom/garmin/fit/DateTime;)V

    .line 261
    invoke-virtual {v8}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v4, v11

    long-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setTotalElapsedTime(Ljava/lang/Float;)V

    .line 262
    invoke-virtual {v8}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v4, v11

    long-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setTotalTimerTime(Ljava/lang/Float;)V

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "AppApplication.sportItem:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/keephealth/android/app/AppApplication;->sportItem:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget v2, Lcom/keephealth/android/app/AppApplication;->sportItem:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_58e

    .line 265
    sget-object v2, Lcom/garmin/fit/Sport;->RUNNING:Lcom/garmin/fit/Sport;

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setSport(Lcom/garmin/fit/Sport;)V

    .line 266
    sget-object v2, Lcom/garmin/fit/SubSport;->TREADMILL:Lcom/garmin/fit/SubSport;

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setSubSport(Lcom/garmin/fit/SubSport;)V

    goto :goto_5bd

    .line 267
    :cond_58e
    sget v2, Lcom/keephealth/android/app/AppApplication;->sportItem:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_59e

    .line 268
    sget-object v2, Lcom/garmin/fit/Sport;->WALKING:Lcom/garmin/fit/Sport;

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setSport(Lcom/garmin/fit/Sport;)V

    .line 269
    sget-object v2, Lcom/garmin/fit/SubSport;->CASUAL_WALKING:Lcom/garmin/fit/SubSport;

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setSubSport(Lcom/garmin/fit/SubSport;)V

    goto :goto_5bd

    .line 270
    :cond_59e
    sget v2, Lcom/keephealth/android/app/AppApplication;->sportItem:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5ae

    .line 271
    sget-object v2, Lcom/garmin/fit/Sport;->CYCLING:Lcom/garmin/fit/Sport;

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setSport(Lcom/garmin/fit/Sport;)V

    .line 272
    sget-object v2, Lcom/garmin/fit/SubSport;->TRACK_CYCLING:Lcom/garmin/fit/SubSport;

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setSubSport(Lcom/garmin/fit/SubSport;)V

    goto :goto_5bd

    .line 273
    :cond_5ae
    sget v2, Lcom/keephealth/android/app/AppApplication;->sportItem:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_5bd

    .line 274
    sget-object v2, Lcom/garmin/fit/Sport;->MOUNTAINEERING:Lcom/garmin/fit/Sport;

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setSport(Lcom/garmin/fit/Sport;)V

    .line 275
    sget-object v2, Lcom/garmin/fit/SubSport;->MOUNTAIN:Lcom/garmin/fit/SubSport;

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setSubSport(Lcom/garmin/fit/SubSport;)V

    .line 278
    :cond_5bd
    :goto_5bd
    invoke-virtual {v0, v10}, Lcom/garmin/fit/SessionMesg;->setFirstLapIndex(Ljava/lang/Integer;)V

    .line 279
    invoke-virtual {v0, v7}, Lcom/garmin/fit/SessionMesg;->setNumLaps(Ljava/lang/Integer;)V

    .line 280
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sessionMesg:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v2, Lcom/garmin/fit/DeveloperField;

    move-object/from16 v4, v21

    invoke-direct {v2, v4, v9}, Lcom/garmin/fit/DeveloperField;-><init>(Lcom/garmin/fit/FieldDescriptionMesg;Lcom/garmin/fit/DeveloperDataIdMesg;)V

    .line 284
    invoke-virtual {v0}, Lcom/garmin/fit/SessionMesg;->getTotalElapsedTime()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x44960000    # 1200.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/garmin/fit/DeveloperField;->setValue(Ljava/lang/Object;)V

    .line 285
    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->addDeveloperField(Lcom/garmin/fit/DeveloperField;)V

    .line 288
    new-instance v0, Lcom/garmin/fit/ActivityMesg;

    invoke-direct {v0}, Lcom/garmin/fit/ActivityMesg;-><init>()V

    .line 289
    invoke-virtual {v0, v8}, Lcom/garmin/fit/ActivityMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 290
    invoke-virtual {v0, v7}, Lcom/garmin/fit/ActivityMesg;->setNumSessions(Ljava/lang/Integer;)V

    .line 293
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 297
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    add-int/2addr v4, v2

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    .line 298
    invoke-virtual {v8}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/garmin/fit/ActivityMesg;->setLocalTimestamp(Ljava/lang/Long;)V

    .line 299
    invoke-virtual {v8}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/garmin/fit/ActivityMesg;->setTotalTimerTime(Ljava/lang/Float;)V

    .line 301
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "activityMesg:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    .line 303
    invoke-static {v0, v3, v2, v1}, Lcom/keephealth/android/util/StravaPostDataUtils;->CreateActivityFile(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/garmin/fit/DateTime;)V

    goto :goto_676

    :catch_66f
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_676
    :goto_676
    return-void

    nop

    :array_678
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x3t
        0x5t
        0x8t
        0xdt
        0x15t
        0x22t
        0x37t
        0x59t
        -0x70t
        -0x17t
        0x79t
        0x62t
        -0x25t
    .end array-data
.end method

.method public static getTimeFromTimestamp(J)Ljava/lang/String;
    .registers 4

    .line 416
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 417
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 418
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 420
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 422
    const-string p0, ""

    return-object p0
.end method
