.class public Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;
.super Ljava/lang/Object;
.source "DrinkWaterDayItem.java"


# instance fields
.field private data:J

.field private day:I

.field private hour:I

.field private minuter:I

.field private month:I

.field private water:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIJ)V
    .registers 9

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->year:I

    .line 24
    iput p2, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->month:I

    .line 25
    iput p3, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->day:I

    .line 26
    iput p4, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->hour:I

    .line 27
    iput p5, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->minuter:I

    .line 28
    iput p6, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->water:I

    .line 29
    iput-wide p7, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->data:J

    return-void
.end method


# virtual methods
.method public getData()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->data:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->day:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->hour:I

    return v0
.end method

.method public getMinuter()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->minuter:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->month:I

    return v0
.end method

.method public getWater()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->water:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->year:I

    return v0
.end method

.method public setData(J)V
    .registers 3

    .line 85
    iput-wide p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->data:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->day:I

    return-void
.end method

.method public setHour(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->hour:I

    return-void
.end method

.method public setMinuter(I)V
    .registers 2

    .line 69
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->minuter:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->month:I

    return-void
.end method

.method public setWater(I)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->water:I

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->year:I

    return-void
.end method
