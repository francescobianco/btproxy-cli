.class public Lcom/keephealth/android/greendao/bean/HealthSportItem;
.super Ljava/lang/Object;
.source "HealthSportItem.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private activeTime:I

.field private avgActiveTime:I

.field private avgCalory:F

.field private avgDistance:F

.field private avgStep:I

.field private calory:F

.field private date:J

.field private day:I

.field private distance:F

.field private hour:I

.field private id:Ljava/lang/Long;

.field private isUploaded:Z

.field private itemCount:I

.field private macAddress:Ljava/lang/String;

.field private minute:I

.field private month:I

.field private remark:Ljava/lang/String;

.field private stepCount:I

.field private userId:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->isUploaded:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ZLjava/lang/String;IIIIIFFIIFFJLjava/lang/String;Ljava/lang/String;III)V
    .registers 25

    move-object v0, p0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 43
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->id:Ljava/lang/Long;

    move v1, p2

    .line 44
    iput-boolean v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->isUploaded:Z

    move-object v1, p3

    .line 45
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->macAddress:Ljava/lang/String;

    move v1, p4

    .line 46
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->year:I

    move v1, p5

    .line 47
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->month:I

    move v1, p6

    .line 48
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->day:I

    move v1, p7

    .line 49
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->stepCount:I

    move v1, p8

    .line 50
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->activeTime:I

    move v1, p9

    .line 51
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->calory:F

    move v1, p10

    .line 52
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->distance:F

    move v1, p11

    .line 53
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->avgStep:I

    move v1, p12

    .line 54
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->avgActiveTime:I

    move/from16 v1, p13

    .line 55
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->avgCalory:F

    move/from16 v1, p14

    .line 56
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->avgDistance:F

    move-wide/from16 v1, p15

    .line 57
    iput-wide v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->date:J

    move-object/from16 v1, p17

    .line 58
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->userId:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 59
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->remark:Ljava/lang/String;

    move/from16 v1, p19

    .line 60
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->itemCount:I

    move/from16 v1, p20

    .line 61
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->hour:I

    move/from16 v1, p21

    .line 62
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->minute:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/keephealth/android/greendao/bean/HealthSportItem;
    .registers 2

    .line 96
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->clone()Lcom/keephealth/android/greendao/bean/HealthSportItem;

    move-result-object v0

    return-object v0
.end method

.method public getActiveTime()I
    .registers 2

    .line 173
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->activeTime:I

    return v0
.end method

.method public getAvgActiveTime()I
    .registers 2

    .line 113
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->avgActiveTime:I

    return v0
.end method

.method public getAvgCalory()F
    .registers 2

    .line 121
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->avgCalory:F

    return v0
.end method

.method public getAvgDistance()F
    .registers 2

    .line 129
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->avgDistance:F

    return v0
.end method

.method public getAvgStep()I
    .registers 2

    .line 105
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->avgStep:I

    return v0
.end method

.method public getCalory()F
    .registers 2

    .line 179
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->calory:F

    return v0
.end method

.method public getDate()J
    .registers 3

    .line 191
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->day:I

    return v0
.end method

.method public getDistance()F
    .registers 2

    .line 185
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->distance:F

    return v0
.end method

.method public getHour()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->hour:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsUploaded()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->isUploaded:Z

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->itemCount:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMinute()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->minute:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 155
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->month:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getStepCount()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->stepCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->year:I

    return v0
.end method

.method public setActiveTime(I)V
    .registers 2

    .line 176
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->activeTime:I

    return-void
.end method

.method public setAvgActiveTime(I)V
    .registers 2

    .line 117
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->avgActiveTime:I

    return-void
.end method

.method public setAvgCalory(F)V
    .registers 2

    .line 125
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->avgCalory:F

    return-void
.end method

.method public setAvgDistance(F)V
    .registers 2

    .line 133
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->avgDistance:F

    return-void
.end method

.method public setAvgStep(I)V
    .registers 2

    .line 109
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->avgStep:I

    return-void
.end method

.method public setCalory(F)V
    .registers 2

    .line 182
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->calory:F

    return-void
.end method

.method public setDate(J)V
    .registers 3

    .line 194
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->day:I

    return-void
.end method

.method public setDistance(F)V
    .registers 2

    .line 188
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->distance:F

    return-void
.end method

.method public setHour(I)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->hour:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsUploaded(Z)V
    .registers 2

    .line 140
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->isUploaded:Z

    return-void
.end method

.method public setItemCount(I)V
    .registers 2

    .line 90
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->itemCount:I

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->macAddress:Ljava/lang/String;

    return-void
.end method

.method public setMinute(I)V
    .registers 2

    .line 82
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->minute:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 158
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->month:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->remark:Ljava/lang/String;

    return-void
.end method

.method public setStepCount(I)V
    .registers 2

    .line 170
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->stepCount:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->userId:Ljava/lang/String;

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 152
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HealthSportItem{isUploaded="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->isUploaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stepCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->stepCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->activeTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->calory:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/greendao/bean/HealthSportItem;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
