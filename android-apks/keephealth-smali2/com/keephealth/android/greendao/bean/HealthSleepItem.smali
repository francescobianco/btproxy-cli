.class public Lcom/keephealth/android/greendao/bean/HealthSleepItem;
.super Ljava/lang/Object;
.source "HealthSleepItem.java"


# instance fields
.field private accuracyType:I

.field private date:J

.field private day:I

.field private hour:I

.field private index:I

.field private minuter:I

.field private month:I

.field private offsetMinute:I

.field private remark:Ljava/lang/String;

.field private sleepStatus:I

.field private sleeptime:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;III)V
    .registers 15

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->year:I

    .line 31
    iput p2, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->month:I

    .line 32
    iput p3, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->day:I

    .line 33
    iput p4, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->offsetMinute:I

    .line 34
    iput-object p5, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->sleeptime:Ljava/lang/String;

    .line 35
    iput p6, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->index:I

    .line 36
    iput p7, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->sleepStatus:I

    .line 37
    iput-wide p8, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->date:J

    .line 38
    iput-object p10, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->userId:Ljava/lang/String;

    .line 39
    iput-object p11, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->remark:Ljava/lang/String;

    .line 40
    iput p12, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->hour:I

    .line 41
    iput p13, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->minuter:I

    .line 42
    iput p14, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->accuracyType:I

    return-void
.end method


# virtual methods
.method public getAccuracyType()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->accuracyType:I

    return v0
.end method

.method public getDate()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->day:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->hour:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->index:I

    return v0
.end method

.method public getMinuter()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->minuter:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->month:I

    return v0
.end method

.method public getOffsetMinute()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->offsetMinute:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepStatus()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->sleepStatus:I

    return v0
.end method

.method public getSleeptime()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->sleeptime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->year:I

    return v0
.end method

.method public setAccuracyType(I)V
    .registers 2

    .line 131
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->accuracyType:I

    return-void
.end method

.method public setDate(J)V
    .registers 3

    .line 111
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->day:I

    return-void
.end method

.method public setHour(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->hour:I

    return-void
.end method

.method public setIndex(I)V
    .registers 2

    .line 99
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->index:I

    return-void
.end method

.method public setMinuter(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->minuter:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 75
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->month:I

    return-void
.end method

.method public setOffsetMinute(I)V
    .registers 2

    .line 87
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->offsetMinute:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->remark:Ljava/lang/String;

    return-void
.end method

.method public setSleepStatus(I)V
    .registers 2

    .line 105
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->sleepStatus:I

    return-void
.end method

.method public setSleeptime(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->sleeptime:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->userId:Ljava/lang/String;

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 69
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->year:I

    return-void
.end method
