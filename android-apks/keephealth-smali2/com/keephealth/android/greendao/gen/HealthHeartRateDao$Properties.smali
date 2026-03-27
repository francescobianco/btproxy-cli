.class public Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;
.super Ljava/lang/Object;
.source "HealthHeartRateDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Aerobic_mins:Lorg/greenrobot/greendao/Property;

.field public static final Aerobic_threshold:Lorg/greenrobot/greendao/Property;

.field public static final AvgDayHr:Lorg/greenrobot/greendao/Property;

.field public static final AvgHr:Lorg/greenrobot/greendao/Property;

.field public static final Burn_fat_mins:Lorg/greenrobot/greendao/Property;

.field public static final Burn_fat_threshold:Lorg/greenrobot/greendao/Property;

.field public static final Date:Lorg/greenrobot/greendao/Property;

.field public static final Day:Lorg/greenrobot/greendao/Property;

.field public static final Fz:Lorg/greenrobot/greendao/Property;

.field public static final Hrv:Lorg/greenrobot/greendao/Property;

.field public static final IsUploaded:Lorg/greenrobot/greendao/Property;

.field public static final Limit_mins:Lorg/greenrobot/greendao/Property;

.field public static final Limit_threshold:Lorg/greenrobot/greendao/Property;

.field public static final MacAddress:Lorg/greenrobot/greendao/Property;

.field public static final MaxHr:Lorg/greenrobot/greendao/Property;

.field public static final MinHr:Lorg/greenrobot/greendao/Property;

.field public static final Month:Lorg/greenrobot/greendao/Property;

.field public static final Oxygen:Lorg/greenrobot/greendao/Property;

.field public static final Remark:Lorg/greenrobot/greendao/Property;

.field public static final SilentHeart:Lorg/greenrobot/greendao/Property;

.field public static final Ss:Lorg/greenrobot/greendao/Property;

.field public static final StartTime:Lorg/greenrobot/greendao/Property;

.field public static final UserId:Lorg/greenrobot/greendao/Property;

.field public static final UserMaxHr:Lorg/greenrobot/greendao/Property;

.field public static final Year:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 27
    new-instance v6, Lorg/greenrobot/greendao/Property;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    const-string v5, "IS_UPLOADED"

    const/4 v1, 0x0

    const-string v3, "isUploaded"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->IsUploaded:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "MAC_ADDRESS"

    const/4 v8, 0x1

    const-string v10, "macAddress"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->MacAddress:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "YEAR"

    const/4 v2, 0x2

    const-string v4, "year"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "MONTH"

    const/4 v8, 0x3

    const-string v10, "month"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "DAY"

    const/4 v2, 0x4

    const-string v4, "day"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "START_TIME"

    const/4 v8, 0x5

    const-string v10, "startTime"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->StartTime:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "SILENT_HEART"

    const/4 v2, 0x6

    const-string v4, "silentHeart"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->SilentHeart:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "BURN_FAT_THRESHOLD"

    const/4 v8, 0x7

    const-string v10, "burn_fat_threshold"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Burn_fat_threshold:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "AEROBIC_THRESHOLD"

    const/16 v2, 0x8

    const-string v4, "aerobic_threshold"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Aerobic_threshold:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "LIMIT_THRESHOLD"

    const/16 v8, 0x9

    const-string v10, "limit_threshold"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Limit_threshold:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "BURN_FAT_MINS"

    const/16 v2, 0xa

    const-string v4, "burn_fat_mins"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Burn_fat_mins:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "AEROBIC_MINS"

    const/16 v8, 0xb

    const-string v10, "aerobic_mins"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Aerobic_mins:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "LIMIT_MINS"

    const/16 v2, 0xc

    const-string v4, "limit_mins"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Limit_mins:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "USER_MAX_HR"

    const/16 v8, 0xd

    const-string v10, "UserMaxHr"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->UserMaxHr:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "AVG_HR"

    const/16 v2, 0xe

    const-string v4, "avgHr"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->AvgHr:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "AVG_DAY_HR"

    const/16 v8, 0xf

    const-string v10, "avgDayHr"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->AvgDayHr:Lorg/greenrobot/greendao/Property;

    .line 43
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "MAX_HR"

    const/16 v2, 0x10

    const-string v4, "maxHr"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->MaxHr:Lorg/greenrobot/greendao/Property;

    .line 44
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "MIN_HR"

    const/16 v8, 0x11

    const-string v10, "minHr"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->MinHr:Lorg/greenrobot/greendao/Property;

    .line 45
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v6, "DATE"

    const/16 v2, 0x12

    const-string v4, "date"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 46
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const-string v12, "USER_ID"

    const/16 v8, 0x13

    const-string v10, "userId"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->UserId:Lorg/greenrobot/greendao/Property;

    .line 47
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const-string v6, "REMARK"

    const/16 v2, 0x14

    const-string v4, "remark"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Remark:Lorg/greenrobot/greendao/Property;

    .line 48
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "FZ"

    const/16 v8, 0x15

    const-string v10, "fz"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Fz:Lorg/greenrobot/greendao/Property;

    .line 49
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "SS"

    const/16 v2, 0x16

    const-string v4, "ss"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Ss:Lorg/greenrobot/greendao/Property;

    .line 50
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "OXYGEN"

    const/16 v8, 0x17

    const-string v10, "oxygen"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Oxygen:Lorg/greenrobot/greendao/Property;

    .line 51
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "HRV"

    const/16 v2, 0x18

    const-string v4, "hrv"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Hrv:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
