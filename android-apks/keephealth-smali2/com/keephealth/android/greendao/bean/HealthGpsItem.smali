.class public Lcom/keephealth/android/greendao/bean/HealthGpsItem;
.super Ljava/lang/Object;
.source "HealthGpsItem.java"


# instance fields
.field private date:Ljava/lang/Long;

.field private endDate:Ljava/lang/Long;

.field private id:Ljava/lang/Long;

.field private isUploaded:Z

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private macAddress:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->id:Ljava/lang/Long;

    .line 34
    iput-boolean p2, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->isUploaded:Z

    .line 35
    iput-object p3, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->macAddress:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->startDate:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->endDate:Ljava/lang/Long;

    .line 38
    iput-object p6, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->longitude:Ljava/lang/Double;

    .line 39
    iput-object p7, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->latitude:Ljava/lang/Double;

    .line 40
    iput-object p8, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->date:Ljava/lang/Long;

    .line 41
    iput-object p9, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->userId:Ljava/lang/String;

    .line 42
    iput-object p10, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->remark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/Long;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->date:Ljava/lang/Long;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/Long;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->endDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsUploaded()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->isUploaded:Z

    return v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/Long;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->date:Ljava/lang/Long;

    return-void
.end method

.method public setEndDate(Ljava/lang/Long;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->endDate:Ljava/lang/Long;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsUploaded(Z)V
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->isUploaded:Z

    return-void
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->latitude:Ljava/lang/Double;

    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->macAddress:Ljava/lang/String;

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->remark:Ljava/lang/String;

    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->startDate:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->userId:Ljava/lang/String;

    return-void
.end method
