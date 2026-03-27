.class public Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;
.super Ljava/lang/Object;
.source "HealthHeartRateItemDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Date:Lorg/greenrobot/greendao/Property;

.field public static final Day:Lorg/greenrobot/greendao/Property;

.field public static final Fz:Lorg/greenrobot/greendao/Property;

.field public static final HeartRaveValue:Lorg/greenrobot/greendao/Property;

.field public static final Hour:Lorg/greenrobot/greendao/Property;

.field public static final IsUploaded:Lorg/greenrobot/greendao/Property;

.field public static final MacAddress:Lorg/greenrobot/greendao/Property;

.field public static final Minuter:Lorg/greenrobot/greendao/Property;

.field public static final Month:Lorg/greenrobot/greendao/Property;

.field public static final OffsetMinute:Lorg/greenrobot/greendao/Property;

.field public static final Oxygen:Lorg/greenrobot/greendao/Property;

.field public static final Remark:Lorg/greenrobot/greendao/Property;

.field public static final Ss:Lorg/greenrobot/greendao/Property;

.field public static final UserId:Lorg/greenrobot/greendao/Property;

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

    sput-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->IsUploaded:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "MAC_ADDRESS"

    const/4 v8, 0x1

    const-string v10, "macAddress"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->MacAddress:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "YEAR"

    const/4 v2, 0x2

    const-string v4, "year"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "MONTH"

    const/4 v8, 0x3

    const-string v10, "month"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "DAY"

    const/4 v2, 0x4

    const-string v4, "day"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "OFFSET_MINUTE"

    const/4 v8, 0x5

    const-string v10, "offsetMinute"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->OffsetMinute:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "SS"

    const/4 v2, 0x6

    const-string v4, "ss"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Ss:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "FZ"

    const/4 v8, 0x7

    const-string v10, "fz"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Fz:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "OXYGEN"

    const/16 v2, 0x8

    const-string v4, "oxygen"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Oxygen:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "HEART_RAVE_VALUE"

    const/16 v8, 0x9

    const-string v10, "HeartRaveValue"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->HeartRaveValue:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v6, "DATE"

    const/16 v2, 0xa

    const-string v4, "date"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const-string v12, "USER_ID"

    const/16 v8, 0xb

    const-string v10, "userId"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->UserId:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const-string v6, "REMARK"

    const/16 v2, 0xc

    const-string v4, "remark"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Remark:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "HOUR"

    const/16 v8, 0xd

    const-string v10, "hour"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "MINUTER"

    const/16 v2, 0xe

    const-string v4, "minuter"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Minuter:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
