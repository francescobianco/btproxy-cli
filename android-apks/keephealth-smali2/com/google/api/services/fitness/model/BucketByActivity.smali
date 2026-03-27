.class public final Lcom/google/api/services/fitness/model/BucketByActivity;
.super Lcom/google/api/client/json/GenericJson;
.source "BucketByActivity.java"


# instance fields
.field private activityDataSourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private minDurationMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/BucketByActivity;->clone()Lcom/google/api/services/fitness/model/BucketByActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/BucketByActivity;->clone()Lcom/google/api/services/fitness/model/BucketByActivity;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/BucketByActivity;
    .registers 2

    .line 94
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/BucketByActivity;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/BucketByActivity;->clone()Lcom/google/api/services/fitness/model/BucketByActivity;

    move-result-object v0

    return-object v0
.end method

.method public getActivityDataSourceId()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/google/api/services/fitness/model/BucketByActivity;->activityDataSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMinDurationMillis()Ljava/lang/Long;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/google/api/services/fitness/model/BucketByActivity;->minDurationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/BucketByActivity;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/BucketByActivity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/BucketByActivity;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/BucketByActivity;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/BucketByActivity;
    .registers 3

    .line 89
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/BucketByActivity;

    return-object p1
.end method

.method public setActivityDataSourceId(Ljava/lang/String;)Lcom/google/api/services/fitness/model/BucketByActivity;
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/google/api/services/fitness/model/BucketByActivity;->activityDataSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public setMinDurationMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/BucketByActivity;
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/google/api/services/fitness/model/BucketByActivity;->minDurationMillis:Ljava/lang/Long;

    return-object p0
.end method
