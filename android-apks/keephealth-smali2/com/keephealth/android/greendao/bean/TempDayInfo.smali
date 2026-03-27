.class public Lcom/keephealth/android/greendao/bean/TempDayInfo;
.super Ljava/lang/Object;
.source "TempDayInfo.java"


# instance fields
.field private avgTemp:D

.field private date:J

.field private day:I

.field private isUploaded:Z

.field private month:I

.field private offSet:I

.field private remark:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->isUploaded:Z

    return-void
.end method

.method public constructor <init>(IIIJDILjava/lang/String;Z)V
    .registers 11

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->year:I

    .line 34
    iput p2, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->month:I

    .line 35
    iput p3, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->day:I

    .line 36
    iput-wide p4, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->date:J

    .line 37
    iput-wide p6, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->avgTemp:D

    .line 38
    iput p8, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->offSet:I

    .line 39
    iput-object p9, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->remark:Ljava/lang/String;

    .line 40
    iput-boolean p10, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->isUploaded:Z

    return-void
.end method


# virtual methods
.method public getAvgTemp()D
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->avgTemp:D

    return-wide v0
.end method

.method public getDate()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->day:I

    return v0
.end method

.method public getIsUploaded()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->isUploaded:Z

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->month:I

    return v0
.end method

.method public getOffSet()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->offSet:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->year:I

    return v0
.end method

.method public isUploaded()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->isUploaded:Z

    return v0
.end method

.method public setAvgTemp(D)V
    .registers 3

    .line 73
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->avgTemp:D

    return-void
.end method

.method public setDate(J)V
    .registers 3

    .line 23
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->day:I

    return-void
.end method

.method public setIsUploaded(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->isUploaded:Z

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->month:I

    return-void
.end method

.method public setOffSet(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->offSet:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->remark:Ljava/lang/String;

    return-void
.end method

.method public setUploaded(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->isUploaded:Z

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 48
    iput p1, p0, Lcom/keephealth/android/greendao/bean/TempDayInfo;->year:I

    return-void
.end method
