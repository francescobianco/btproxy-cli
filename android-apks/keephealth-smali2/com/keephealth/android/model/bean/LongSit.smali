.class public Lcom/keephealth/android/model/bean/LongSit;
.super Ljava/lang/Object;
.source "LongSit.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private effectiveEndHour:I

.field private effectiveEndMinute:I

.field private effectiveOnOff:Z

.field private effectiveRepetitions:I

.field private effectiveStartHour:I

.field private effectiveStartMinute:I

.field private effectiveWeeksEff:[Z

.field private interval:I

.field private invalidEndHour:I

.field private invalidEndMinute:I

.field private invalidOnOff:Z

.field private invalidRepetitions:I

.field private invalidStartHour:I

.field private invalidStartMinute:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 15
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveWeeksEff:[Z

    return-void
.end method

.method private toByte([ZZ)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x7

    if-ge v0, v2, :cond_12

    .line 153
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_f

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    if-eqz p2, :cond_16

    or-int/lit8 v1, v1, 0x1

    :cond_16
    return v1
.end method


# virtual methods
.method public getEffectiveEndHour()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveEndHour:I

    return v0
.end method

.method public getEffectiveEndMinute()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveEndMinute:I

    return v0
.end method

.method public getEffectiveRepetitions()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveRepetitions:I

    return v0
.end method

.method public getEffectiveStartHour()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveStartHour:I

    return v0
.end method

.method public getEffectiveStartMinute()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveStartMinute:I

    return v0
.end method

.method public getEffectiveWeeksEff()[Z
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveWeeksEff:[Z

    return-object v0
.end method

.method public getInterval()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->interval:I

    return v0
.end method

.method public getInvalidEndHour()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidEndHour:I

    return v0
.end method

.method public getInvalidEndMinute()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidEndMinute:I

    return v0
.end method

.method public getInvalidRepetitions()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidRepetitions:I

    return v0
.end method

.method public getInvalidStartHour()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidStartHour:I

    return v0
.end method

.method public getInvalidStartMinute()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidStartMinute:I

    return v0
.end method

.method public isEffectiveOnOff()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveOnOff:Z

    return v0
.end method

.method public isInvalidOnOff()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidOnOff:Z

    return v0
.end method

.method public setEffectiveEndHour(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveEndHour:I

    return-void
.end method

.method public setEffectiveEndMinute(I)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveEndMinute:I

    return-void
.end method

.method public setEffectiveOnOff(ZZ)V
    .registers 4

    if-eqz p2, :cond_b

    .line 76
    iget-object p2, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveWeeksEff:[Z

    invoke-direct {p0, p2, p1}, Lcom/keephealth/android/model/bean/LongSit;->toByte([ZZ)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveRepetitions:I

    goto :goto_14

    .line 78
    :cond_b
    iget-object p2, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveWeeksEff:[Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/keephealth/android/model/bean/LongSit;->toByte([ZZ)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveRepetitions:I

    .line 80
    :goto_14
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setEffectiveWeeksEff: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveRepetitions:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u5468\u671f\u5b57\u82822"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveOnOff:Z

    return-void
.end method

.method public setEffectiveStartHour(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveStartHour:I

    return-void
.end method

.method public setEffectiveStartMinute(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveStartMinute:I

    return-void
.end method

.method public setEffectiveWeeksEff([ZZ)V
    .registers 4

    if-eqz p2, :cond_b

    .line 90
    iget-boolean p2, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveOnOff:Z

    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->toByte([ZZ)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveRepetitions:I

    goto :goto_12

    :cond_b
    const/4 p2, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->toByte([ZZ)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveRepetitions:I

    .line 95
    :goto_12
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setEffectiveWeeksEff: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveRepetitions:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u5468\u671f\u5b57\u8282"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-boolean p2, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidOnOff:Z

    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->toByte([ZZ)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidRepetitions:I

    .line 97
    iput-object p1, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveWeeksEff:[Z

    return-void
.end method

.method public setInterval(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/keephealth/android/model/bean/LongSit;->interval:I

    return-void
.end method

.method public setInvalidEndHour(I)V
    .registers 2

    .line 121
    iput p1, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidEndHour:I

    return-void
.end method

.method public setInvalidEndMinute(I)V
    .registers 2

    .line 129
    iput p1, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidEndMinute:I

    return-void
.end method

.method public setInvalidOnOff(Z)V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/model/bean/LongSit;->effectiveWeeksEff:[Z

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/model/bean/LongSit;->toByte([ZZ)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidRepetitions:I

    .line 138
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidOnOff:Z

    return-void
.end method

.method public setInvalidStartHour(I)V
    .registers 2

    .line 105
    iput p1, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidStartHour:I

    return-void
.end method

.method public setInvalidStartMinute(I)V
    .registers 2

    .line 113
    iput p1, p0, Lcom/keephealth/android/model/bean/LongSit;->invalidStartMinute:I

    return-void
.end method
