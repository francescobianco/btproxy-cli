.class public Lcom/keephealth/android/greendao/bean/HealthHeartRate;
.super Ljava/lang/Object;
.source "HealthHeartRate.java"


# instance fields
.field private UserMaxHr:I

.field private aerobic_mins:I

.field private aerobic_threshold:I

.field private avgDayHr:I

.field private avgHr:I

.field private burn_fat_mins:I

.field private burn_fat_threshold:I

.field private date:J

.field private day:I

.field private fz:I

.field private hrv:I

.field private isUploaded:Z

.field private limit_mins:I

.field private limit_threshold:I

.field private macAddress:Ljava/lang/String;

.field private maxHr:I

.field private minHr:I

.field private month:I

.field private oxygen:I

.field private remark:Ljava/lang/String;

.field private silentHeart:I

.field private ss:I

.field private startTime:I

.field private userId:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->isUploaded:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;IIIIIIIIIIIIIIIIJLjava/lang/String;Ljava/lang/String;IIII)V
    .registers 30

    move-object v0, p0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 48
    iput-boolean v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->isUploaded:Z

    move-object v1, p2

    .line 49
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->macAddress:Ljava/lang/String;

    move v1, p3

    .line 50
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->year:I

    move v1, p4

    .line 51
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->month:I

    move v1, p5

    .line 52
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->day:I

    move v1, p6

    .line 53
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->startTime:I

    move v1, p7

    .line 54
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->silentHeart:I

    move v1, p8

    .line 55
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->burn_fat_threshold:I

    move v1, p9

    .line 56
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->aerobic_threshold:I

    move v1, p10

    .line 57
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->limit_threshold:I

    move v1, p11

    .line 58
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->burn_fat_mins:I

    move v1, p12

    .line 59
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->aerobic_mins:I

    move/from16 v1, p13

    .line 60
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->limit_mins:I

    move/from16 v1, p14

    .line 61
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->UserMaxHr:I

    move/from16 v1, p15

    .line 62
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->avgHr:I

    move/from16 v1, p16

    .line 63
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->avgDayHr:I

    move/from16 v1, p17

    .line 64
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->maxHr:I

    move/from16 v1, p18

    .line 65
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->minHr:I

    move-wide/from16 v1, p19

    .line 66
    iput-wide v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->date:J

    move-object/from16 v1, p21

    .line 67
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->userId:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 68
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->remark:Ljava/lang/String;

    move/from16 v1, p23

    .line 69
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->fz:I

    move/from16 v1, p24

    .line 70
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->ss:I

    move/from16 v1, p25

    .line 71
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->oxygen:I

    move/from16 v1, p26

    .line 72
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->hrv:I

    return-void
.end method


# virtual methods
.method public getAerobic_mins()I
    .registers 2

    .line 182
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->aerobic_mins:I

    return v0
.end method

.method public getAerobic_threshold()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->aerobic_threshold:I

    return v0
.end method

.method public getAvgDayHr()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->avgDayHr:I

    return v0
.end method

.method public getAvgHr()I
    .registers 2

    .line 195
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->avgHr:I

    return v0
.end method

.method public getBurn_fat_mins()I
    .registers 2

    .line 176
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->burn_fat_mins:I

    return v0
.end method

.method public getBurn_fat_threshold()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->burn_fat_threshold:I

    return v0
.end method

.method public getDate()J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->day:I

    return v0
.end method

.method public getFz()I
    .registers 2

    .line 214
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->fz:I

    return v0
.end method

.method public getHrv()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->hrv:I

    return v0
.end method

.method public getIsUploaded()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->isUploaded:Z

    return v0
.end method

.method public getLimit_mins()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->limit_mins:I

    return v0
.end method

.method public getLimit_threshold()I
    .registers 2

    .line 170
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->limit_threshold:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxHr()I
    .registers 2

    .line 201
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->maxHr:I

    return v0
.end method

.method public getMinHr()I
    .registers 2

    .line 207
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->minHr:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->month:I

    return v0
.end method

.method public getOxygen()I
    .registers 2

    .line 230
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->oxygen:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSilentHeart()I
    .registers 2

    .line 128
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->silentHeart:I

    return v0
.end method

.method public getSs()I
    .registers 2

    .line 222
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->ss:I

    return v0
.end method

.method public getStartTime()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->startTime:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMaxHr()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->UserMaxHr:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->year:I

    return v0
.end method

.method public setAerobic_mins(I)V
    .registers 2

    .line 185
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->aerobic_mins:I

    return-void
.end method

.method public setAerobic_threshold(I)V
    .registers 2

    .line 167
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->aerobic_threshold:I

    return-void
.end method

.method public setAvgDayHr(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->avgDayHr:I

    return-void
.end method

.method public setAvgHr(I)V
    .registers 2

    .line 198
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->avgHr:I

    return-void
.end method

.method public setBurn_fat_mins(I)V
    .registers 2

    .line 179
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->burn_fat_mins:I

    return-void
.end method

.method public setBurn_fat_threshold(I)V
    .registers 2

    .line 161
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->burn_fat_threshold:I

    return-void
.end method

.method public setDate(J)V
    .registers 3

    .line 143
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 119
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->day:I

    return-void
.end method

.method public setFz(I)V
    .registers 2

    .line 218
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->fz:I

    return-void
.end method

.method public setHrv(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->hrv:I

    return-void
.end method

.method public setIsUploaded(Z)V
    .registers 2

    .line 95
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->isUploaded:Z

    return-void
.end method

.method public setLimit_mins(I)V
    .registers 2

    .line 191
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->limit_mins:I

    return-void
.end method

.method public setLimit_threshold(I)V
    .registers 2

    .line 173
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->limit_threshold:I

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->macAddress:Ljava/lang/String;

    return-void
.end method

.method public setMaxHr(I)V
    .registers 2

    .line 204
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->maxHr:I

    return-void
.end method

.method public setMinHr(I)V
    .registers 2

    .line 210
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->minHr:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 113
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->month:I

    return-void
.end method

.method public setOxygen(I)V
    .registers 2

    .line 234
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->oxygen:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->remark:Ljava/lang/String;

    return-void
.end method

.method public setSilentHeart(I)V
    .registers 2

    .line 131
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->silentHeart:I

    return-void
.end method

.method public setSs(I)V
    .registers 2

    .line 226
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->ss:I

    return-void
.end method

.method public setStartTime(I)V
    .registers 2

    .line 125
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->startTime:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserMaxHr(I)V
    .registers 2

    .line 137
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->UserMaxHr:I

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 107
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HealthHeartRate{isUploaded="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->isUploaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", macAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", silentHeart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->silentHeart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", burn_fat_threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->burn_fat_threshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aerobic_threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->aerobic_threshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit_threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->limit_threshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", burn_fat_mins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->burn_fat_mins:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aerobic_mins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->aerobic_mins:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit_mins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->limit_mins:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", UserMaxHr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->UserMaxHr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgHr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->avgHr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgDayHr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->avgDayHr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxHr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->maxHr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minHr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->minHr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', fz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->fz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->ss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oxygen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->oxygen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hrv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->hrv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
