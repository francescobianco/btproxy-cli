.class public final Lcom/google/api/services/fitness/model/BucketByTime;
.super Lcom/google/api/client/json/GenericJson;
.source "BucketByTime.java"


# instance fields
.field private durationMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private period:Lcom/google/api/services/fitness/model/BucketByTimePeriod;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/BucketByTime;->clone()Lcom/google/api/services/fitness/model/BucketByTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/BucketByTime;->clone()Lcom/google/api/services/fitness/model/BucketByTime;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/BucketByTime;
    .registers 2

    .line 91
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/BucketByTime;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/BucketByTime;->clone()Lcom/google/api/services/fitness/model/BucketByTime;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMillis()Ljava/lang/Long;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/google/api/services/fitness/model/BucketByTime;->durationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getPeriod()Lcom/google/api/services/fitness/model/BucketByTimePeriod;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/google/api/services/fitness/model/BucketByTime;->period:Lcom/google/api/services/fitness/model/BucketByTimePeriod;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/BucketByTime;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/BucketByTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/BucketByTime;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/BucketByTime;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/BucketByTime;
    .registers 3

    .line 86
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/BucketByTime;

    return-object p1
.end method

.method public setDurationMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/BucketByTime;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/google/api/services/fitness/model/BucketByTime;->durationMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setPeriod(Lcom/google/api/services/fitness/model/BucketByTimePeriod;)Lcom/google/api/services/fitness/model/BucketByTime;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/google/api/services/fitness/model/BucketByTime;->period:Lcom/google/api/services/fitness/model/BucketByTimePeriod;

    return-object p0
.end method
