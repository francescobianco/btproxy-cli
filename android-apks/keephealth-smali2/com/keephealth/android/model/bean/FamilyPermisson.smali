.class public Lcom/keephealth/android/model/bean/FamilyPermisson;
.super Ljava/lang/Object;
.source "FamilyPermisson.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bloodOxygen:Z

.field private bloodPressure:Z

.field private heartRate:Z

.field private sleep:Z

.field private sport:Z

.field private step:Z

.field private temperature:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBloodOxygen()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->bloodOxygen:Z

    return v0
.end method

.method public isBloodPressure()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->bloodPressure:Z

    return v0
.end method

.method public isHeartRate()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->heartRate:Z

    return v0
.end method

.method public isSleep()Z
    .registers 2

    .line 23
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->sleep:Z

    return v0
.end method

.method public isSport()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->sport:Z

    return v0
.end method

.method public isStep()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->step:Z

    return v0
.end method

.method public isTemperature()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->temperature:Z

    return v0
.end method

.method public setBloodOxygen(Z)V
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->bloodOxygen:Z

    return-void
.end method

.method public setBloodPressure(Z)V
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->bloodPressure:Z

    return-void
.end method

.method public setHeartRate(Z)V
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->heartRate:Z

    return-void
.end method

.method public setSleep(Z)V
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->sleep:Z

    return-void
.end method

.method public setSport(Z)V
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->sport:Z

    return-void
.end method

.method public setStep(Z)V
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->step:Z

    return-void
.end method

.method public setTemperature(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/FamilyPermisson;->temperature:Z

    return-void
.end method
