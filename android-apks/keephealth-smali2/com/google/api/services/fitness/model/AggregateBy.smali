.class public final Lcom/google/api/services/fitness/model/AggregateBy;
.super Lcom/google/api/client/json/GenericJson;
.source "AggregateBy.java"


# instance fields
.field private dataSourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private dataTypeName:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/AggregateBy;->clone()Lcom/google/api/services/fitness/model/AggregateBy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/AggregateBy;->clone()Lcom/google/api/services/fitness/model/AggregateBy;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/AggregateBy;
    .registers 2

    .line 103
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/AggregateBy;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/AggregateBy;->clone()Lcom/google/api/services/fitness/model/AggregateBy;

    move-result-object v0

    return-object v0
.end method

.method public getDataSourceId()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateBy;->dataSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDataTypeName()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/google/api/services/fitness/model/AggregateBy;->dataTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/AggregateBy;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/AggregateBy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/AggregateBy;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/AggregateBy;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/AggregateBy;
    .registers 3

    .line 98
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/AggregateBy;

    return-object p1
.end method

.method public setDataSourceId(Ljava/lang/String;)Lcom/google/api/services/fitness/model/AggregateBy;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateBy;->dataSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public setDataTypeName(Ljava/lang/String;)Lcom/google/api/services/fitness/model/AggregateBy;
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/google/api/services/fitness/model/AggregateBy;->dataTypeName:Ljava/lang/String;

    return-object p0
.end method
