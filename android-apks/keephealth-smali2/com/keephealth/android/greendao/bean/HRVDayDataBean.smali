.class public Lcom/keephealth/android/greendao/bean/HRVDayDataBean;
.super Ljava/lang/Object;
.source "HRVDayDataBean.java"


# instance fields
.field private avgTemp:I

.field private date:J

.field private day:I

.field private id:Ljava/lang/Long;

.field private isUploaded:Z

.field private maxValue:I

.field private minValue:I

.field private month:I

.field private offSet:I

.field private remark:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->isUploaded:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;IIIJIILjava/lang/String;ZII)V
    .registers 13

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->id:Ljava/lang/Long;

    .line 31
    iput p2, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->year:I

    .line 32
    iput p3, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->month:I

    .line 33
    iput p4, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->day:I

    .line 34
    iput-wide p5, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->date:J

    .line 35
    iput p7, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->avgTemp:I

    .line 36
    iput p8, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->offSet:I

    .line 37
    iput-object p9, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->remark:Ljava/lang/String;

    .line 38
    iput-boolean p10, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->isUploaded:Z

    .line 39
    iput p11, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->minValue:I

    .line 40
    iput p12, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->maxValue:I

    return-void
.end method


# virtual methods
.method public getAvgTemp()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->avgTemp:I

    return v0
.end method

.method public getDate()J
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->day:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsUploaded()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->isUploaded:Z

    return v0
.end method

.method public getMaxValue()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->maxValue:I

    return v0
.end method

.method public getMinValue()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->minValue:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->month:I

    return v0
.end method

.method public getOffSet()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->offSet:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->year:I

    return v0
.end method

.method public isUploaded()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->isUploaded:Z

    return v0
.end method

.method public setAvgTemp(I)V
    .registers 2

    .line 104
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->avgTemp:I

    return-void
.end method

.method public setDate(J)V
    .registers 3

    .line 96
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->day:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsUploaded(Z)V
    .registers 2

    .line 136
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->isUploaded:Z

    return-void
.end method

.method public setMaxValue(I)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->maxValue:I

    return-void
.end method

.method public setMinValue(I)V
    .registers 2

    .line 48
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->minValue:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->month:I

    return-void
.end method

.method public setOffSet(I)V
    .registers 2

    .line 112
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->offSet:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->remark:Ljava/lang/String;

    return-void
.end method

.method public setUploaded(Z)V
    .registers 2

    .line 128
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->isUploaded:Z

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HRVDayDataBean{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->avgTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->offSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', isUploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->isUploaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->minValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->maxValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
