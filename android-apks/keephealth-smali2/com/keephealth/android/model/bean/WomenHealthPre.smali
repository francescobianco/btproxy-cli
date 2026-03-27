.class public Lcom/keephealth/android/model/bean/WomenHealthPre;
.super Ljava/lang/Object;
.source "WomenHealthPre.java"


# instance fields
.field private date:Ljava/lang/String;

.field private day:I

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

    .line 10
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WomenHealthPre;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthPre;->day:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthPre;->month:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/keephealth/android/model/bean/WomenHealthPre;->year:I

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/keephealth/android/model/bean/WomenHealthPre;->date:Ljava/lang/String;

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthPre;->day:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthPre;->month:I

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/keephealth/android/model/bean/WomenHealthPre;->year:I

    return-void
.end method
