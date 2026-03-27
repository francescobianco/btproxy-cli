.class public Lcom/keephealth/android/model/bean/CountryOrRegion;
.super Ljava/lang/Object;
.source "CountryOrRegion.java"


# instance fields
.field private code:Ljava/lang/String;

.field private dial_code:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private pinyinName:Ljava/lang/String;

.field private sortLetters:Ljava/lang/String;

.field private strokeCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDial_code()Ljava/lang/Integer;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->dial_code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyinName()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->pinyinName:Ljava/lang/String;

    return-object v0
.end method

.method public getSortLetters()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->sortLetters:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeCount()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->strokeCount:I

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->code:Ljava/lang/String;

    return-void
.end method

.method public setDial_code(Ljava/lang/Integer;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->dial_code:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->name:Ljava/lang/String;

    return-void
.end method

.method public setPinyinName(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->pinyinName:Ljava/lang/String;

    return-void
.end method

.method public setSortLetters(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->sortLetters:Ljava/lang/String;

    return-void
.end method

.method public setStrokeCount(I)V
    .registers 2

    .line 99
    iput p1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->strokeCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CountryOrRegion{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', dial_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->dial_code:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sortLetters=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->sortLetters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pinyinName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->pinyinName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', strokeCount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/CountryOrRegion;->strokeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
