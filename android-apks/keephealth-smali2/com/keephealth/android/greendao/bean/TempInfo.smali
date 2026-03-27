.class public Lcom/keephealth/android/greendao/bean/TempInfo;
.super Ljava/lang/Object;
.source "TempInfo.java"


# instance fields
.field private date:J

.field private day:I

.field private hour:I

.field private minute:I

.field private month:I

.field private offTime:I

.field private remark:Ljava/lang/String;

.field private tmpForehead:D

.field private tmpHandler:D

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIJIIDDILjava/lang/String;)V
    .registers 14

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->year:I

    .line 59
    iput p2, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->month:I

    .line 60
    iput p3, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->day:I

    .line 61
    iput-wide p4, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->date:J

    .line 62
    iput p6, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->hour:I

    .line 63
    iput p7, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->minute:I

    .line 64
    iput-wide p8, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->tmpHandler:D

    .line 65
    iput-wide p10, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->tmpForehead:D

    .line 66
    iput p12, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->offTime:I

    .line 67
    iput-object p13, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->remark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .line 111
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->day:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->hour:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->minute:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->month:I

    return v0
.end method

.method public getOffTime()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->offTime:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getTmpForehead()D
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->tmpForehead:D

    return-wide v0
.end method

.method public getTmpHandler()D
    .registers 3

    .line 36
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->tmpHandler:D

    return-wide v0
.end method

.method public getYear()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->year:I

    return v0
.end method

.method public setDate(J)V
    .registers 3

    .line 115
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 107
    iput p1, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->day:I

    return-void
.end method

.method public setHour(I)V
    .registers 2

    .line 75
    iput p1, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->hour:I

    return-void
.end method

.method public setMinute(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->minute:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 99
    iput p1, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->month:I

    return-void
.end method

.method public setOffTime(I)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->offTime:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->remark:Ljava/lang/String;

    return-void
.end method

.method public setTmpForehead(D)V
    .registers 3

    .line 48
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->tmpForehead:D

    return-void
.end method

.method public setTmpHandler(D)V
    .registers 3

    .line 40
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->tmpHandler:D

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 91
    iput p1, p0, Lcom/keephealth/android/greendao/bean/TempInfo;->year:I

    return-void
.end method
