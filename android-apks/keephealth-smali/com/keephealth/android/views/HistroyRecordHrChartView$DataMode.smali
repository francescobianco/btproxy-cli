.class public Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;
.super Ljava/lang/Object;
.source "HistroyRecordHrChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/HistroyRecordHrChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataMode"
.end annotation


# instance fields
.field private endTime:Ljava/lang/String;

.field private interval:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()Lcom/keephealth/android/greendao/bean/HealthHeartRate;
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->interval:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->items:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setInterval(Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->interval:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;)V"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->items:Ljava/util/List;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->startTime:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataMode{startTime=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', endTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->interval:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
