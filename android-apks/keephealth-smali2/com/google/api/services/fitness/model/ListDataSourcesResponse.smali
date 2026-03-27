.class public final Lcom/google/api/services/fitness/model/ListDataSourcesResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "ListDataSourcesResponse.java"


# instance fields
.field private dataSource:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/DataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/google/api/services/fitness/model/DataSource;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/ListDataSourcesResponse;->clone()Lcom/google/api/services/fitness/model/ListDataSourcesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/ListDataSourcesResponse;->clone()Lcom/google/api/services/fitness/model/ListDataSourcesResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/ListDataSourcesResponse;
    .registers 2

    .line 73
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/ListDataSourcesResponse;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/ListDataSourcesResponse;->clone()Lcom/google/api/services/fitness/model/ListDataSourcesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/DataSource;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/api/services/fitness/model/ListDataSourcesResponse;->dataSource:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/ListDataSourcesResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/ListDataSourcesResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/ListDataSourcesResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/ListDataSourcesResponse;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/ListDataSourcesResponse;
    .registers 3

    .line 68
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/ListDataSourcesResponse;

    return-object p1
.end method

.method public setDataSource(Ljava/util/List;)Lcom/google/api/services/fitness/model/ListDataSourcesResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/DataSource;",
            ">;)",
            "Lcom/google/api/services/fitness/model/ListDataSourcesResponse;"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/google/api/services/fitness/model/ListDataSourcesResponse;->dataSource:Ljava/util/List;

    return-object p0
.end method
