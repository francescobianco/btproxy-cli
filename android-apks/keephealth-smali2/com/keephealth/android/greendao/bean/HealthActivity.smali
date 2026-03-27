.class public Lcom/keephealth/android/greendao/bean/HealthActivity;
.super Ljava/lang/Object;
.source "HealthActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DATA_FROM_APP:I = 0x1

.field public static final DATA_FROM_DEVICE:I = 0x2

.field public static final serialVersionUID:J = 0x6fL


# instance fields
.field private aerobic_mins:I

.field private avgSpeed:Ljava/lang/String;

.field private avg_hr_value:I

.field private burn_fat_mins:I

.field private calories:I

.field private dataFrom:I

.field private date:J

.field private day:I

.field private distance:I

.field private durations:I

.field private hour:I

.field private hr_data_interval_minute:I

.field private hr_data_vlaue_json:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isUploaded:Z

.field private limit_mins:I

.field private macAddress:Ljava/lang/String;

.field private max_hr_value:I

.field private minute:I

.field private month:I

.field private remark:Ljava/lang/String;

.field private second:I

.field private speeds:Ljava/lang/String;

.field private step:I

.field private type:I

.field private userId:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 53
    iput v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->dataFrom:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ZLjava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    .registers 32

    move-object v0, p0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 69
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->id:Ljava/lang/Long;

    move v1, p2

    .line 70
    iput-boolean v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->isUploaded:Z

    move-object v1, p3

    .line 71
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->macAddress:Ljava/lang/String;

    move v1, p4

    .line 72
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->year:I

    move v1, p5

    .line 73
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->month:I

    move v1, p6

    .line 74
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->day:I

    move v1, p7

    .line 75
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->hour:I

    move v1, p8

    .line 76
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->minute:I

    move v1, p9

    .line 77
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->second:I

    move v1, p10

    .line 78
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->hr_data_interval_minute:I

    move v1, p11

    .line 79
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->type:I

    move v1, p12

    .line 80
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->step:I

    move/from16 v1, p13

    .line 81
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->durations:I

    move/from16 v1, p14

    .line 82
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->calories:I

    move/from16 v1, p15

    .line 83
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->distance:I

    move-object/from16 v1, p16

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->avgSpeed:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->speeds:Ljava/lang/String;

    move/from16 v1, p18

    .line 86
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->avg_hr_value:I

    move/from16 v1, p19

    .line 87
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->max_hr_value:I

    move/from16 v1, p20

    .line 88
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->burn_fat_mins:I

    move/from16 v1, p21

    .line 89
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->aerobic_mins:I

    move/from16 v1, p22

    .line 90
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->limit_mins:I

    move-object/from16 v1, p23

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->userId:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->remark:Ljava/lang/String;

    move/from16 v1, p25

    .line 93
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->dataFrom:I

    move-object/from16 v1, p26

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->hr_data_vlaue_json:Ljava/lang/String;

    move-wide/from16 v1, p27

    .line 95
    iput-wide v1, v0, Lcom/keephealth/android/greendao/bean/HealthActivity;->date:J

    return-void
.end method


# virtual methods
.method public getAerobic_mins()I
    .registers 2

    .line 225
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->aerobic_mins:I

    return v0
.end method

.method public getAvgSpeed()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->avgSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getAvg_hr_value()I
    .registers 2

    .line 207
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->avg_hr_value:I

    return v0
.end method

.method public getBurn_fat_mins()I
    .registers 2

    .line 219
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->burn_fat_mins:I

    return v0
.end method

.method public getCalories()I
    .registers 2

    .line 195
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->calories:I

    return v0
.end method

.method public getDataFrom()I
    .registers 2

    .line 237
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->dataFrom:I

    return v0
.end method

.method public getDate()J
    .registers 3

    .line 249
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->day:I

    return v0
.end method

.method public getDistance()I
    .registers 2

    .line 201
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->distance:I

    return v0
.end method

.method public getDurations()I
    .registers 2

    .line 189
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->durations:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->hour:I

    return v0
.end method

.method public getHr_data_interval_minute()I
    .registers 2

    .line 171
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->hr_data_interval_minute:I

    return v0
.end method

.method public getHr_data_vlaue_json()Ljava/lang/String;
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->hr_data_vlaue_json:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsUploaded()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->isUploaded:Z

    return v0
.end method

.method public getLimit_mins()I
    .registers 2

    .line 231
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->limit_mins:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMax_hr_value()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->max_hr_value:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->minute:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->month:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond()I
    .registers 2

    .line 165
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->second:I

    return v0
.end method

.method public getSpeeds()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->speeds:Ljava/lang/String;

    return-object v0
.end method

.method public getStep()I
    .registers 2

    .line 183
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->step:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 177
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->type:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->year:I

    return v0
.end method

.method public setAerobic_mins(I)V
    .registers 2

    .line 228
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->aerobic_mins:I

    return-void
.end method

.method public setAvgSpeed(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->avgSpeed:Ljava/lang/String;

    return-void
.end method

.method public setAvg_hr_value(I)V
    .registers 2

    .line 210
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->avg_hr_value:I

    return-void
.end method

.method public setBurn_fat_mins(I)V
    .registers 2

    .line 222
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->burn_fat_mins:I

    return-void
.end method

.method public setCalories(I)V
    .registers 2

    .line 198
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->calories:I

    return-void
.end method

.method public setDataFrom(I)V
    .registers 2

    .line 240
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->dataFrom:I

    return-void
.end method

.method public setDate(J)V
    .registers 3

    .line 252
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 150
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->day:I

    return-void
.end method

.method public setDistance(I)V
    .registers 2

    .line 204
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->distance:I

    return-void
.end method

.method public setDurations(I)V
    .registers 2

    .line 192
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->durations:I

    return-void
.end method

.method public setHour(I)V
    .registers 2

    .line 156
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->hour:I

    return-void
.end method

.method public setHr_data_interval_minute(I)V
    .registers 2

    .line 174
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->hr_data_interval_minute:I

    return-void
.end method

.method public setHr_data_vlaue_json(Ljava/lang/String;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->hr_data_vlaue_json:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsUploaded(Z)V
    .registers 2

    .line 126
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->isUploaded:Z

    return-void
.end method

.method public setLimit_mins(I)V
    .registers 2

    .line 234
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->limit_mins:I

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->macAddress:Ljava/lang/String;

    return-void
.end method

.method public setMax_hr_value(I)V
    .registers 2

    .line 216
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->max_hr_value:I

    return-void
.end method

.method public setMinute(I)V
    .registers 2

    .line 162
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->minute:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 144
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->month:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->remark:Ljava/lang/String;

    return-void
.end method

.method public setSecond(I)V
    .registers 2

    .line 168
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->second:I

    return-void
.end method

.method public setSpeeds(Ljava/lang/String;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->speeds:Ljava/lang/String;

    return-void
.end method

.method public setStep(I)V
    .registers 2

    .line 186
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->step:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 180
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->type:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->userId:Ljava/lang/String;

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 138
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HealthActivity{, year="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->second:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->step:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->durations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->calories:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avg_hr_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->avg_hr_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max_hr_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->max_hr_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/greendao/bean/HealthActivity;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
