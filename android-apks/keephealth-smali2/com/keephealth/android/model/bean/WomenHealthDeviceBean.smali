.class public Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;
.super Ljava/lang/Object;
.source "WomenHealthDeviceBean.java"


# instance fields
.field private date:Ljava/lang/String;

.field private endDay:I

.field private endMonth:I

.field private endYear:J

.field private startDay:I

.field private startMonth:I

.field private startYear:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDay()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->endDay:I

    return v0
.end method

.method public getEndMonth()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->endMonth:I

    return v0
.end method

.method public getEndYear()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->endYear:J

    return-wide v0
.end method

.method public getStartDay()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->startDay:I

    return v0
.end method

.method public getStartMonth()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->startMonth:I

    return v0
.end method

.method public getStartYear()J
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->startYear:J

    return-wide v0
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setEndDay(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->endDay:I

    return-void
.end method

.method public setEndMonth(I)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->endMonth:I

    return-void
.end method

.method public setEndYear(J)V
    .registers 3

    .line 51
    iput-wide p1, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->endYear:J

    return-void
.end method

.method public setStartDay(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->startDay:I

    return-void
.end method

.method public setStartMonth(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->startMonth:I

    return-void
.end method

.method public setStartYear(J)V
    .registers 3

    .line 27
    iput-wide p1, p0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->startYear:J

    return-void
.end method
