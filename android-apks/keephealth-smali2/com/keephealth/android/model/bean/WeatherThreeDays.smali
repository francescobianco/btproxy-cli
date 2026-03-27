.class public Lcom/keephealth/android/model/bean/WeatherThreeDays;
.super Ljava/lang/Object;
.source "WeatherThreeDays.java"


# instance fields
.field private daily:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/WeatherNext;",
            ">;"
        }
    .end annotation
.end field

.field private now:Lcom/keephealth/android/model/bean/WeatherResult;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDaily()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/WeatherNext;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WeatherThreeDays;->daily:Ljava/util/List;

    return-object v0
.end method

.method public getNow()Lcom/keephealth/android/model/bean/WeatherResult;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WeatherThreeDays;->now:Lcom/keephealth/android/model/bean/WeatherResult;

    return-object v0
.end method

.method public setDaily(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/WeatherNext;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/model/bean/WeatherThreeDays;->daily:Ljava/util/List;

    return-void
.end method

.method public setNow(Lcom/keephealth/android/model/bean/WeatherResult;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/keephealth/android/model/bean/WeatherThreeDays;->now:Lcom/keephealth/android/model/bean/WeatherResult;

    return-void
.end method
