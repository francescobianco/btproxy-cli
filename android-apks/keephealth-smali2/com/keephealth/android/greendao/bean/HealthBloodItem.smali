.class public Lcom/keephealth/android/greendao/bean/HealthBloodItem;
.super Ljava/lang/Object;
.source "HealthBloodItem.java"


# instance fields
.field private OxygenValue:I

.field private date:J

.field private day:I

.field private fzValue:I

.field private hour:I

.field private id:Ljava/lang/Long;

.field private isUploaded:Z

.field private minute:I

.field private month:I

.field private ssValue:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->isUploaded:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;IIIJIIIIIZ)V
    .registers 13

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->id:Ljava/lang/Long;

    .line 32
    iput p2, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->fzValue:I

    .line 33
    iput p3, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->ssValue:I

    .line 34
    iput p4, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->OxygenValue:I

    .line 35
    iput-wide p5, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->date:J

    .line 36
    iput p7, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->year:I

    .line 37
    iput p8, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->month:I

    .line 38
    iput p9, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->day:I

    .line 39
    iput p10, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->hour:I

    .line 40
    iput p11, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->minute:I

    .line 41
    iput-boolean p12, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->isUploaded:Z

    return-void
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 105
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->day:I

    return v0
.end method

.method public getFzValue()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->fzValue:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .line 113
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->hour:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsUploaded()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->isUploaded:Z

    return v0
.end method

.method public getMinute()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->minute:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->month:I

    return v0
.end method

.method public getOxygenValue()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->OxygenValue:I

    return v0
.end method

.method public getSsValue()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->ssValue:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->year:I

    return v0
.end method

.method public isUploaded()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->isUploaded:Z

    return v0
.end method

.method public setDate(J)V
    .registers 3

    .line 85
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 109
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->day:I

    return-void
.end method

.method public setFzValue(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->fzValue:I

    return-void
.end method

.method public setHour(I)V
    .registers 2

    .line 117
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->hour:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsUploaded(Z)V
    .registers 2

    .line 133
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->isUploaded:Z

    return-void
.end method

.method public setMinute(I)V
    .registers 2

    .line 125
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->minute:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 101
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->month:I

    return-void
.end method

.method public setOxygenValue(I)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->OxygenValue:I

    return-void
.end method

.method public setSsValue(I)V
    .registers 2

    .line 69
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->ssValue:I

    return-void
.end method

.method public setUploaded(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->isUploaded:Z

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 93
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->year:I

    return-void
.end method
