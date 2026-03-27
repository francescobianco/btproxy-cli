.class public Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;
.super Ljava/lang/Object;
.source "ChildEntityAllData.java"


# instance fields
.field public isOpen:Z

.field private viewHolder:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;

.field private weightData:Lcom/keephealth/android/greendao/bean/HealthBloodItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/greendao/bean/HealthBloodItem;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->weightData:Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    return-void
.end method


# virtual methods
.method public getViewHolder()Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->viewHolder:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;

    return-object v0
.end method

.method public getWeightData()Lcom/keephealth/android/greendao/bean/HealthBloodItem;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->weightData:Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    return-object v0
.end method

.method public setViewHolder(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->viewHolder:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;

    return-void
.end method

.method public setWeightData(Lcom/keephealth/android/greendao/bean/HealthBloodItem;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->weightData:Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    return-void
.end method
