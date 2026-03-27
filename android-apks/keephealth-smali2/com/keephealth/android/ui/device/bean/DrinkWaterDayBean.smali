.class public Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;
.super Ljava/lang/Object;
.source "DrinkWaterDayBean.java"


# instance fields
.field private data:J

.field private day:I

.field private id:Ljava/lang/Long;

.field private month:I

.field private reMark:Ljava/lang/String;

.field private water:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;IIIIJLjava/lang/String;)V
    .registers 9

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->id:Ljava/lang/Long;

    .line 27
    iput p2, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->year:I

    .line 28
    iput p3, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->month:I

    .line 29
    iput p4, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->day:I

    .line 30
    iput p5, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->water:I

    .line 31
    iput-wide p6, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->data:J

    .line 32
    iput-object p8, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->reMark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->data:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->day:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMonth()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->month:I

    return v0
.end method

.method public getReMark()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->reMark:Ljava/lang/String;

    return-object v0
.end method

.method public getWater()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->water:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->year:I

    return v0
.end method

.method public setData(J)V
    .registers 3

    .line 48
    iput-wide p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->data:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->day:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->month:I

    return-void
.end method

.method public setReMark(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->reMark:Ljava/lang/String;

    return-void
.end method

.method public setWater(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->water:I

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->year:I

    return-void
.end method
