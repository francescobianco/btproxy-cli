.class public Lcom/keephealth/android/greendao/bean/ECGItemInfo;
.super Ljava/lang/Object;
.source "ECGItemInfo.java"


# instance fields
.field private date:J

.field private day:I

.field private hr:F

.field private month:I

.field private speed:I

.field private state:I

.field private userId:Ljava/lang/String;

.field private year:I

.field private zengYi:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->state:I

    return-void
.end method

.method public constructor <init>(IIIJLjava/lang/String;IIFI)V
    .registers 11

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->year:I

    .line 25
    iput p2, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->month:I

    .line 26
    iput p3, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->day:I

    .line 27
    iput-wide p4, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->date:J

    .line 28
    iput-object p6, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->userId:Ljava/lang/String;

    .line 29
    iput p7, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->zengYi:I

    .line 30
    iput p8, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->speed:I

    .line 31
    iput p9, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->hr:F

    .line 32
    iput p10, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->state:I

    return-void
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->day:I

    return v0
.end method

.method public getHr()F
    .registers 2

    .line 96
    iget v0, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->hr:F

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->month:I

    return v0
.end method

.method public getSpeed()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->speed:I

    return v0
.end method

.method public getState()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->state:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->year:I

    return v0
.end method

.method public getZengYi()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->zengYi:I

    return v0
.end method

.method public setDate(J)V
    .registers 3

    .line 68
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->day:I

    return-void
.end method

.method public setHr(F)V
    .registers 2

    .line 100
    iput p1, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->hr:F

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->month:I

    return-void
.end method

.method public setSpeed(I)V
    .registers 2

    .line 92
    iput p1, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->speed:I

    return-void
.end method

.method public setState(I)V
    .registers 2

    .line 108
    iput p1, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->state:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->year:I

    return-void
.end method

.method public setZengYi(I)V
    .registers 2

    .line 84
    iput p1, p0, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->zengYi:I

    return-void
.end method
