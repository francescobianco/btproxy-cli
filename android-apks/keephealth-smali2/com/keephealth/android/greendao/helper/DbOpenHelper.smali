.class public Lcom/keephealth/android/greendao/helper/DbOpenHelper;
.super Lcom/keephealth/android/greendao/gen/DaoMaster$DevOpenHelper;
.source "DbOpenHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .registers 6

    if-ge p2, p3, :cond_84

    .line 41
    new-instance p2, Lcom/keephealth/android/greendao/helper/DbOpenHelper$1;

    invoke-direct {p2, p0}, Lcom/keephealth/android/greendao/helper/DbOpenHelper$1;-><init>(Lcom/keephealth/android/greendao/helper/DbOpenHelper;)V

    const/16 p3, 0x15

    new-array p3, p3, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-class v1, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    aput-object v1, p3, v0

    const/4 v0, 0x2

    const-class v1, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    aput-object v1, p3, v0

    const/4 v0, 0x3

    const-class v1, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;

    aput-object v1, p3, v0

    const/4 v0, 0x4

    const-class v1, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    aput-object v1, p3, v0

    const/4 v0, 0x5

    const-class v1, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    aput-object v1, p3, v0

    const/4 v0, 0x6

    const-class v1, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    aput-object v1, p3, v0

    const/4 v0, 0x7

    const-class v1, Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    aput-object v1, p3, v0

    const/16 v0, 0x8

    const-class v1, Lcom/keephealth/android/greendao/gen/HealthSportDao;

    aput-object v1, p3, v0

    const/16 v0, 0x9

    const-class v1, Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    aput-object v1, p3, v0

    const/16 v0, 0xa

    const-class v1, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    aput-object v1, p3, v0

    const/16 v0, 0xb

    const-class v1, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    aput-object v1, p3, v0

    const/16 v0, 0xc

    const-class v1, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    aput-object v1, p3, v0

    const/16 v0, 0xd

    const-class v1, Lcom/keephealth/android/greendao/gen/WeightDataDao;

    aput-object v1, p3, v0

    const/16 v0, 0xe

    const-class v1, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    aput-object v1, p3, v0

    const/16 v0, 0xf

    const-class v1, Lcom/keephealth/android/greendao/gen/TempInfoDao;

    aput-object v1, p3, v0

    const/16 v0, 0x10

    const-class v1, Lcom/keephealth/android/greendao/gen/MedalDataDao;

    aput-object v1, p3, v0

    const/16 v0, 0x11

    const-class v1, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    aput-object v1, p3, v0

    const/16 v0, 0x12

    const-class v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    aput-object v1, p3, v0

    const/16 v0, 0x13

    const-class v1, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;

    aput-object v1, p3, v0

    const/16 v0, 0x14

    const-class v1, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;

    aput-object v1, p3, v0

    invoke-static {p1, p2, p3}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->migrate(Lorg/greenrobot/greendao/database/Database;Lcom/keephealth/android/greendao/helper/MigrationHelper$ReCreateAllTableListener;[Ljava/lang/Class;)V

    :cond_84
    return-void
.end method
