.class public Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;
.super Ljava/lang/Object;
.source "HealthGpsItemDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Date:Lorg/greenrobot/greendao/Property;

.field public static final EndDate:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final IsUploaded:Lorg/greenrobot/greendao/Property;

.field public static final Latitude:Lorg/greenrobot/greendao/Property;

.field public static final Longitude:Lorg/greenrobot/greendao/Property;

.field public static final MacAddress:Lorg/greenrobot/greendao/Property;

.field public static final Remark:Lorg/greenrobot/greendao/Property;

.field public static final StartDate:Lorg/greenrobot/greendao/Property;

.field public static final UserId:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 27
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const/4 v4, 0x1

    const-string v5, "_id"

    const/4 v1, 0x0

    const-string v3, "id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    const-string v12, "IS_UPLOADED"

    const/4 v8, 0x1

    const-string v10, "isUploaded"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->IsUploaded:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "MAC_ADDRESS"

    const/4 v2, 0x2

    const-string v4, "macAddress"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->MacAddress:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const-string v12, "START_DATE"

    const/4 v8, 0x3

    const-string v10, "startDate"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->StartDate:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Long;

    const-string v6, "END_DATE"

    const/4 v2, 0x4

    const-string v4, "endDate"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->EndDate:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Double;

    const-string v12, "LONGITUDE"

    const/4 v8, 0x5

    const-string v10, "longitude"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Longitude:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Double;

    const-string v6, "LATITUDE"

    const/4 v2, 0x6

    const-string v4, "latitude"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Latitude:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Long;

    const-string v12, "DATE"

    const/4 v8, 0x7

    const-string v10, "date"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const-string v6, "USER_ID"

    const/16 v2, 0x8

    const-string v4, "userId"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->UserId:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const-string v12, "REMARK"

    const/16 v8, 0x9

    const-string v10, "remark"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Remark:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
