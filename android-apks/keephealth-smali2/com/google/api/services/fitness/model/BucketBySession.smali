.class public final Lcom/google/api/services/fitness/model/BucketBySession;
.super Lcom/google/api/client/json/GenericJson;
.source "BucketBySession.java"


# instance fields
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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/BucketBySession;->clone()Lcom/google/api/services/fitness/model/BucketBySession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/BucketBySession;->clone()Lcom/google/api/services/fitness/model/BucketBySession;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/BucketBySession;
    .registers 2

    .line 70
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/BucketBySession;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/BucketBySession;->clone()Lcom/google/api/services/fitness/model/BucketBySession;

    move-result-object v0

    return-object v0
.end method

.method public getMinDurationMillis()Ljava/lang/Long;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/google/api/services/fitness/model/BucketBySession;->minDurationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/BucketBySession;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/BucketBySession;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/BucketBySession;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/BucketBySession;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/BucketBySession;
    .registers 3

    .line 65
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/BucketBySession;

    return-object p1
.end method

.method public setMinDurationMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/BucketBySession;
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/google/api/services/fitness/model/BucketBySession;->minDurationMillis:Ljava/lang/Long;

    return-object p0
.end method
