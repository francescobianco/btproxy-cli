.class public Lcom/keephealth/android/base/BaseTimeViewmodel;
.super Lcom/keephealth/android/base/BaseViewModel;
.source "BaseTimeViewmodel.java"


# static fields
.field public static dateFormat:Ljava/text/SimpleDateFormat;

.field public static dateFormat2:Ljava/text/SimpleDateFormat;

.field public static dateFormat3:Ljava/text/SimpleDateFormat;

.field public static dateFormat4:Ljava/text/SimpleDateFormat;

.field public static endDate:Ljava/util/Date;

.field public static startDate:Ljava/util/Date;


# instance fields
.field public calendar:Ljava/util/Calendar;

.field public currentDate:Ljava/util/Date;

.field protected dates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected day:I

.field public index:I

.field protected mainVO:Lcom/keephealth/android/views/MainVO;

.field protected month:I

.field protected timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field protected year:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat2:Ljava/text/SimpleDateFormat;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat4:Ljava/text/SimpleDateFormat;

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat3:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseViewModel;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->currentDate:Ljava/util/Date;

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->index:I

    .line 44
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->dates:Ljava/util/List;

    return-void
.end method

.method private setHMS()V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;
    .registers 2

    .line 203
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setTimeType(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 204
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    .line 205
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->currentDate:Ljava/util/Date;

    const/4 p1, 0x0

    .line 206
    iput p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->index:I

    .line 207
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseTimeViewmodel;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object p1

    return-object p1
.end method

.method public currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/views/MainVO;
    .registers 3

    .line 192
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setTimeType(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    if-eqz p2, :cond_18

    if-eqz p1, :cond_18

    .line 195
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 197
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->currentDate:Ljava/util/Date;

    :cond_18
    const/4 p1, 0x0

    .line 199
    iput p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->index:I

    .line 200
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseTimeViewmodel;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object p1

    return-object p1
.end method

.method protected getByDate()Lcom/keephealth/android/views/MainVO;
    .registers 10

    .line 249
    new-instance v0, Lcom/keephealth/android/views/MainVO;

    invoke-direct {v0}, Lcom/keephealth/android/views/MainVO;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->year:I

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->month:I

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->day:I

    .line 253
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget v4, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->year:I

    .line 255
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v6, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->month:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->day:I

    .line 256
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v1

    .line 255
    invoke-virtual {v0, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v3, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v6

    .line 257
    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSport;

    if-eqz v0, :cond_7d

    .line 259
    iget-object v3, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v3, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    goto :goto_97

    .line 261
    :cond_7d
    new-instance v0, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/HealthSport;-><init>()V

    .line 262
    iget v3, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->year:I

    iget v4, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->month:I

    iget v5, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->day:I

    invoke-static {v3, v4, v5}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/keephealth/android/greendao/bean/HealthSport;->setDate(J)V

    .line 263
    iget-object v3, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v3, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    .line 265
    :goto_97
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget v4, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->year:I

    .line 267
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->day:I

    .line 268
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v1

    .line 267
    invoke-virtual {v0, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v3, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v6

    .line 269
    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 270
    const-string v3, ""

    if-eqz v0, :cond_128

    .line 271
    iget-object v4, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v4, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 272
    iget-object v4, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v7

    div-int/lit8 v7, v7, 0x3c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/keephealth/android/views/MainVO;->sleepHour:Ljava/lang/String;

    .line 273
    iget-object v4, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3c

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/keephealth/android/views/MainVO;->sleepMin:Ljava/lang/String;

    goto :goto_142

    .line 275
    :cond_128
    new-instance v0, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    .line 276
    iget v4, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->year:I

    iget v5, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->month:I

    iget v7, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->day:I

    invoke-static {v4, v5, v7}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDate(J)V

    .line 277
    iget-object v4, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v4, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 279
    :goto_142
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget v5, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->year:I

    .line 281
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v5, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v8, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->month:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v8, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->day:I

    .line 282
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v1

    .line 281
    invoke-virtual {v0, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v4, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v6

    .line 283
    invoke-virtual {v0, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v0, :cond_1b4

    .line 285
    iget-object v4, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v4, Lcom/keephealth/android/views/MainVO;->healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 286
    iget-object v4, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/keephealth/android/views/MainVO;->heartRate:Ljava/lang/String;

    goto :goto_1ce

    .line 288
    :cond_1b4
    new-instance v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    .line 289
    iget v4, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->year:I

    iget v5, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->month:I

    iget v7, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->day:I

    invoke-static {v4, v5, v7}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDate(J)V

    .line 290
    iget-object v4, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v4, Lcom/keephealth/android/views/MainVO;->healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 292
    :goto_1ce
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget v5, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->year:I

    .line 294
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v2, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->day:I

    .line 295
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v2, v1

    .line 294
    invoke-virtual {v0, v4, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, v2, v6

    .line 296
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthActivity;

    if-eqz v0, :cond_234

    .line 299
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v2

    div-int/lit8 v6, v2, 0x3c

    .line 300
    iget-object v2, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/CacheHelper;->getSportName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/keephealth/android/views/MainVO;->sportType:Ljava/lang/String;

    .line 302
    :cond_234
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput v6, v0, Lcom/keephealth/android/views/MainVO;->sportTotalTime:I

    .line 303
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v6, 0x3c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/views/MainVO;->sportHour:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v6, v6, 0x3c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/views/MainVO;->sportMin:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-eqz v0, :cond_2b2

    .line 306
    sget-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v2, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_2a2

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat3:Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/keephealth/android/base/BaseTimeViewmodel;->endDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff5e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat3:Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    goto :goto_2b2

    .line 308
    :cond_2a2
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    sget-object v1, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat3:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    .line 315
    :cond_2b2
    :goto_2b2
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->mainVO:Lcom/keephealth/android/views/MainVO;

    return-object v0
.end method

.method protected getDayRemark(I)Ljava/lang/String;
    .registers 5

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v1, p1, 0xf

    div-int/lit8 v2, v1, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02d:%02d"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0xf

    div-int/lit8 v1, p1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getDayRemark(II)Ljava/lang/String;
    .registers 6

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int v1, p1, p2

    div-int/lit8 v2, v1, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02d:%02d"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, p2

    div-int/lit8 p2, p1, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWeekStr(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 5

    .line 53
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, -0x6

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat3:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat3:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 5

    .line 58
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, -0x6

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ~ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isDateEquals(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-nez p2, :cond_7

    return v0

    .line 76
    :cond_7
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/Date;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_26

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_26

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result p1

    invoke-virtual {p2}, Ljava/util/Date;->getDate()I

    move-result p2

    if-ne p1, p2, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0
.end method

.method protected isEndMonth(III)Z
    .registers 4

    .line 87
    invoke-static {p1, p2}, Lcom/keephealth/android/util/DateUtil;->dayOfMonth(II)I

    move-result p1

    if-ne p3, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method protected isWeek(ILjava/util/Calendar;)Z
    .registers 6

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 345
    rem-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_1a

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sget-object v1, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    return v0
.end method

.method public nextDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;
    .registers 8

    .line 210
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setTimeType(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 211
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 212
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 213
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_2a

    .line 214
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseTimeViewmodel;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object p1

    return-object p1

    .line 216
    :cond_2a
    sget-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v2, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v2

    aget p1, p1, v2

    if-eq p1, v1, :cond_97

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7a

    const/4 v3, 0x3

    if-eq p1, v3, :cond_5d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_40

    goto :goto_9c

    .line 233
    :cond_40
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 234
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->endDate:Ljava/util/Date;

    .line 235
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v0, -0xb

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    goto :goto_9c

    .line 227
    :cond_5d
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 228
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->endDate:Ljava/util/Date;

    .line 229
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb4

    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 230
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    goto :goto_9c

    .line 221
    :cond_7a
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 222
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->endDate:Ljava/util/Date;

    .line 223
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v2, 0x1e

    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 224
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    goto :goto_9c

    .line 218
    :cond_97
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 240
    :goto_9c
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->currentDate:Ljava/util/Date;

    .line 241
    iget p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->index:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->index:I

    .line 242
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseTimeViewmodel;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object p1

    return-object p1
.end method

.method public preDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;
    .registers 6

    .line 162
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setTimeType(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 163
    sget-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p1, v0, :cond_72

    const/4 v2, 0x2

    if-eq p1, v2, :cond_55

    const/4 v3, 0x3

    if-eq p1, v3, :cond_38

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1b

    goto :goto_78

    .line 180
    :cond_1b
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    .line 181
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, -0xb

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 182
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 183
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->endDate:Ljava/util/Date;

    goto :goto_78

    .line 174
    :cond_38
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    .line 175
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v2, -0xb4

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 176
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 177
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->endDate:Ljava/util/Date;

    goto :goto_78

    .line 168
    :cond_55
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    .line 169
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v2, -0x1e

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 170
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 171
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->endDate:Ljava/util/Date;

    goto :goto_78

    .line 165
    :cond_72
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 187
    :goto_78
    iget p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->index:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->index:I

    .line 188
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->currentDate:Ljava/util/Date;

    .line 189
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseTimeViewmodel;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object p1

    return-object p1
.end method

.method protected setCalendarZero(Ljava/util/Calendar;)V
    .registers 4

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 318
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 319
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 320
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected setCalendarZero(Ljava/util/Date;)V
    .registers 3

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p1, v0}, Ljava/util/Date;->setHours(I)V

    .line 324
    invoke-virtual {p1, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 325
    invoke-virtual {p1, v0}, Ljava/util/Date;->setSeconds(I)V

    return-void
.end method

.method protected setDateLabel(ILjava/util/Calendar;I)V
    .registers 8

    .line 328
    sget-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 p1, 0x4

    if-eq v0, p1, :cond_14

    goto :goto_61

    .line 340
    :cond_14
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->dates:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%02d"

    invoke-static {p3, p2}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 335
    :cond_28
    rem-int/lit8 p1, p1, 0x1c

    if-eqz p1, :cond_3e

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object p1, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_61

    .line 336
    :cond_3e
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->dates:Ljava/util/List;

    sget-object p3, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 330
    :cond_4e
    rem-int/lit8 p1, p1, 0x6

    if-nez p1, :cond_61

    .line 331
    iget-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->dates:Ljava/util/List;

    sget-object p3, Lcom/keephealth/android/base/BaseTimeViewmodel;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    :goto_61
    return-void
.end method

.method public setOneMonth()V
    .registers 6

    .line 90
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, 0x17

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    const/16 v3, 0x3b

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel;->endDate:Ljava/util/Date;

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->year:I

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->month:I

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->day:I

    return-void
.end method

.method public setOneWeek()V
    .registers 5

    .line 131
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->WEEK:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/16 v2, 0x17

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v1, -0x7

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel;->endDate:Ljava/util/Date;

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->year:I

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->month:I

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->day:I

    return-void
.end method

.method public setSixMonth()V
    .registers 6

    .line 108
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "WEEK_START_DAY_INDEX"

    invoke-static {v0, v3, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 113
    iget-object v2, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lcom/keephealth/android/util/ProDbUtils;->getWeekEndDate(II)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 115
    iget-object v1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 116
    iget-object v1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 117
    iget-object v1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    const/16 v4, 0x3b

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 118
    iget-object v1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 119
    iget-object v1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    .line 121
    iget-object v1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-static {v3, v0}, Lcom/keephealth/android/util/ProDbUtils;->getWeekStartDate(II)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel;->endDate:Ljava/util/Date;

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->year:I

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->month:I

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->day:I

    return-void
.end method

.method public setTimeType(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    return-void
.end method

.method public setYear()V
    .registers 4

    .line 146
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel;->startDate:Ljava/util/Date;

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/16 v1, -0xb

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseTimeViewmodel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/base/BaseTimeViewmodel;->endDate:Ljava/util/Date;

    .line 156
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->year:I

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->month:I

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/base/BaseTimeViewmodel;->day:I

    return-void
.end method
