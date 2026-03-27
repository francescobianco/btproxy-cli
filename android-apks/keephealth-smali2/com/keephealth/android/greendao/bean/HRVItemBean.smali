.class public Lcom/keephealth/android/greendao/bean/HRVItemBean;
.super Ljava/lang/Object;
.source "HRVItemBean.java"


# instance fields
.field private date:J

.field private day:I

.field private hour:I

.field private id:Ljava/lang/Long;

.field private minute:I

.field private month:I

.field private offTime:I

.field private remark:Ljava/lang/String;

.field private tmpForehead:I

.field private tmpHandler:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;IIIJIIIIILjava/lang/String;)V
    .registers 13

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->id:Ljava/lang/Long;

    .line 32
    iput p2, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->year:I

    .line 33
    iput p3, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->month:I

    .line 34
    iput p4, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->day:I

    .line 35
    iput-wide p5, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->date:J

    .line 36
    iput p7, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->hour:I

    .line 37
    iput p8, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->minute:I

    .line 38
    iput p9, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->tmpHandler:I

    .line 39
    iput p10, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->tmpForehead:I

    .line 40
    iput p11, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->offTime:I

    .line 41
    iput-object p12, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->remark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .line 77
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->day:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->hour:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinute()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->minute:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->month:I

    return v0
.end method

.method public getOffTime()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->offTime:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getTmpForehead()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->tmpForehead:I

    return v0
.end method

.method public getTmpHandler()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->tmpHandler:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->year:I

    return v0
.end method

.method public setDate(J)V
    .registers 3

    .line 81
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->day:I

    return-void
.end method

.method public setHour(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->hour:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMinute(I)V
    .registers 2

    .line 97
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->minute:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->month:I

    return-void
.end method

.method public setOffTime(I)V
    .registers 2

    .line 121
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->offTime:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->remark:Ljava/lang/String;

    return-void
.end method

.method public setTmpForehead(I)V
    .registers 2

    .line 113
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->tmpForehead:I

    return-void
.end method

.method public setTmpHandler(I)V
    .registers 2

    .line 105
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->tmpHandler:I

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HRVItemBean{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tmpHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->tmpHandler:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tmpForehead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->tmpForehead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->offTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/HRVItemBean;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
