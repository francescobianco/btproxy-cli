.class public Lcom/keephealth/android/model/bean/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STATUS_DISPLAY:I = 0x55

.field public static final STATUS_NOT_DISPLAY:I = 0xaa

.field public static final TYPE_CUSTOMIZE:I = 0x7

.field public static final TYPE_ENGAGEMENT:I = 0x4

.field public static final TYPE_EXERCISE:I = 0x2

.field public static final TYPE_GATHERING:I = 0x5

.field public static final TYPE_GETUP:I = 0x0

.field public static final TYPE_MEDICINE:I = 0x3

.field public static final TYPE_MEETING:I = 0x6

.field public static final TYPE_SLEEP:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private alarmHour:I

.field private alarmId:I

.field private alarmMinute:I

.field private alarmRepetitions:I

.field private alarmSnoozeDuration:I

.field private alarmStatus:I

.field private alarmType:I

.field public isOnce:Z

.field private on_off:Z

.field private weekRepeat:[Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x55

    .line 22
    iput v0, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmStatus:I

    const/4 v0, 0x6

    .line 23
    iput v0, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmType:I

    const/4 v0, 0x7

    .line 24
    iput v0, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmHour:I

    const/16 v1, 0x1e

    .line 25
    iput v1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmMinute:I

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/keephealth/android/model/bean/Alarm;->on_off:Z

    .line 28
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/keephealth/android/model/bean/Alarm;->weekRepeat:[Z

    .line 30
    iput-boolean v1, p0, Lcom/keephealth/android/model/bean/Alarm;->isOnce:Z

    return-void
.end method

.method private toByte([ZZ)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x7

    if-ge v0, v2, :cond_12

    .line 104
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_f

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    if-eqz p2, :cond_16

    or-int/lit8 v1, v1, 0x1

    :cond_16
    return v1
.end method


# virtual methods
.method public getAlarmHour()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmHour:I

    return v0
.end method

.method public getAlarmId()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmId:I

    return v0
.end method

.method public getAlarmMinute()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmMinute:I

    return v0
.end method

.method public getAlarmSnoozeDuration()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmSnoozeDuration:I

    return v0
.end method

.method public getAlarmStatus()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmStatus:I

    return v0
.end method

.method public getAlarmType()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmType:I

    return v0
.end method

.method public getOn_off()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/Alarm;->on_off:Z

    return v0
.end method

.method public getWeekRepeat()[Z
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/keephealth/android/model/bean/Alarm;->weekRepeat:[Z

    return-object v0
.end method

.method public setAlarmHour(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmHour:I

    return-void
.end method

.method public setAlarmId(I)V
    .registers 2

    .line 48
    iput p1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmId:I

    return-void
.end method

.method public setAlarmMinute(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmMinute:I

    return-void
.end method

.method public setAlarmSnoozeDuration(I)V
    .registers 2

    .line 84
    iput p1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmSnoozeDuration:I

    return-void
.end method

.method public setAlarmStatus(I)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmStatus:I

    return-void
.end method

.method public setAlarmType(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmType:I

    return-void
.end method

.method public setOn_off(Z)V
    .registers 3

    .line 96
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/Alarm;->on_off:Z

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/model/bean/Alarm;->weekRepeat:[Z

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/model/bean/Alarm;->toByte([ZZ)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmRepetitions:I

    return-void
.end method

.method public setWeekRepeat([Z)V
    .registers 3

    .line 39
    iput-object p1, p0, Lcom/keephealth/android/model/bean/Alarm;->weekRepeat:[Z

    .line 40
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/Alarm;->on_off:Z

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/model/bean/Alarm;->toByte([ZZ)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmRepetitions:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alarm{alarmId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alarmStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alarmType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alarmHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alarmMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", on_off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/model/bean/Alarm;->on_off:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alarmRepetitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmRepetitions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weekRepeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/Alarm;->weekRepeat:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alarmSnoozeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/Alarm;->alarmSnoozeDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
