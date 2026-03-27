.class public Lcom/keephealth/android/greendao/bean/EcgRecordInfo;
.super Ljava/lang/Object;
.source "EcgRecordInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x6fL


# instance fields
.field private avgHeart:I

.field private date:J

.field private day:I

.field private desc:Ljava/lang/String;

.field private isUploaded:Z

.field private month:I

.field private state:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZJIIIIILjava/lang/String;)V
    .registers 10

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->isUploaded:Z

    .line 25
    iput-wide p2, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->date:J

    .line 26
    iput p4, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->year:I

    .line 27
    iput p5, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->month:I

    .line 28
    iput p6, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->day:I

    .line 29
    iput p7, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->avgHeart:I

    .line 30
    iput p8, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->state:I

    .line 31
    iput-object p9, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvgHeart()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->avgHeart:I

    return v0
.end method

.method public getDate()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->date:J

    return-wide v0
.end method

.method public getDay()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->day:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIsUploaded()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->isUploaded:Z

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->month:I

    return v0
.end method

.method public getState()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->state:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->year:I

    return v0
.end method

.method public isUploaded()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->isUploaded:Z

    return v0
.end method

.method public setAvgHeart(I)V
    .registers 2

    .line 75
    iput p1, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->avgHeart:I

    return-void
.end method

.method public setDate(J)V
    .registers 3

    .line 43
    iput-wide p1, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->date:J

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->day:I

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public setIsUploaded(Z)V
    .registers 2

    .line 107
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->isUploaded:Z

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->month:I

    return-void
.end method

.method public setState(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->state:I

    return-void
.end method

.method public setUploaded(Z)V
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->isUploaded:Z

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->year:I

    return-void
.end method
