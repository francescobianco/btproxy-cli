.class public Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;
.super Ljava/lang/Object;
.source "DrinkWaterGoal.java"


# instance fields
.field private hour:I

.field private id:Ljava/lang/Long;

.field private minuter:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;II)V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->id:Ljava/lang/Long;

    .line 22
    iput-object p2, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->name:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->hour:I

    .line 24
    iput p4, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->minuter:I

    return-void
.end method


# virtual methods
.method public getHour()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->hour:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinuter()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->minuter:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setHour(I)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->hour:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMinuter(I)V
    .registers 2

    .line 48
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->minuter:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->name:Ljava/lang/String;

    return-void
.end method
