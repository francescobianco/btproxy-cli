.class public final Lcom/google/api/services/fitness/model/AggregateBucket;
.super Lcom/google/api/client/json/GenericJson;
.source "AggregateBucket.java"


# instance fields
.field private activity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private dataset:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field private endTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private session:Lcom/google/api/services/fitness/model/Session;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private startTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/AggregateBucket;->clone()Lcom/google/api/services/fitness/model/AggregateBucket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/AggregateBucket;->clone()Lcom/google/api/services/fitness/model/AggregateBucket;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/AggregateBucket;
    .registers 2

    .line 187
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/AggregateBucket;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/AggregateBucket;->clone()Lcom/google/api/services/fitness/model/AggregateBucket;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Ljava/lang/Integer;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateBucket;->activity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDataset()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/Dataset;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateBucket;->dataset:Ljava/util/List;

    return-object v0
.end method

.method public getEndTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateBucket;->endTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getSession()Lcom/google/api/services/fitness/model/Session;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateBucket;->session:Lcom/google/api/services/fitness/model/Session;

    return-object v0
.end method

.method public getStartTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateBucket;->startTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateBucket;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/AggregateBucket;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/AggregateBucket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/AggregateBucket;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/AggregateBucket;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/AggregateBucket;
    .registers 3

    .line 182
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/AggregateBucket;

    return-object p1
.end method

.method public setActivity(Ljava/lang/Integer;)Lcom/google/api/services/fitness/model/AggregateBucket;
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateBucket;->activity:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDataset(Ljava/util/List;)Lcom/google/api/services/fitness/model/AggregateBucket;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/Dataset;",
            ">;)",
            "Lcom/google/api/services/fitness/model/AggregateBucket;"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateBucket;->dataset:Ljava/util/List;

    return-object p0
.end method

.method public setEndTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/AggregateBucket;
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateBucket;->endTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setSession(Lcom/google/api/services/fitness/model/Session;)Lcom/google/api/services/fitness/model/AggregateBucket;
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateBucket;->session:Lcom/google/api/services/fitness/model/Session;

    return-object p0
.end method

.method public setStartTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/AggregateBucket;
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateBucket;->startTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/fitness/model/AggregateBucket;
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateBucket;->type:Ljava/lang/String;

    return-object p0
.end method
