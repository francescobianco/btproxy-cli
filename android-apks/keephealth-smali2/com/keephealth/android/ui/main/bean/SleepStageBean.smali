.class public Lcom/keephealth/android/ui/main/bean/SleepStageBean;
.super Ljava/lang/Object;
.source "SleepStageBean.java"


# instance fields
.field private endTime:Ljava/lang/String;

.field private index:I

.field private isOnlyOne:Z

.field private sleepAwakeDuration:I

.field private sleepDeepDuration:I

.field private sleepLightDuration:I

.field private sleepRemDuration:I

.field private sleepTotalDuration:I

.field private startTime:Ljava/lang/String;

.field private timeSection:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->index:I

    return v0
.end method

.method public getSleepAwakeDuration()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->sleepAwakeDuration:I

    return v0
.end method

.method public getSleepDeepDuration()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->sleepDeepDuration:I

    return v0
.end method

.method public getSleepLightDuration()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->sleepLightDuration:I

    return v0
.end method

.method public getSleepRemDuration()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->sleepRemDuration:I

    return v0
.end method

.method public getSleepTotalDuration()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->sleepTotalDuration:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSection()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->timeSection:Ljava/lang/String;

    return-object v0
.end method

.method public isOnlyOne()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->isOnlyOne:Z

    return v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->index:I

    return-void
.end method

.method public setOnlyOne(Z)V
    .registers 2

    .line 94
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->isOnlyOne:Z

    return-void
.end method

.method public setSleepAwakeDuration(I)V
    .registers 2

    .line 78
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->sleepAwakeDuration:I

    return-void
.end method

.method public setSleepDeepDuration(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->sleepDeepDuration:I

    return-void
.end method

.method public setSleepLightDuration(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->sleepLightDuration:I

    return-void
.end method

.method public setSleepRemDuration(I)V
    .registers 2

    .line 86
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->sleepRemDuration:I

    return-void
.end method

.method public setSleepTotalDuration(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->sleepTotalDuration:I

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setTimeSection(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->timeSection:Ljava/lang/String;

    return-void
.end method
