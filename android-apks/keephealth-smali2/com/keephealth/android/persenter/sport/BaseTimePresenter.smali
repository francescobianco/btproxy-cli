.class public abstract Lcom/keephealth/android/persenter/sport/BaseTimePresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "BaseTimePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/keephealth/android/base/IBaseView;",
        ">",
        "Lcom/keephealth/android/base/BasePersenter<",
        "TV;>;"
    }
.end annotation


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

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat3:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->currentDate:Ljava/util/Date;

    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->index:I

    .line 49
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dates:Ljava/util/List;

    return-void
.end method

.method private setHMS()V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;
    .registers 2

    .line 217
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setTimeType(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    .line 219
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->currentDate:Ljava/util/Date;

    const/4 p1, 0x0

    .line 220
    iput p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->index:I

    .line 221
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object p1

    return-object p1
.end method

.method public currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/views/MainVO;
    .registers 3

    .line 206
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setTimeType(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 207
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    if-eqz p2, :cond_18

    if-eqz p1, :cond_18

    .line 209
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 211
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->currentDate:Ljava/util/Date;

    :cond_18
    const/4 p1, 0x0

    .line 213
    iput p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->index:I

    .line 214
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object p1

    return-object p1
.end method

.method protected getByDate()Lcom/keephealth/android/views/MainVO;
    .registers 10

    .line 263
    new-instance v0, Lcom/keephealth/android/views/MainVO;

    invoke-direct {v0}, Lcom/keephealth/android/views/MainVO;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->year:I

    .line 265
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->month:I

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->day:I

    .line 267
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget v4, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->year:I

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v6, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->month:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->day:I

    .line 270
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v1

    .line 269
    invoke-virtual {v0, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v3, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v6

    .line 271
    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSport;

    if-eqz v0, :cond_7d

    .line 273
    iget-object v3, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v3, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    goto :goto_97

    .line 275
    :cond_7d
    new-instance v0, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/HealthSport;-><init>()V

    .line 276
    iget v3, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->year:I

    iget v4, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->month:I

    iget v5, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->day:I

    invoke-static {v3, v4, v5}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/keephealth/android/greendao/bean/HealthSport;->setDate(J)V

    .line 277
    iget-object v3, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v3, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    .line 279
    :goto_97
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget v4, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->year:I

    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->day:I

    .line 282
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v1

    .line 281
    invoke-virtual {v0, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v3, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v6

    .line 283
    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 284
    const-string v3, ""

    if-eqz v0, :cond_128

    .line 285
    iget-object v4, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v4, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 286
    iget-object v4, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

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

    .line 287
    iget-object v4, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

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

    .line 289
    :cond_128
    new-instance v0, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    .line 290
    iget v4, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->year:I

    iget v5, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->month:I

    iget v7, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->day:I

    invoke-static {v4, v5, v7}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDate(J)V

    .line 291
    iget-object v4, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v4, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 293
    :goto_142
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget v5, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->year:I

    .line 295
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v5, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v8, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->month:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v8, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->day:I

    .line 296
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v1

    .line 295
    invoke-virtual {v0, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v4, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v6

    .line 297
    invoke-virtual {v0, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v0, :cond_1b4

    .line 299
    iget-object v4, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v4, Lcom/keephealth/android/views/MainVO;->healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 300
    iget-object v4, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

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

    .line 302
    :cond_1b4
    new-instance v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    .line 303
    iget v4, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->year:I

    iget v5, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->month:I

    iget v7, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->day:I

    invoke-static {v4, v5, v7}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDate(J)V

    .line 304
    iget-object v4, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v4, Lcom/keephealth/android/views/MainVO;->healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 306
    :goto_1ce
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget v5, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->year:I

    .line 308
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v2, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->day:I

    .line 309
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v2, v1

    .line 308
    invoke-virtual {v0, v4, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, v2, v6

    .line 310
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthActivity;

    if-eqz v0, :cond_234

    .line 313
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v2

    div-int/lit8 v6, v2, 0x3c

    .line 314
    iget-object v2, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/CacheHelper;->getSportName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/keephealth/android/views/MainVO;->sportType:Ljava/lang/String;

    .line 316
    :cond_234
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput v6, v0, Lcom/keephealth/android/views/MainVO;->sportTotalTime:I

    .line 317
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

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

    .line 318
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

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

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-eqz v0, :cond_2b2

    .line 320
    sget-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v2, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_2a2

    .line 325
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat3:Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff5e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat3:Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    goto :goto_2b2

    .line 322
    :cond_2a2
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    sget-object v1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat3:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    .line 329
    :cond_2b2
    :goto_2b2
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    return-object v0
.end method

.method protected getDayRemark(I)Ljava/lang/String;
    .registers 5

    .line 69
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

    .line 72
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

    sget-object v2, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat3:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat3:Ljava/text/SimpleDateFormat;

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

    .line 63
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, -0x6

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ~ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

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

    .line 81
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

    .line 92
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

    .line 359
    rem-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_1a

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sget-object v1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

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

    .line 224
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setTimeType(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 225
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 226
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 227
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

    .line 228
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object p1

    return-object p1

    .line 230
    :cond_2a
    sget-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v2, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

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

    .line 247
    :cond_40
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 248
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    .line 249
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v0, -0xb

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 250
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    goto :goto_9c

    .line 241
    :cond_5d
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 242
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    .line 243
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb4

    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 244
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    goto :goto_9c

    .line 235
    :cond_7a
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    .line 237
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v2, 0x1e

    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 238
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    goto :goto_9c

    .line 232
    :cond_97
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 254
    :goto_9c
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->currentDate:Ljava/util/Date;

    .line 255
    iget p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->index:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->index:I

    .line 256
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object p1

    return-object p1
.end method

.method public preDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;
    .registers 6

    .line 176
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setTimeType(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 177
    sget-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

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

    .line 194
    :cond_1b
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    .line 195
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, -0xb

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 196
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 197
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    goto :goto_78

    .line 188
    :cond_38
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    .line 189
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v2, -0xb4

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 190
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 191
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    goto :goto_78

    .line 182
    :cond_55
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    .line 183
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v2, -0x1e

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 184
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 185
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    goto :goto_78

    .line 179
    :cond_72
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 201
    :goto_78
    iget p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->index:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->index:I

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->currentDate:Ljava/util/Date;

    .line 203
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object p1

    return-object p1
.end method

.method protected setCalendarZero(Ljava/util/Calendar;)V
    .registers 4

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 333
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 334
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected setCalendarZero(Ljava/util/Date;)V
    .registers 3

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p1, v0}, Ljava/util/Date;->setHours(I)V

    .line 338
    invoke-virtual {p1, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 339
    invoke-virtual {p1, v0}, Ljava/util/Date;->setSeconds(I)V

    return-void
.end method

.method protected setDateLabel(ILjava/util/Calendar;I)V
    .registers 8

    .line 342
    sget-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

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

    .line 354
    :cond_14
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dates:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%02d"

    invoke-static {p3, p2}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 349
    :cond_28
    rem-int/lit8 p1, p1, 0x1c

    if-eqz p1, :cond_3e

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object p1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_61

    .line 350
    :cond_3e
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dates:Ljava/util/List;

    sget-object p3, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 344
    :cond_4e
    rem-int/lit8 p1, p1, 0x6

    if-nez p1, :cond_61

    .line 345
    iget-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dates:Ljava/util/List;

    sget-object p3, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

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

    .line 95
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, 0x17

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    const/16 v3, 0x3b

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->year:I

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->month:I

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->day:I

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start date:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "end date:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   end date:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trtr4r"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOneWeek()V
    .registers 5

    .line 141
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->WEEK:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/16 v2, 0x17

    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v1, -0x7

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->year:I

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->month:I

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->day:I

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start date:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end date:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setSixMonth()V
    .registers 6

    .line 116
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
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

    .line 121
    iget-object v2, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lcom/keephealth/android/util/ProDbUtils;->getWeekEndDate(II)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 124
    iget-object v1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 125
    iget-object v1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 126
    iget-object v1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    const/16 v4, 0x3b

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 127
    iget-object v1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 128
    iget-object v1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    .line 130
    iget-object v1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-static {v3, v0}, Lcom/keephealth/android/util/ProDbUtils;->getWeekStartDate(II)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->year:I

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->month:I

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->day:I

    return-void
.end method

.method public setTimeType(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    return-void
.end method

.method public setYear()V
    .registers 4

    .line 158
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/16 v1, -0xb

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    .line 168
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->year:I

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->month:I

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->day:I

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start date:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end date:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
