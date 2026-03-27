.class public Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
.super Ljava/lang/Object;
.source "WomenHealthBean.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
        ">;"
    }
.end annotation


# instance fields
.field private day:I

.field private dysmenorrhea:I

.field private flow:I

.field private id:Ljava/lang/Long;

.field private isClick:I

.field private isEndMenstrualDate:I

.field private isMenstrual:I

.field private isPregnancy:I

.field private isStartData:I

.field private isSystem:I

.field private makeLove:I

.field private month:I

.field private mood:I

.field private solarDate:J

.field private symptom:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->makeLove:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->symptom:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;IIIIILjava/lang/String;IIIIIIJII)V
    .registers 21

    move-object v0, p0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 46
    iput-object v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->id:Ljava/lang/Long;

    move v1, p2

    .line 47
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isPregnancy:I

    move v1, p3

    .line 48
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->makeLove:I

    move v1, p4

    .line 49
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isMenstrual:I

    move v1, p5

    .line 50
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->dysmenorrhea:I

    move v1, p6

    .line 51
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->flow:I

    move-object v1, p7

    .line 52
    iput-object v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->symptom:Ljava/lang/String;

    move v1, p8

    .line 53
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->mood:I

    move v1, p9

    .line 54
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isStartData:I

    move v1, p10

    .line 55
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isEndMenstrualDate:I

    move v1, p11

    .line 56
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->year:I

    move v1, p12

    .line 57
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->month:I

    move/from16 v1, p13

    .line 58
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->day:I

    move-wide/from16 v1, p14

    .line 59
    iput-wide v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->solarDate:J

    move/from16 v1, p16

    .line 60
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isSystem:I

    move/from16 v1, p17

    .line 61
    iput v1, v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isClick:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)I
    .registers 3

    .line 24
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->day:I

    iget p1, p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->day:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 11
    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->compareTo(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)I

    move-result p1

    return p1
.end method

.method public getDay()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->day:I

    return v0
.end method

.method public getDysmenorrhea()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->dysmenorrhea:I

    return v0
.end method

.method public getFlow()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->flow:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsClick()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isClick:I

    return v0
.end method

.method public getIsEndMenstrualDate()I
    .registers 2

    .line 197
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isEndMenstrualDate:I

    return v0
.end method

.method public getIsMenstrual()I
    .registers 2

    .line 157
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isMenstrual:I

    return v0
.end method

.method public getIsPregnancy()I
    .registers 2

    .line 182
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isPregnancy:I

    return v0
.end method

.method public getIsStartData()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isStartData:I

    return v0
.end method

.method public getIsSystem()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isSystem:I

    return v0
.end method

.method public getMakeLove()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->makeLove:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->month:I

    return v0
.end method

.method public getMood()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->mood:I

    return v0
.end method

.method public getSolarDate()J
    .registers 3

    .line 141
    iget-wide v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->solarDate:J

    return-wide v0
.end method

.method public getSymptom()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->symptom:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->year:I

    return v0
.end method

.method public setDay(I)V
    .registers 2

    .line 137
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->day:I

    return-void
.end method

.method public setDysmenorrhea(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->dysmenorrhea:I

    return-void
.end method

.method public setFlow(I)V
    .registers 2

    .line 97
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->flow:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsClick(I)V
    .registers 2

    .line 178
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isClick:I

    return-void
.end method

.method public setIsEndMenstrualDate(I)V
    .registers 2

    .line 201
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isEndMenstrualDate:I

    return-void
.end method

.method public setIsMenstrual(I)V
    .registers 2

    .line 161
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isMenstrual:I

    return-void
.end method

.method public setIsPregnancy(I)V
    .registers 2

    .line 186
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isPregnancy:I

    return-void
.end method

.method public setIsStartData(I)V
    .registers 2

    .line 153
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isStartData:I

    return-void
.end method

.method public setIsSystem(I)V
    .registers 2

    .line 170
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isSystem:I

    return-void
.end method

.method public setMakeLove(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->makeLove:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 129
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->month:I

    return-void
.end method

.method public setMood(I)V
    .registers 2

    .line 113
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->mood:I

    return-void
.end method

.method public setSolarDate(J)V
    .registers 3

    .line 145
    iput-wide p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->solarDate:J

    return-void
.end method

.method public setSymptom(Ljava/lang/String;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->symptom:Ljava/lang/String;

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 121
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WomenHealthBean{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPregnancy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isPregnancy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", makeLove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->makeLove:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMenstrual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isMenstrual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dysmenorrhea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->dysmenorrhea:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->flow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", symptom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->symptom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mood="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->mood:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isStartData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isStartData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->isClick:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
