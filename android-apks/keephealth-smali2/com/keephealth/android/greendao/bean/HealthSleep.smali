.class public Lcom/keephealth/android/greendao/bean/HealthSleep;
.super Ljava/lang/Object;
.source "HealthSleep.java"


# instance fields
.field private accuracyType:I

.field private awakeCount:I

.field private date:J

.field private day:I

.field private deepSleepCount:I

.field private deepSleepMinutes:I

.field private eyeMinutes:I

.field private isUploaded:Z

.field private lightSleepCount:I

.field private lightSleepMinutes:I

.field private macAddress:Ljava/lang/String;

.field private month:I

.field private remark:Ljava/lang/String;

.field private sleepEndedTimeH:I

.field private sleepEndedTimeM:I

.field private sleepMinutes:I

.field private sleepstartedTimeH:I

.field private sleepstartedTimeM:I

.field private totalSleepMinutes:I

.field private userId:Ljava/lang/String;

.field private wakeMunutes:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;IIIIIIIIIIIIIIIIJLjava/lang/String;Ljava/lang/String;I)V
    .registers 27

    move-object v0, p0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 60
    iput-boolean v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->isUploaded:Z

    move-object v1, p2

    .line 61
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->macAddress:Ljava/lang/String;

    move v1, p3

    .line 62
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->year:I

    move v1, p4

    .line 63
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->month:I

    move v1, p5

    .line 64
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->day:I

    move v1, p6

    .line 65
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepEndedTimeH:I

    move v1, p7

    .line 66
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepEndedTimeM:I

    move v1, p8

    .line 67
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepstartedTimeH:I

    move v1, p9

    .line 68
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepstartedTimeM:I

    move v1, p10

    .line 69
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->totalSleepMinutes:I

    move v1, p11

    .line 70
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->lightSleepCount:I

    move v1, p12

    .line 71
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->deepSleepCount:I

    move/from16 v1, p13

    .line 72
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->awakeCount:I

    move/from16 v1, p14

    .line 73
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->lightSleepMinutes:I

    move/from16 v1, p15

    .line 74
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->deepSleepMinutes:I

    move/from16 v1, p16

    .line 75
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->wakeMunutes:I

    move/from16 v1, p17

    .line 76
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepMinutes:I

    move/from16 v1, p18

    .line 77
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->eyeMinutes:I

    move-wide/from16 v1, p19

    .line 78
    iput-wide v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->date:J

    move-object/from16 v1, p21

    .line 79
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->userId:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 80
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->remark:Ljava/lang/String;

    move/from16 v1, p23

    .line 81
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSleep;->accuracyType:I

    return-void
.end method


# virtual methods
.method public getAccuracyType()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->accuracyType:I

    return v0
.end method

.method public getAwakeCount()I
    .registers 2

    .line 152
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->awakeCount:I

    return v0
.end method

.method public getDate()J
    .registers 3

    .line 170
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->day:I

    return v0
.end method

.method public getDeepSleepCount()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->deepSleepCount:I

    return v0
.end method

.method public getDeepSleepMinutes()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->deepSleepMinutes:I

    return v0
.end method

.method public getEyeMinutes()I
    .registers 2

    .line 200
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->eyeMinutes:I

    return v0
.end method

.method public getIsUploaded()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->isUploaded:Z

    return v0
.end method

.method public getLightSleepCount()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->lightSleepCount:I

    return v0
.end method

.method public getLightSleepMinutes()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->lightSleepMinutes:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->month:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepEndedTimeH()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepEndedTimeH:I

    return v0
.end method

.method public getSleepEndedTimeM()I
    .registers 2

    .line 128
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepEndedTimeM:I

    return v0
.end method

.method public getSleepMinutes()I
    .registers 2

    .line 194
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepMinutes:I

    return v0
.end method

.method public getSleepstartedTimeH()I
    .registers 2

    .line 206
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepstartedTimeH:I

    return v0
.end method

.method public getSleepstartedTimeM()I
    .registers 2

    .line 212
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepstartedTimeM:I

    return v0
.end method

.method public getTotalSleepMinutes()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->totalSleepMinutes:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeMunutes()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->wakeMunutes:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->year:I

    return v0
.end method

.method public setAccuracyType(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->accuracyType:I

    return-void
.end method

.method public setAwakeCount(I)V
    .registers 2

    .line 155
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->awakeCount:I

    return-void
.end method

.method public setDate(J)V
    .registers 3

    .line 173
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 119
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->day:I

    return-void
.end method

.method public setDeepSleepCount(I)V
    .registers 2

    .line 149
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->deepSleepCount:I

    return-void
.end method

.method public setDeepSleepMinutes(I)V
    .registers 2

    .line 167
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->deepSleepMinutes:I

    return-void
.end method

.method public setEyeMinutes(I)V
    .registers 2

    .line 203
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->eyeMinutes:I

    return-void
.end method

.method public setIsUploaded(Z)V
    .registers 2

    .line 95
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->isUploaded:Z

    return-void
.end method

.method public setLightSleepCount(I)V
    .registers 2

    .line 143
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->lightSleepCount:I

    return-void
.end method

.method public setLightSleepMinutes(I)V
    .registers 2

    .line 161
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->lightSleepMinutes:I

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->macAddress:Ljava/lang/String;

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 113
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->month:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->remark:Ljava/lang/String;

    return-void
.end method

.method public setSleepEndedTimeH(I)V
    .registers 2

    .line 125
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepEndedTimeH:I

    return-void
.end method

.method public setSleepEndedTimeM(I)V
    .registers 2

    .line 131
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepEndedTimeM:I

    return-void
.end method

.method public setSleepMinutes(I)V
    .registers 2

    .line 197
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepMinutes:I

    return-void
.end method

.method public setSleepstartedTimeH(I)V
    .registers 2

    .line 209
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepstartedTimeH:I

    return-void
.end method

.method public setSleepstartedTimeM(I)V
    .registers 2

    .line 215
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepstartedTimeM:I

    return-void
.end method

.method public setTotalSleepMinutes(I)V
    .registers 2

    .line 137
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->totalSleepMinutes:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->userId:Ljava/lang/String;

    return-void
.end method

.method public setWakeMunutes(I)V
    .registers 2

    .line 191
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->wakeMunutes:I

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 107
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HealthSleep{, year="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepEndedTimeH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepEndedTimeH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepEndedTimeM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepEndedTimeM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepstartedTimeH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepstartedTimeH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepstartedTimeM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepstartedTimeM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSleepMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->totalSleepMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lightSleepMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->lightSleepMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deepSleepMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->deepSleepMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wakeMunutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->wakeMunutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->sleepMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eyeMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->eyeMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', accuracyType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSleep;->accuracyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
