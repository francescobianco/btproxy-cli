.class public Lcom/keephealth/android/greendao/bean/HealthSport;
.super Ljava/lang/Object;
.source "HealthSport.java"


# instance fields
.field private date:J

.field private day:I

.field private id:Ljava/lang/Long;

.field private isUploaded:Z

.field private itemCount:I

.field private macAddress:Ljava/lang/String;

.field private month:I

.field private remark:Ljava/lang/String;

.field private startTime:I

.field private timeSpace:I

.field private totalActiveTime:I

.field private totalCalory:F

.field private totalDayActiveTime:I

.field private totalDayCalory:F

.field private totalDayDistance:F

.field private totalDayStepCount:I

.field private totalDistance:F

.field private totalStepCount:I

.field private userId:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->isUploaded:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ZLjava/lang/String;IIIIFFIIFFIIIJLjava/lang/String;Ljava/lang/String;I)V
    .registers 25

    move-object v0, p0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 54
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->id:Ljava/lang/Long;

    move v1, p2

    .line 55
    iput-boolean v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->isUploaded:Z

    move-object v1, p3

    .line 56
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->macAddress:Ljava/lang/String;

    move v1, p4

    .line 57
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->year:I

    move v1, p5

    .line 58
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->month:I

    move v1, p6

    .line 59
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->day:I

    move v1, p7

    .line 60
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalStepCount:I

    move v1, p8

    .line 61
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalCalory:F

    move v1, p9

    .line 62
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDistance:F

    move v1, p10

    .line 63
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalActiveTime:I

    move v1, p11

    .line 64
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDayStepCount:I

    move v1, p12

    .line 65
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDayCalory:F

    move/from16 v1, p13

    .line 66
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDayDistance:F

    move/from16 v1, p14

    .line 67
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDayActiveTime:I

    move/from16 v1, p15

    .line 68
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->startTime:I

    move/from16 v1, p16

    .line 69
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->timeSpace:I

    move-wide/from16 v1, p17

    .line 70
    iput-wide v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->date:J

    move-object/from16 v1, p19

    .line 71
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->userId:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 72
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->remark:Ljava/lang/String;

    move/from16 v1, p21

    .line 73
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSport;->itemCount:I

    return-void
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .line 175
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->day:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsUploaded()Z
    .registers 2

    .line 109
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->isUploaded:Z

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->itemCount:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->month:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->startTime:I

    return v0
.end method

.method public getTimeSpace()I
    .registers 2

    .line 169
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->timeSpace:I

    return v0
.end method

.method public getTotalActiveTime()I
    .registers 2

    .line 157
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalActiveTime:I

    return v0
.end method

.method public getTotalCalory()F
    .registers 2

    .line 145
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalCalory:F

    return v0
.end method

.method public getTotalDayActiveTime()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDayActiveTime:I

    return v0
.end method

.method public getTotalDayCalory()F
    .registers 2

    .line 85
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDayCalory:F

    return v0
.end method

.method public getTotalDayDistance()F
    .registers 2

    .line 93
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDayDistance:F

    return v0
.end method

.method public getTotalDayStepCount()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDayStepCount:I

    return v0
.end method

.method public getTotalDistance()F
    .registers 2

    .line 151
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDistance:F

    return v0
.end method

.method public getTotalStepCount()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalStepCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->year:I

    return v0
.end method

.method public setDate(J)V
    .registers 3

    .line 178
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 136
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->day:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsUploaded(Z)V
    .registers 2

    .line 112
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->isUploaded:Z

    return-void
.end method

.method public setItemCount(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->itemCount:I

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->macAddress:Ljava/lang/String;

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 130
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->month:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->remark:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(I)V
    .registers 2

    .line 166
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->startTime:I

    return-void
.end method

.method public setTimeSpace(I)V
    .registers 2

    .line 172
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->timeSpace:I

    return-void
.end method

.method public setTotalActiveTime(I)V
    .registers 2

    .line 160
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalActiveTime:I

    return-void
.end method

.method public setTotalCalory(F)V
    .registers 2

    .line 148
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalCalory:F

    return-void
.end method

.method public setTotalDayActiveTime(I)V
    .registers 2

    .line 105
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDayActiveTime:I

    return-void
.end method

.method public setTotalDayCalory(F)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDayCalory:F

    return-void
.end method

.method public setTotalDayDistance(F)V
    .registers 2

    .line 97
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDayDistance:F

    return-void
.end method

.method public setTotalDayStepCount(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDayStepCount:I

    return-void
.end method

.method public setTotalDistance(F)V
    .registers 2

    .line 154
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDistance:F

    return-void
.end method

.method public setTotalStepCount(I)V
    .registers 2

    .line 142
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalStepCount:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->userId:Ljava/lang/String;

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 124
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HealthSport{, totalStepCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalStepCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCalory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalCalory:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->totalDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSport;->timeSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
