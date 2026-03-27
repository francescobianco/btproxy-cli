.class public Lcom/keephealth/android/viewmodel/HRVDataBean;
.super Ljava/lang/Object;
.source "HRVDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avgHRV:I

.field private endDate:Ljava/util/Date;

.field hrvDayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HRVDayDataBean;",
            ">;"
        }
    .end annotation
.end field

.field hrvItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HRVItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private maxHRV:I

.field private minHRV:I

.field private startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvgHRV()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->avgHRV:I

    return v0
.end method

.method public getEndDate()Ljava/util/Date;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getHrvDayList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HRVDayDataBean;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->hrvDayList:Ljava/util/List;

    return-object v0
.end method

.method public getHrvItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HRVItemBean;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->hrvItemList:Ljava/util/List;

    return-object v0
.end method

.method public getMaxHRV()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->maxHRV:I

    return v0
.end method

.method public getMinHRV()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->minHRV:I

    return v0
.end method

.method public getStartDate()Ljava/util/Date;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public setAvgHRV(I)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->avgHRV:I

    return-void
.end method

.method public setEndDate(Ljava/util/Date;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->endDate:Ljava/util/Date;

    return-void
.end method

.method public setHrvDayList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HRVDayDataBean;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->hrvDayList:Ljava/util/List;

    return-void
.end method

.method public setHrvItemList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HRVItemBean;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->hrvItemList:Ljava/util/List;

    return-void
.end method

.method public setMaxHRV(I)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->maxHRV:I

    return-void
.end method

.method public setMinHRV(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->minHRV:I

    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/HRVDataBean;->startDate:Ljava/util/Date;

    return-void
.end method
