.class public Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;
.super Ljava/lang/Object;
.source "RealTimeDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dataTime:Ljava/lang/String;

.field private dataValue:I

.field private dataValueTemp:D

.field private date:J

.field private highDataValue:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataTime()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->dataTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDataValue()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->dataValue:I

    return v0
.end method

.method public getDataValueTemp()D
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->dataValueTemp:D

    return-wide v0
.end method

.method public getDate()J
    .registers 3

    .line 31
    iget-wide v0, p0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->date:J

    return-wide v0
.end method

.method public getHighDataValue()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->highDataValue:I

    return v0
.end method

.method public setDataTime(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->dataTime:Ljava/lang/String;

    return-void
.end method

.method public setDataValue(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->dataValue:I

    return-void
.end method

.method public setDataValueTemp(D)V
    .registers 3

    .line 43
    iput-wide p1, p0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->dataValueTemp:D

    return-void
.end method

.method public setDate(J)V
    .registers 3

    .line 35
    iput-wide p1, p0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->date:J

    return-void
.end method

.method public setHighDataValue(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->highDataValue:I

    return-void
.end method
