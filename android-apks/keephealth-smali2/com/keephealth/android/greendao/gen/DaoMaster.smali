.class public Lcom/keephealth/android/greendao/gen/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/DaoMaster$DevOpenHelper;,
        Lcom/keephealth/android/greendao/gen/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x31


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 93
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/keephealth/android/greendao/gen/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .registers 3

    const/16 v0, 0x31

    .line 97
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    .line 98
    const-class p1, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 99
    const-class p1, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 100
    const-class p1, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 101
    const-class p1, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 102
    const-class p1, Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 103
    const-class p1, Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 104
    const-class p1, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 105
    const-class p1, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 106
    const-class p1, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 107
    const-class p1, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 108
    const-class p1, Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 109
    const-class p1, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 110
    const-class p1, Lcom/keephealth/android/greendao/gen/HealthSportDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 111
    const-class p1, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 112
    const-class p1, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 113
    const-class p1, Lcom/keephealth/android/greendao/gen/TempInfoDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 114
    const-class p1, Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 115
    const-class p1, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 116
    const-class p1, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 117
    const-class p1, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 118
    const-class p1, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 119
    const-class p1, Lcom/keephealth/android/greendao/gen/WeightDataDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 120
    const-class p1, Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 121
    const-class p1, Lcom/keephealth/android/greendao/gen/MedalDataDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 122
    const-class p1, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 123
    const-class p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 2

    .line 24
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 25
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 26
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 27
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 28
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 29
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 30
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 31
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 32
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 33
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 34
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 35
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 36
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 37
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 38
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 39
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 40
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 41
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 42
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 43
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 44
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 45
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 46
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 47
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 48
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 49
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 2

    .line 54
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 55
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 56
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 57
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 58
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 59
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 60
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 61
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 62
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 63
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 64
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 65
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 66
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 67
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 68
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 69
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 70
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 71
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 72
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 73
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 74
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 75
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 76
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 77
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 78
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 79
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/greendao/gen/DaoSession;
    .registers 3

    .line 87
    new-instance v0, Lcom/keephealth/android/greendao/gen/DaoMaster$DevOpenHelper;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoMaster$DevOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p0

    .line 88
    new-instance p1, Lcom/keephealth/android/greendao/gen/DaoMaster;

    invoke-direct {p1, p0}, Lcom/keephealth/android/greendao/gen/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 89
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->newSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public newSession()Lcom/keephealth/android/greendao/gen/DaoSession;
    .registers 5

    .line 127
    new-instance v0, Lcom/keephealth/android/greendao/gen/DaoSession;

    iget-object v1, p0, Lcom/keephealth/android/greendao/gen/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/keephealth/android/greendao/gen/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/greendao/gen/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/keephealth/android/greendao/gen/DaoSession;
    .registers 5

    .line 131
    new-instance v0, Lcom/keephealth/android/greendao/gen/DaoSession;

    iget-object v1, p0, Lcom/keephealth/android/greendao/gen/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lcom/keephealth/android/greendao/gen/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/greendao/gen/DaoMaster;->newSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p1

    return-object p1
.end method
