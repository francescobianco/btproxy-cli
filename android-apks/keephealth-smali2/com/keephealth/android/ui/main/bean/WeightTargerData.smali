.class public Lcom/keephealth/android/ui/main/bean/WeightTargerData;
.super Ljava/lang/Object;
.source "WeightTargerData.java"


# instance fields
.field private deviceName:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private weightLb:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;FLjava/lang/String;)V
    .registers 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->id:Ljava/lang/Long;

    .line 18
    iput p2, p0, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->weightLb:F

    .line 19
    iput-object p3, p0, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->deviceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getWeightLb()F
    .registers 2

    .line 33
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->weightLb:F

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setWeightLb(F)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->weightLb:F

    return-void
.end method
