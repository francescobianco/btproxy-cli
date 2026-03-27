.class public final Lcom/google/api/services/fitness/model/Dataset;
.super Lcom/google/api/client/json/GenericJson;
.source "Dataset.java"


# instance fields
.field private dataSourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxEndTimeNs:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private minStartTimeNs:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private point:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/DataPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    const-class v0, Lcom/google/api/services/fitness/model/DataPoint;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Dataset;->clone()Lcom/google/api/services/fitness/model/Dataset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Dataset;->clone()Lcom/google/api/services/fitness/model/Dataset;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/Dataset;
    .registers 2

    .line 195
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/Dataset;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Dataset;->clone()Lcom/google/api/services/fitness/model/Dataset;

    move-result-object v0

    return-object v0
.end method

.method public getDataSourceId()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Dataset;->dataSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxEndTimeNs()Ljava/lang/Long;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Dataset;->maxEndTimeNs:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinStartTimeNs()Ljava/lang/Long;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Dataset;->minStartTimeNs:Ljava/lang/Long;

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Dataset;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/DataPoint;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Dataset;->point:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/Dataset;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Dataset;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/Dataset;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Dataset;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Dataset;
    .registers 3

    .line 190
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/Dataset;

    return-object p1
.end method

.method public setDataSourceId(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Dataset;
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Dataset;->dataSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxEndTimeNs(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/Dataset;
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Dataset;->maxEndTimeNs:Ljava/lang/Long;

    return-object p0
.end method

.method public setMinStartTimeNs(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/Dataset;
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Dataset;->minStartTimeNs:Ljava/lang/Long;

    return-object p0
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Dataset;
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Dataset;->nextPageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPoint(Ljava/util/List;)Lcom/google/api/services/fitness/model/Dataset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/DataPoint;",
            ">;)",
            "Lcom/google/api/services/fitness/model/Dataset;"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Dataset;->point:Ljava/util/List;

    return-object p0
.end method
