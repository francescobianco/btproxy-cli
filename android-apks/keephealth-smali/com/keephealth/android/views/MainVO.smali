.class public Lcom/keephealth/android/views/MainVO;
.super Ljava/lang/Object;
.source "MainVO.java"


# instance fields
.field public date:Ljava/lang/String;

.field public healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

.field public healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

.field public healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

.field public heartRate:Ljava/lang/String;

.field public sleepHour:Ljava/lang/String;

.field public sleepMin:Ljava/lang/String;

.field public sportHour:Ljava/lang/String;

.field public sportMin:Ljava/lang/String;

.field public sportTotalTime:I

.field public sportType:Ljava/lang/String;

.field public tempDayInfo:Lcom/keephealth/android/greendao/bean/TempDayInfo;

.field public waterTotal:I

.field public weightData:Lcom/keephealth/android/ui/main/bean/WeightData;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "0"

    iput-object v0, p0, Lcom/keephealth/android/views/MainVO;->sportHour:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/keephealth/android/views/MainVO;->sportMin:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/keephealth/android/views/MainVO;->sleepHour:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/keephealth/android/views/MainVO;->sleepMin:Ljava/lang/String;

    .line 22
    const-string v1, ""

    iput-object v1, p0, Lcom/keephealth/android/views/MainVO;->sportType:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/keephealth/android/views/MainVO;->heartRate:Ljava/lang/String;

    return-void
.end method
