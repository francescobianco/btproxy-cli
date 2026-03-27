.class public Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;
.super Ljava/lang/Object;
.source "HealthSleepDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/greendao/gen/HealthSleepDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AccuracyType:Lorg/greenrobot/greendao/Property;

.field public static final AwakeCount:Lorg/greenrobot/greendao/Property;

.field public static final Date:Lorg/greenrobot/greendao/Property;

.field public static final Day:Lorg/greenrobot/greendao/Property;

.field public static final DeepSleepCount:Lorg/greenrobot/greendao/Property;

.field public static final DeepSleepMinutes:Lorg/greenrobot/greendao/Property;

.field public static final EyeMinutes:Lorg/greenrobot/greendao/Property;

.field public static final IsUploaded:Lorg/greenrobot/greendao/Property;

.field public static final LightSleepCount:Lorg/greenrobot/greendao/Property;

.field public static final LightSleepMinutes:Lorg/greenrobot/greendao/Property;

.field public static final MacAddress:Lorg/greenrobot/greendao/Property;

.field public static final Month:Lorg/greenrobot/greendao/Property;

.field public static final Remark:Lorg/greenrobot/greendao/Property;

.field public static final SleepEndedTimeH:Lorg/greenrobot/greendao/Property;

.field public static final SleepEndedTimeM:Lorg/greenrobot/greendao/Property;

.field public static final SleepMinutes:Lorg/greenrobot/greendao/Property;

.field public static final SleepstartedTimeH:Lorg/greenrobot/greendao/Property;

.field public static final SleepstartedTimeM:Lorg/greenrobot/greendao/Property;

.field public static final TotalSleepMinutes:Lorg/greenrobot/greendao/Property;

.field public static final UserId:Lorg/greenrobot/greendao/Property;

.field public static final WakeMunutes:Lorg/greenrobot/greendao/Property;

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

    sput-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->IsUploaded:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "MAC_ADDRESS"

    const/4 v8, 0x1

    const-string v10, "macAddress"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->MacAddress:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "YEAR"

    const/4 v2, 0x2

    const-string v4, "year"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "MONTH"

    const/4 v8, 0x3

    const-string v10, "month"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "DAY"

    const/4 v2, 0x4

    const-string v4, "day"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "SLEEP_ENDED_TIME_H"

    const/4 v8, 0x5

    const-string v10, "sleepEndedTimeH"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->SleepEndedTimeH:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "SLEEP_ENDED_TIME_M"

    const/4 v2, 0x6

    const-string v4, "sleepEndedTimeM"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->SleepEndedTimeM:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "SLEEPSTARTED_TIME_H"

    const/4 v8, 0x7

    const-string v10, "sleepstartedTimeH"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->SleepstartedTimeH:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "SLEEPSTARTED_TIME_M"

    const/16 v2, 0x8

    const-string v4, "sleepstartedTimeM"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->SleepstartedTimeM:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "TOTAL_SLEEP_MINUTES"

    const/16 v8, 0x9

    const-string v10, "totalSleepMinutes"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->TotalSleepMinutes:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "LIGHT_SLEEP_COUNT"

    const/16 v2, 0xa

    const-string v4, "lightSleepCount"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->LightSleepCount:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "DEEP_SLEEP_COUNT"

    const/16 v8, 0xb

    const-string v10, "deepSleepCount"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->DeepSleepCount:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "AWAKE_COUNT"

    const/16 v2, 0xc

    const-string v4, "awakeCount"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->AwakeCount:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "LIGHT_SLEEP_MINUTES"

    const/16 v8, 0xd

    const-string v10, "lightSleepMinutes"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->LightSleepMinutes:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "DEEP_SLEEP_MINUTES"

    const/16 v2, 0xe

    const-string v4, "deepSleepMinutes"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->DeepSleepMinutes:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "WAKE_MUNUTES"

    const/16 v8, 0xf

    const-string v10, "wakeMunutes"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->WakeMunutes:Lorg/greenrobot/greendao/Property;

    .line 43
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "SLEEP_MINUTES"

    const/16 v2, 0x10

    const-string v4, "sleepMinutes"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->SleepMinutes:Lorg/greenrobot/greendao/Property;

    .line 44
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "EYE_MINUTES"

    const/16 v8, 0x11

    const-string v10, "eyeMinutes"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->EyeMinutes:Lorg/greenrobot/greendao/Property;

    .line 45
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v6, "DATE"

    const/16 v2, 0x12

    const-string v4, "date"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 46
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const-string v12, "USER_ID"

    const/16 v8, 0x13

    const-string v10, "userId"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->UserId:Lorg/greenrobot/greendao/Property;

    .line 47
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const-string v6, "REMARK"

    const/16 v2, 0x14

    const-string v4, "remark"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Remark:Lorg/greenrobot/greendao/Property;

    .line 48
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "ACCURACY_TYPE"

    const/16 v8, 0x15

    const-string v10, "accuracyType"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->AccuracyType:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
