.class public final Lcom/google/api/services/fitness/model/AggregateRequest;
.super Lcom/google/api/client/json/GenericJson;
.source "AggregateRequest.java"


# instance fields
.field private aggregateBy:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/AggregateBy;",
            ">;"
        }
    .end annotation
.end field

.field private bucketByActivitySegment:Lcom/google/api/services/fitness/model/BucketByActivity;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private bucketByActivityType:Lcom/google/api/services/fitness/model/BucketByActivity;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private bucketBySession:Lcom/google/api/services/fitness/model/BucketBySession;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private bucketByTime:Lcom/google/api/services/fitness/model/BucketByTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private endTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private startTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/google/api/services/fitness/model/AggregateBy;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/AggregateRequest;->clone()Lcom/google/api/services/fitness/model/AggregateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/AggregateRequest;->clone()Lcom/google/api/services/fitness/model/AggregateRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/AggregateRequest;
    .registers 2

    .line 253
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/AggregateRequest;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/AggregateRequest;->clone()Lcom/google/api/services/fitness/model/AggregateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateBy()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/AggregateBy;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->aggregateBy:Ljava/util/List;

    return-object v0
.end method

.method public getBucketByActivitySegment()Lcom/google/api/services/fitness/model/BucketByActivity;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->bucketByActivitySegment:Lcom/google/api/services/fitness/model/BucketByActivity;

    return-object v0
.end method

.method public getBucketByActivityType()Lcom/google/api/services/fitness/model/BucketByActivity;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->bucketByActivityType:Lcom/google/api/services/fitness/model/BucketByActivity;

    return-object v0
.end method

.method public getBucketBySession()Lcom/google/api/services/fitness/model/BucketBySession;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->bucketBySession:Lcom/google/api/services/fitness/model/BucketBySession;

    return-object v0
.end method

.method public getBucketByTime()Lcom/google/api/services/fitness/model/BucketByTime;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->bucketByTime:Lcom/google/api/services/fitness/model/BucketByTime;

    return-object v0
.end method

.method public getEndTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->endTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getStartTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->startTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/AggregateRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/AggregateRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/AggregateRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/AggregateRequest;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/AggregateRequest;
    .registers 3

    .line 248
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/AggregateRequest;

    return-object p1
.end method

.method public setAggregateBy(Ljava/util/List;)Lcom/google/api/services/fitness/model/AggregateRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/AggregateBy;",
            ">;)",
            "Lcom/google/api/services/fitness/model/AggregateRequest;"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->aggregateBy:Ljava/util/List;

    return-object p0
.end method

.method public setBucketByActivitySegment(Lcom/google/api/services/fitness/model/BucketByActivity;)Lcom/google/api/services/fitness/model/AggregateRequest;
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->bucketByActivitySegment:Lcom/google/api/services/fitness/model/BucketByActivity;

    return-object p0
.end method

.method public setBucketByActivityType(Lcom/google/api/services/fitness/model/BucketByActivity;)Lcom/google/api/services/fitness/model/AggregateRequest;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->bucketByActivityType:Lcom/google/api/services/fitness/model/BucketByActivity;

    return-object p0
.end method

.method public setBucketBySession(Lcom/google/api/services/fitness/model/BucketBySession;)Lcom/google/api/services/fitness/model/AggregateRequest;
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->bucketBySession:Lcom/google/api/services/fitness/model/BucketBySession;

    return-object p0
.end method

.method public setBucketByTime(Lcom/google/api/services/fitness/model/BucketByTime;)Lcom/google/api/services/fitness/model/AggregateRequest;
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->bucketByTime:Lcom/google/api/services/fitness/model/BucketByTime;

    return-object p0
.end method

.method public setEndTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/AggregateRequest;
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->endTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setStartTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/AggregateRequest;
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateRequest;->startTimeMillis:Ljava/lang/Long;

    return-object p0
.end method
