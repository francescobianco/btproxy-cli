.class public Lcom/keephealth/android/model/bean/WomenHealthAllNext;
.super Ljava/lang/Object;
.source "WomenHealthAllNext.java"


# instance fields
.field private date:Ljava/lang/String;

.field private day:I

.field private isMenstrual:I

.field private isPregnancy:I

.field private isStartData:I

.field private month:I

.field private year:I


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

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->day:I

    return v0
.end method

.method public getIsMenstrual()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->isMenstrual:I

    return v0
.end method

.method public getIsPregnancy()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->isPregnancy:I

    return v0
.end method

.method public getIsStartData()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->isStartData:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->month:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->year:I

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->date:Ljava/lang/String;

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->day:I

    return-void
.end method

.method public setIsMenstrual(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->isMenstrual:I

    return-void
.end method

.method public setIsPregnancy(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->isPregnancy:I

    return-void
.end method

.method public setIsStartData(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->isStartData:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->month:I

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->year:I

    return-void
.end method
