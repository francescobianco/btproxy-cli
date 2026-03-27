.class public Lcom/keephealth/android/ui/main/bean/ChildEntity;
.super Ljava/lang/Object;
.source "ChildEntity.java"


# instance fields
.field public isOpen:Z

.field private viewHolder:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;

.field private weightData:Lcom/keephealth/android/ui/main/bean/WeightData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/bean/WeightData;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/ChildEntity;->weightData:Lcom/keephealth/android/ui/main/bean/WeightData;

    return-void
.end method


# virtual methods
.method public getViewHolder()Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/ChildEntity;->viewHolder:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;

    return-object v0
.end method

.method public getWeightData()Lcom/keephealth/android/ui/main/bean/WeightData;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/ChildEntity;->weightData:Lcom/keephealth/android/ui/main/bean/WeightData;

    return-object v0
.end method

.method public setViewHolder(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/ChildEntity;->viewHolder:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;

    return-void
.end method

.method public setWeightData(Lcom/keephealth/android/ui/main/bean/WeightData;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/ChildEntity;->weightData:Lcom/keephealth/android/ui/main/bean/WeightData;

    return-void
.end method
