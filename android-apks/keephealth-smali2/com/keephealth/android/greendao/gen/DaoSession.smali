.class public Lcom/keephealth/android/greendao/gen/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

.field private final dialDetailBDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final drinkWaterDayBeanDao:Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

.field private final drinkWaterDayBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final drinkWaterDayItemDao:Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

.field private final drinkWaterDayItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

.field private final drinkWaterGoalDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final eCGItemInfoDao:Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;

.field private final eCGItemInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final ecgRecordInfoDao:Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

.field private final ecgRecordInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final hRVDayDataBeanDao:Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;

.field private final hRVDayDataBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final hRVItemBeanDao:Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;

.field private final hRVItemBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final healthActivityDao:Lcom/keephealth/android/greendao/gen/HealthActivityDao;

.field private final healthActivityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final healthBloodDao:Lcom/keephealth/android/greendao/gen/HealthBloodDao;

.field private final healthBloodDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final healthBloodItemDao:Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

.field private final healthBloodItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final healthGpsItemDao:Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

.field private final healthGpsItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final healthHeartRateDao:Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

.field private final healthHeartRateDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final healthHeartRateItemDao:Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

.field private final healthHeartRateItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final healthSleepDao:Lcom/keephealth/android/greendao/gen/HealthSleepDao;

.field private final healthSleepDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final healthSleepItemDao:Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

.field private final healthSleepItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final healthSportDao:Lcom/keephealth/android/greendao/gen/HealthSportDao;

.field private final healthSportDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final healthSportItemDao:Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

.field private final healthSportItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

.field private final mainMenuSetDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final medalDataDao:Lcom/keephealth/android/greendao/gen/MedalDataDao;

.field private final medalDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

.field private final preMenstrualDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final tempDayInfoDao:Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

.field private final tempDayInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final tempInfoDao:Lcom/keephealth/android/greendao/gen/TempInfoDao;

.field private final tempInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final weightDataDao:Lcom/keephealth/android/greendao/gen/WeightDataDao;

.field private final weightDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final weightTargerDataDao:Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

.field private final weightTargerDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

.field private final womenHealthBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 130
    invoke-direct/range {p0 .. p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 132
    const-class v3, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->eCGItemInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 133
    invoke-virtual {v3, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 135
    const-class v4, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v4

    iput-object v4, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->ecgRecordInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 136
    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 138
    const-class v5, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v5}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v5

    iput-object v5, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->hRVDayDataBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 139
    invoke-virtual {v5, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 141
    const-class v6, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v6}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v6

    iput-object v6, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->hRVItemBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 142
    invoke-virtual {v6, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 144
    const-class v7, Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v7}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v7

    iput-object v7, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthActivityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 145
    invoke-virtual {v7, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 147
    const-class v8, Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v8}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v8

    iput-object v8, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthBloodDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 148
    invoke-virtual {v8, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 150
    const-class v9, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v9}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v9

    iput-object v9, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthBloodItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 151
    invoke-virtual {v9, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 153
    const-class v10, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v10}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v10

    iput-object v10, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthGpsItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 154
    invoke-virtual {v10, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 156
    const-class v11, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v11}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v11

    iput-object v11, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthHeartRateDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 157
    invoke-virtual {v11, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 159
    const-class v12, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v12}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v12

    iput-object v12, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthHeartRateItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 160
    invoke-virtual {v12, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 162
    const-class v13, Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v13}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v13

    iput-object v13, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSleepDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 163
    invoke-virtual {v13, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 165
    const-class v14, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v14}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v14

    iput-object v14, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSleepItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 166
    invoke-virtual {v14, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 168
    const-class v15, Lcom/keephealth/android/greendao/gen/HealthSportDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSportDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 169
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 p1, v15

    .line 171
    const-class v15, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSportItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 172
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 v16, v15

    .line 174
    const-class v15, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->tempDayInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 175
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 v17, v15

    .line 177
    const-class v15, Lcom/keephealth/android/greendao/gen/TempInfoDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->tempInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 178
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 v18, v15

    .line 180
    const-class v15, Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->dialDetailBDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 181
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 v19, v15

    .line 183
    const-class v15, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->drinkWaterDayBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 184
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 v20, v15

    .line 186
    const-class v15, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->drinkWaterDayItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 187
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 v21, v15

    .line 189
    const-class v15, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->drinkWaterGoalDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 190
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 v22, v15

    .line 192
    const-class v15, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->mainMenuSetDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 193
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 v23, v15

    .line 195
    const-class v15, Lcom/keephealth/android/greendao/gen/WeightDataDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->weightDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 196
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 v24, v15

    .line 198
    const-class v15, Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->weightTargerDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 199
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 v25, v15

    .line 201
    const-class v15, Lcom/keephealth/android/greendao/gen/MedalDataDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->medalDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 202
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 v26, v15

    .line 204
    const-class v15, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v15}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->preMenstrualDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 205
    invoke-virtual {v15, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    move-object/from16 v27, v15

    .line 207
    const-class v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->womenHealthBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 208
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 210
    new-instance v1, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;

    invoke-direct {v1, v3, v0}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v1, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->eCGItemInfoDao:Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;

    .line 211
    new-instance v3, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    invoke-direct {v3, v4, v0}, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v3, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->ecgRecordInfoDao:Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    .line 212
    new-instance v4, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;

    invoke-direct {v4, v5, v0}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v4, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->hRVDayDataBeanDao:Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;

    .line 213
    new-instance v5, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;

    invoke-direct {v5, v6, v0}, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v5, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->hRVItemBeanDao:Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;

    .line 214
    new-instance v6, Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    invoke-direct {v6, v7, v0}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v6, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthActivityDao:Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    .line 215
    new-instance v7, Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    invoke-direct {v7, v8, v0}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v7, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthBloodDao:Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    .line 216
    new-instance v8, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    invoke-direct {v8, v9, v0}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v8, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthBloodItemDao:Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    .line 217
    new-instance v9, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    invoke-direct {v9, v10, v0}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v9, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthGpsItemDao:Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    .line 218
    new-instance v10, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    invoke-direct {v10, v11, v0}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v10, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthHeartRateDao:Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    .line 219
    new-instance v11, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    invoke-direct {v11, v12, v0}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v11, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthHeartRateItemDao:Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    .line 220
    new-instance v12, Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    invoke-direct {v12, v13, v0}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v12, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSleepDao:Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    .line 221
    new-instance v13, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    invoke-direct {v13, v14, v0}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v13, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSleepItemDao:Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    .line 222
    new-instance v14, Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-object/from16 v15, p1

    invoke-direct {v14, v15, v0}, Lcom/keephealth/android/greendao/gen/HealthSportDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v14, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSportDao:Lcom/keephealth/android/greendao/gen/HealthSportDao;

    .line 223
    new-instance v15, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    move-object/from16 p1, v14

    move-object/from16 v14, v16

    invoke-direct {v15, v14, v0}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSportItemDao:Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    .line 224
    new-instance v14, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    move-object/from16 p2, v15

    move-object/from16 v15, v17

    invoke-direct {v14, v15, v0}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v14, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->tempDayInfoDao:Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    .line 225
    new-instance v15, Lcom/keephealth/android/greendao/gen/TempInfoDao;

    move-object/from16 p3, v14

    move-object/from16 v14, v18

    invoke-direct {v15, v14, v0}, Lcom/keephealth/android/greendao/gen/TempInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->tempInfoDao:Lcom/keephealth/android/greendao/gen/TempInfoDao;

    .line 226
    new-instance v14, Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-object/from16 v16, v15

    move-object/from16 v15, v19

    invoke-direct {v14, v15, v0}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v14, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    .line 227
    new-instance v15, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-object/from16 v17, v14

    move-object/from16 v14, v20

    invoke-direct {v15, v14, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->drinkWaterDayBeanDao:Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    .line 228
    new-instance v14, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-object/from16 v18, v15

    move-object/from16 v15, v21

    invoke-direct {v14, v15, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v14, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->drinkWaterDayItemDao:Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    .line 229
    new-instance v15, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    move-object/from16 v19, v14

    move-object/from16 v14, v22

    invoke-direct {v15, v14, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    .line 230
    new-instance v14, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    move-object/from16 v20, v15

    move-object/from16 v15, v23

    invoke-direct {v14, v15, v0}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v14, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    .line 231
    new-instance v15, Lcom/keephealth/android/greendao/gen/WeightDataDao;

    move-object/from16 v21, v14

    move-object/from16 v14, v24

    invoke-direct {v15, v14, v0}, Lcom/keephealth/android/greendao/gen/WeightDataDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->weightDataDao:Lcom/keephealth/android/greendao/gen/WeightDataDao;

    .line 232
    new-instance v14, Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    move-object/from16 v22, v15

    move-object/from16 v15, v25

    invoke-direct {v14, v15, v0}, Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v14, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->weightTargerDataDao:Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    .line 233
    new-instance v15, Lcom/keephealth/android/greendao/gen/MedalDataDao;

    move-object/from16 v23, v14

    move-object/from16 v14, v26

    invoke-direct {v15, v14, v0}, Lcom/keephealth/android/greendao/gen/MedalDataDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->medalDataDao:Lcom/keephealth/android/greendao/gen/MedalDataDao;

    .line 234
    new-instance v14, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-object/from16 v24, v15

    move-object/from16 v15, v27

    invoke-direct {v14, v15, v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v14, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    .line 235
    new-instance v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-direct {v15, v2, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V

    iput-object v15, v0, Lcom/keephealth/android/greendao/gen/DaoSession;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    .line 237
    const-class v2, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 238
    const-class v1, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 239
    const-class v1, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-virtual {v0, v1, v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 240
    const-class v1, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    invoke-virtual {v0, v1, v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 241
    const-class v1, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v0, v1, v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 242
    const-class v1, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-virtual {v0, v1, v7}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 243
    const-class v1, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v0, v1, v8}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 244
    const-class v1, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {v0, v1, v9}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 245
    const-class v1, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v0, v1, v10}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 246
    const-class v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v0, v1, v11}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 247
    const-class v1, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v0, v1, v12}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 248
    const-class v1, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v0, v1, v13}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 249
    const-class v1, Lcom/keephealth/android/greendao/bean/HealthSport;

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 250
    const-class v1, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 251
    const-class v1, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 252
    const-class v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 253
    const-class v1, Lcom/keephealth/android/model/bean/DialDetailB;

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 254
    const-class v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 255
    const-class v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 256
    const-class v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 257
    const-class v1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 258
    const-class v1, Lcom/keephealth/android/ui/main/bean/WeightData;

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 259
    const-class v1, Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 260
    const-class v1, Lcom/keephealth/android/ui/mine/bean/MedalData;

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 261
    const-class v1, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0, v1, v14}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 262
    const-class v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v1, v15}, Lcom/keephealth/android/greendao/gen/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->eCGItemInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 267
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->ecgRecordInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 268
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->hRVDayDataBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->hRVItemBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthActivityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 271
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthBloodDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 272
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthBloodItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 273
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthGpsItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 274
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthHeartRateDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthHeartRateItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSleepDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSleepItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSportDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSportItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->tempDayInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->tempInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->dialDetailBDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->drinkWaterDayBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->drinkWaterDayItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 285
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->drinkWaterGoalDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 286
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->mainMenuSetDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 287
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->weightDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 288
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->weightTargerDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 289
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->medalDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 290
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->preMenstrualDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 291
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->womenHealthBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getDialDetailBDao()Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    return-object v0
.end method

.method public getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->drinkWaterDayBeanDao:Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    return-object v0
.end method

.method public getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->drinkWaterDayItemDao:Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    return-object v0
.end method

.method public getDrinkWaterGoalDao()Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    return-object v0
.end method

.method public getECGItemInfoDao()Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->eCGItemInfoDao:Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;

    return-object v0
.end method

.method public getEcgRecordInfoDao()Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->ecgRecordInfoDao:Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    return-object v0
.end method

.method public getHRVDayDataBeanDao()Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->hRVDayDataBeanDao:Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;

    return-object v0
.end method

.method public getHRVItemBeanDao()Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->hRVItemBeanDao:Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;

    return-object v0
.end method

.method public getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthActivityDao:Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    return-object v0
.end method

.method public getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthBloodDao:Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    return-object v0
.end method

.method public getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthBloodItemDao:Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    return-object v0
.end method

.method public getHealthGpsItemDao()Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthGpsItemDao:Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    return-object v0
.end method

.method public getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthHeartRateDao:Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    return-object v0
.end method

.method public getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthHeartRateItemDao:Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    return-object v0
.end method

.method public getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSleepDao:Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    return-object v0
.end method

.method public getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSleepItemDao:Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    return-object v0
.end method

.method public getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSportDao:Lcom/keephealth/android/greendao/gen/HealthSportDao;

    return-object v0
.end method

.method public getHealthSportItemDao()Lcom/keephealth/android/greendao/gen/HealthSportItemDao;
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->healthSportItemDao:Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    return-object v0
.end method

.method public getMainMenuSetDao()Lcom/keephealth/android/greendao/gen/MainMenuSetDao;
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    return-object v0
.end method

.method public getMedalDataDao()Lcom/keephealth/android/greendao/gen/MedalDataDao;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->medalDataDao:Lcom/keephealth/android/greendao/gen/MedalDataDao;

    return-object v0
.end method

.method public getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    return-object v0
.end method

.method public getTempDayInfoDao()Lcom/keephealth/android/greendao/gen/TempDayInfoDao;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->tempDayInfoDao:Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    return-object v0
.end method

.method public getTempInfoDao()Lcom/keephealth/android/greendao/gen/TempInfoDao;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->tempInfoDao:Lcom/keephealth/android/greendao/gen/TempInfoDao;

    return-object v0
.end method

.method public getWeightDataDao()Lcom/keephealth/android/greendao/gen/WeightDataDao;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->weightDataDao:Lcom/keephealth/android/greendao/gen/WeightDataDao;

    return-object v0
.end method

.method public getWeightTargerDataDao()Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->weightTargerDataDao:Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    return-object v0
.end method

.method public getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;
    .registers 2

    .line 395
    iget-object v0, p0, Lcom/keephealth/android/greendao/gen/DaoSession;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    return-object v0
.end method
