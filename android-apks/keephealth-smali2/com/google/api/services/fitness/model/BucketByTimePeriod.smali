.class public final Lcom/google/api/services/fitness/model/BucketByTimePeriod;
.super Lcom/google/api/client/json/GenericJson;
.source "BucketByTimePeriod.java"


# instance fields
.field private timeZoneId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private value:Ljava/lang/Integer;
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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/BucketByTimePeriod;->clone()Lcom/google/api/services/fitness/model/BucketByTimePeriod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/BucketByTimePeriod;->clone()Lcom/google/api/services/fitness/model/BucketByTimePeriod;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/BucketByTimePeriod;
    .registers 2

    .line 109
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/BucketByTimePeriod;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/BucketByTimePeriod;->clone()Lcom/google/api/services/fitness/model/BucketByTimePeriod;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneId()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/google/api/services/fitness/model/BucketByTimePeriod;->timeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/google/api/services/fitness/model/BucketByTimePeriod;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Integer;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/google/api/services/fitness/model/BucketByTimePeriod;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/BucketByTimePeriod;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/BucketByTimePeriod;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/BucketByTimePeriod;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/BucketByTimePeriod;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/BucketByTimePeriod;
    .registers 3

    .line 104
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/BucketByTimePeriod;

    return-object p1
.end method

.method public setTimeZoneId(Ljava/lang/String;)Lcom/google/api/services/fitness/model/BucketByTimePeriod;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/google/api/services/fitness/model/BucketByTimePeriod;->timeZoneId:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/fitness/model/BucketByTimePeriod;
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/google/api/services/fitness/model/BucketByTimePeriod;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setValue(Ljava/lang/Integer;)Lcom/google/api/services/fitness/model/BucketByTimePeriod;
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/google/api/services/fitness/model/BucketByTimePeriod;->value:Ljava/lang/Integer;

    return-object p0
.end method
