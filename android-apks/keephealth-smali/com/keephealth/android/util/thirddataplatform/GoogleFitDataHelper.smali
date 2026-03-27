.class public Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;
.super Ljava/lang/Object;
.source "GoogleFitDataHelper.java"


# static fields
.field public static final LAST_SYS_TIME:Ljava/lang/String; = "LAST_SYS_TIME"


# instance fields
.field allCalory:F

.field allDistance:F

.field allSleep:I

.field avgRate:F

.field public currentUploadTime:J

.field height:F

.field isUpload:Z

.field lastUpdateItem:I

.field public lastUploadTime:J

.field private mAllData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSportItem;",
            ">;"
        }
    .end annotation
.end field

.field protected share:Lcom/keephealth/android/util/AppSharedPreferencesUtils;

.field simpleDateFormat:Ljava/text/SimpleDateFormat;

.field stepAllCount:I

.field weight:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->mAllData:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/keephealth/android/util/AppSharedPreferencesUtils;->getInstance()Lcom/keephealth/android/util/AppSharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->share:Lcom/keephealth/android/util/AppSharedPreferencesUtils;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->lastUpdateItem:I

    .line 37
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 48
    iput v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->stepAllCount:I

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->allDistance:F

    .line 52
    iput v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->allCalory:F

    .line 53
    iput v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->allSleep:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->isUpload:Z

    return-void
.end method

.method private initData()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->mAllData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->stepAllCount:I

    const/4 v1, 0x0

    .line 63
    iput v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->allDistance:F

    .line 64
    iput v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->allCalory:F

    .line 65
    iput v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->avgRate:F

    .line 66
    iput v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->allSleep:I

    return-void
.end method


# virtual methods
.method public getUploadData()V
    .registers 8

    .line 70
    invoke-direct {p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->initData()V

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->currentUploadTime:J

    .line 79
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 80
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "LAST_SYS_TIME"

    invoke-static {v3, v5, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->lastUploadTime:J

    cmp-long v3, v3, v0

    if-gez v3, :cond_46

    .line 83
    iput-wide v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->lastUploadTime:J

    .line 86
    :cond_46
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportItemDao()Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-wide v3, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->lastUploadTime:J

    .line 88
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->currentUploadTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v2

    .line 89
    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b5

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b5

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    .line 92
    iget v4, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->stepAllCount:I

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->stepAllCount:I

    .line 93
    iget v4, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->allDistance:F

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->allDistance:F

    .line 94
    iget v4, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->allCalory:F

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v3

    add-float/2addr v4, v3

    iput v4, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->allCalory:F

    goto :goto_8d

    .line 98
    :cond_b5
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-wide v4, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->lastUploadTime:J

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->currentUploadTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v3, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v2

    .line 101
    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11b

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11b

    move v3, v2

    .line 103
    :goto_f8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_11b

    .line 104
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    if-eqz v4, :cond_118

    .line 105
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->avgRate:F

    goto :goto_11b

    :cond_118
    add-int/lit8 v3, v3, 0x1

    goto :goto_f8

    .line 111
    :cond_11b
    :goto_11b
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-wide v4, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->lastUploadTime:J

    .line 113
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->currentUploadTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v3, v1, v2

    .line 114
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15f

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->allSleep:I

    :cond_15f
    return-void
.end method

.method public uploadSuccess()V
    .registers 4

    .line 122
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;->currentUploadTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LAST_SYS_TIME"

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
