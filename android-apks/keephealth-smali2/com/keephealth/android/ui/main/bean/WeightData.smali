.class public Lcom/keephealth/android/ui/main/bean/WeightData;
.super Ljava/lang/Object;
.source "WeightData.java"


# instance fields
.field private bmi:Ljava/lang/String;

.field private data:J

.field private day:I

.field private hour:I

.field private houtMinter:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private minuter:I

.field private mongthDay:Ljava/lang/String;

.field private month:I

.field private weight:F

.field private weightLb:F

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;FFLjava/lang/String;IIIIIJLjava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->id:Ljava/lang/Long;

    .line 28
    iput p2, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->weight:F

    .line 29
    iput p3, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->weightLb:F

    .line 30
    iput-object p4, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->bmi:Ljava/lang/String;

    .line 31
    iput p5, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->year:I

    .line 32
    iput p6, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->month:I

    .line 33
    iput p7, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->day:I

    .line 34
    iput p8, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->hour:I

    .line 35
    iput p9, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->minuter:I

    .line 36
    iput-wide p10, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->data:J

    .line 37
    iput-object p12, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->mongthDay:Ljava/lang/String;

    .line 38
    iput-object p13, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->houtMinter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBmi()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->bmi:Ljava/lang/String;

    return-object v0
.end method

.method public getData()J
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->data:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->day:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->hour:I

    return v0
.end method

.method public getHoutMinter()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->houtMinter:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinuter()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->minuter:I

    return v0
.end method

.method public getMongthDay()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->mongthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->month:I

    return v0
.end method

.method public getWeight()F
    .registers 2

    .line 54
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->weight:F

    return v0
.end method

.method public getWeightLb()F
    .registers 2

    .line 46
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->weightLb:F

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->year:I

    return v0
.end method

.method public setBmi(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->bmi:Ljava/lang/String;

    return-void
.end method

.method public setData(J)V
    .registers 3

    .line 114
    iput-wide p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->data:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 90
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->day:I

    return-void
.end method

.method public setHour(I)V
    .registers 2

    .line 98
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->hour:I

    return-void
.end method

.method public setHoutMinter(Ljava/lang/String;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->houtMinter:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMinuter(I)V
    .registers 2

    .line 106
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->minuter:I

    return-void
.end method

.method public setMongthDay(Ljava/lang/String;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->mongthDay:Ljava/lang/String;

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 82
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->month:I

    return-void
.end method

.method public setWeight(F)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->weight:F

    return-void
.end method

.method public setWeightLb(F)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->weightLb:F

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/WeightData;->year:I

    return-void
.end method
