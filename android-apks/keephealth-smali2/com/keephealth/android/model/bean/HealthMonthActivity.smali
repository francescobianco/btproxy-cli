.class public Lcom/keephealth/android/model/bean/HealthMonthActivity;
.super Ljava/lang/Object;
.source "HealthMonthActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private healthActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthActivity;",
            ">;"
        }
    .end annotation
.end field

.field private stMonth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHealthActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthActivity;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/keephealth/android/model/bean/HealthMonthActivity;->healthActivities:Ljava/util/List;

    return-object v0
.end method

.method public getStMonth()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/keephealth/android/model/bean/HealthMonthActivity;->stMonth:Ljava/lang/String;

    return-object v0
.end method

.method public setHealthActivities(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthActivity;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/model/bean/HealthMonthActivity;->healthActivities:Ljava/util/List;

    return-void
.end method

.method public setStMonth(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/model/bean/HealthMonthActivity;->stMonth:Ljava/lang/String;

    return-void
.end method
