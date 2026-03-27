.class public Lcom/keephealth/android/greendao/bean/HealthBlood;
.super Ljava/lang/Object;
.source "HealthBlood.java"


# instance fields
.field private avgBlood:Ljava/lang/String;

.field private avgBloodFz:I

.field private avgBloodSs:I

.field private avgOxygen:I

.field private data:J

.field private day:I

.field private isUploaded:Z

.field private maxBlood:Ljava/lang/String;

.field private maxBloodFz:I

.field private maxBloodSs:I

.field private maxOxygen:I

.field private minBlood:Ljava/lang/String;

.field private minBloodFz:I

.field private minBloodSs:I

.field private minOxygen:I

.field private month:I

.field private reMark:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->isUploaded:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIIIJLjava/lang/String;)V
    .registers 23

    move-object v0, p0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 35
    iput-boolean v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->isUploaded:Z

    move-object v1, p2

    .line 36
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->maxBlood:Ljava/lang/String;

    move-object v1, p3

    .line 37
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->minBlood:Ljava/lang/String;

    move-object v1, p4

    .line 38
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->avgBlood:Ljava/lang/String;

    move v1, p5

    .line 39
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->maxOxygen:I

    move v1, p6

    .line 40
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->minOxygen:I

    move v1, p7

    .line 41
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->avgOxygen:I

    move v1, p8

    .line 42
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->maxBloodFz:I

    move v1, p9

    .line 43
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->minBloodFz:I

    move v1, p10

    .line 44
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->maxBloodSs:I

    move v1, p11

    .line 45
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->minBloodSs:I

    move v1, p12

    .line 46
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->avgBloodFz:I

    move/from16 v1, p13

    .line 47
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->avgBloodSs:I

    move/from16 v1, p14

    .line 48
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->year:I

    move/from16 v1, p15

    .line 49
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->month:I

    move/from16 v1, p16

    .line 50
    iput v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->day:I

    move-wide/from16 v1, p17

    .line 51
    iput-wide v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->data:J

    move-object/from16 v1, p19

    .line 52
    iput-object v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;->reMark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvgBlood()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->avgBlood:Ljava/lang/String;

    return-object v0
.end method

.method public getAvgBloodFz()I
    .registers 2

    .line 173
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->avgBloodFz:I

    return v0
.end method

.method public getAvgBloodSs()I
    .registers 2

    .line 181
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->avgBloodSs:I

    return v0
.end method

.method public getAvgOxygen()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->avgOxygen:I

    return v0
.end method

.method public getData()J
    .registers 3

    .line 77
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->data:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 165
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->day:I

    return v0
.end method

.method public getIsUploaded()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->isUploaded:Z

    return v0
.end method

.method public getMaxBlood()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->maxBlood:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxBloodFz()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->maxBloodFz:I

    return v0
.end method

.method public getMaxBloodSs()I
    .registers 2

    .line 105
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->maxBloodSs:I

    return v0
.end method

.method public getMaxOxygen()I
    .registers 2

    .line 189
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->maxOxygen:I

    return v0
.end method

.method public getMinBlood()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->minBlood:Ljava/lang/String;

    return-object v0
.end method

.method public getMinBloodFz()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->minBloodFz:I

    return v0
.end method

.method public getMinBloodSs()I
    .registers 2

    .line 113
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->minBloodSs:I

    return v0
.end method

.method public getMinOxygen()I
    .registers 2

    .line 197
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->minOxygen:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 157
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->month:I

    return v0
.end method

.method public getReMark()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->reMark:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->year:I

    return v0
.end method

.method public isUploaded()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->isUploaded:Z

    return v0
.end method

.method public setAvgBlood(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->avgBlood:Ljava/lang/String;

    return-void
.end method

.method public setAvgBloodFz(I)V
    .registers 2

    .line 177
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->avgBloodFz:I

    return-void
.end method

.method public setAvgBloodSs(I)V
    .registers 2

    .line 185
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->avgBloodSs:I

    return-void
.end method

.method public setAvgOxygen(I)V
    .registers 2

    .line 145
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->avgOxygen:I

    return-void
.end method

.method public setData(J)V
    .registers 3

    .line 81
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->data:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 169
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->day:I

    return-void
.end method

.method public setIsUploaded(Z)V
    .registers 2

    .line 209
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->isUploaded:Z

    return-void
.end method

.method public setMaxBlood(Ljava/lang/String;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->maxBlood:Ljava/lang/String;

    return-void
.end method

.method public setMaxBloodFz(I)V
    .registers 2

    .line 93
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->maxBloodFz:I

    return-void
.end method

.method public setMaxBloodSs(I)V
    .registers 2

    .line 109
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->maxBloodSs:I

    return-void
.end method

.method public setMaxOxygen(I)V
    .registers 2

    .line 193
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->maxOxygen:I

    return-void
.end method

.method public setMinBlood(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->minBlood:Ljava/lang/String;

    return-void
.end method

.method public setMinBloodFz(I)V
    .registers 2

    .line 101
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->minBloodFz:I

    return-void
.end method

.method public setMinBloodSs(I)V
    .registers 2

    .line 117
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->minBloodSs:I

    return-void
.end method

.method public setMinOxygen(I)V
    .registers 2

    .line 201
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->minOxygen:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 161
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->month:I

    return-void
.end method

.method public setReMark(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->reMark:Ljava/lang/String;

    return-void
.end method

.method public setUploaded(Z)V
    .registers 2

    .line 64
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->isUploaded:Z

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 153
    iput p1, p0, Lcom/keephealth/android/greendao/bean/HealthBlood;->year:I

    return-void
.end method
