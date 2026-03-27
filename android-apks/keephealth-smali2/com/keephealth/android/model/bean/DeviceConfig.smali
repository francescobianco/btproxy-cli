.class public Lcom/keephealth/android/model/bean/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# instance fields
.field public alarms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field public bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field public bpValue:Lcom/keephealth/android/model/bean/BPValue;

.field public callNumber:Ljava/lang/String;

.field public deviceState:Lcom/keephealth/android/model/bean/DeviceState;

.field public goal:Lcom/keephealth/android/model/bean/Goal;

.field public interval:Lcom/keephealth/android/model/bean/HeartRateInterval;

.field public isCall:Z

.field public isDisturbMode:Z

.field public isFindPhone:Z

.field public isMessage:Z

.field public isMusic:Z

.field public isTemp:Z

.field public isTempTest:Z

.field public isTestTime:Z

.field public musicAppName:Ljava/lang/String;

.field public musicPackageName:Ljava/lang/String;

.field public notice:Lcom/keephealth/android/model/bean/AppNotice;

.field public sleepTimeBean:Lcom/keephealth/android/model/bean/SleepTimeBean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/keephealth/android/model/bean/AppNotice;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/AppNotice;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    .line 43
    new-instance v0, Lcom/keephealth/android/model/bean/Goal;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/Goal;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    .line 49
    new-instance v0, Lcom/keephealth/android/model/bean/DeviceState;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/DeviceState;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    .line 52
    new-instance v0, Lcom/keephealth/android/model/bean/SleepTimeBean;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/SleepTimeBean;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->sleepTimeBean:Lcom/keephealth/android/model/bean/SleepTimeBean;

    .line 57
    new-instance v0, Lcom/keephealth/android/model/bean/HeartRateInterval;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/HeartRateInterval;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->interval:Lcom/keephealth/android/model/bean/HeartRateInterval;

    .line 60
    new-instance v0, Lcom/keephealth/android/model/bean/BPValue;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/BPValue;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->bpValue:Lcom/keephealth/android/model/bean/BPValue;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceConfig{alarms="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->alarms:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->isTestTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMusic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", musicPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', musicAppName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->musicAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', goal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepTimeBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/DeviceConfig;->sleepTimeBean:Lcom/keephealth/android/model/bean/SleepTimeBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
