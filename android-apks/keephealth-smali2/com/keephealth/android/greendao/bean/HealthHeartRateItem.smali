.class public Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;
.super Ljava/lang/Object;
.source "HealthHeartRateItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private HeartRaveValue:I

.field private date:J

.field private day:I

.field private fz:I

.field private hour:I

.field private isUploaded:Z

.field private macAddress:Ljava/lang/String;

.field private minuter:I

.field private month:I

.field private offsetMinute:I

.field private oxygen:I

.field private remark:Ljava/lang/String;

.field private ss:I

.field private userId:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;IIIIIIIIJLjava/lang/String;Ljava/lang/String;II)V
    .registers 20

    move-object v0, p0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 41
    iput-boolean v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->isUploaded:Z

    move-object v1, p2

    .line 42
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->macAddress:Ljava/lang/String;

    move v1, p3

    .line 43
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->year:I

    move v1, p4

    .line 44
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->month:I

    move v1, p5

    .line 45
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->day:I

    move v1, p6

    .line 46
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->offsetMinute:I

    move v1, p7

    .line 47
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->ss:I

    move v1, p8

    .line 48
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->fz:I

    move v1, p9

    .line 49
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->oxygen:I

    move v1, p10

    .line 50
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->HeartRaveValue:I

    move-wide v1, p11

    .line 51
    iput-wide v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->date:J

    move-object/from16 v1, p13

    .line 52
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->userId:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 53
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->remark:Ljava/lang/String;

    move/from16 v1, p15

    .line 54
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->hour:I

    move/from16 v1, p16

    .line 55
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->minuter:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 159
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 3

    .line 103
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->day:I

    return v0
.end method

.method public getFz()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->fz:I

    return v0
.end method

.method public getHeartRaveValue()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->HeartRaveValue:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->hour:I

    return v0
.end method

.method public getIsUploaded()Z
    .registers 2

    .line 79
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->isUploaded:Z

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMinuter()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->minuter:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->month:I

    return v0
.end method

.method public getOffsetMinute()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->offsetMinute:I

    return v0
.end method

.method public getOxygen()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->oxygen:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSs()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->ss:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->year:I

    return v0
.end method

.method public setDate(J)V
    .registers 3

    .line 106
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 136
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->day:I

    return-void
.end method

.method public setFz(I)V
    .registers 2

    .line 148
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->fz:I

    return-void
.end method

.method public setHeartRaveValue(I)V
    .registers 2

    .line 100
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->HeartRaveValue:I

    return-void
.end method

.method public setHour(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->hour:I

    return-void
.end method

.method public setIsUploaded(Z)V
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->isUploaded:Z

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->macAddress:Ljava/lang/String;

    return-void
.end method

.method public setMinuter(I)V
    .registers 2

    .line 75
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->minuter:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 130
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->month:I

    return-void
.end method

.method public setOffsetMinute(I)V
    .registers 2

    .line 94
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->offsetMinute:I

    return-void
.end method

.method public setOxygen(I)V
    .registers 2

    .line 154
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->oxygen:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->remark:Ljava/lang/String;

    return-void
.end method

.method public setSs(I)V
    .registers 2

    .line 142
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->ss:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->userId:Ljava/lang/String;

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 124
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HealthHeartRateItem{isUploaded="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->isUploaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", macAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->offsetMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->ss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->fz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oxygen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->oxygen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", HeartRaveValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->HeartRaveValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
