.class public final Lcom/google/api/services/fitness/model/ListSessionsResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "ListSessionsResponse.java"


# instance fields
.field private deletedSession:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/Session;",
            ">;"
        }
    .end annotation
.end field

.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private session:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/Session;",
            ">;"
        }
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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/ListSessionsResponse;->clone()Lcom/google/api/services/fitness/model/ListSessionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/ListSessionsResponse;->clone()Lcom/google/api/services/fitness/model/ListSessionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/ListSessionsResponse;
    .registers 2

    .line 121
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/ListSessionsResponse;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/ListSessionsResponse;->clone()Lcom/google/api/services/fitness/model/ListSessionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDeletedSession()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/Session;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/api/services/fitness/model/ListSessionsResponse;->deletedSession:Ljava/util/List;

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/google/api/services/fitness/model/ListSessionsResponse;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/Session;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/api/services/fitness/model/ListSessionsResponse;->session:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/ListSessionsResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/ListSessionsResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/ListSessionsResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/ListSessionsResponse;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/ListSessionsResponse;
    .registers 3

    .line 116
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/ListSessionsResponse;

    return-object p1
.end method

.method public setDeletedSession(Ljava/util/List;)Lcom/google/api/services/fitness/model/ListSessionsResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/Session;",
            ">;)",
            "Lcom/google/api/services/fitness/model/ListSessionsResponse;"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/api/services/fitness/model/ListSessionsResponse;->deletedSession:Ljava/util/List;

    return-object p0
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/fitness/model/ListSessionsResponse;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/google/api/services/fitness/model/ListSessionsResponse;->nextPageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setSession(Ljava/util/List;)Lcom/google/api/services/fitness/model/ListSessionsResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/Session;",
            ">;)",
            "Lcom/google/api/services/fitness/model/ListSessionsResponse;"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/google/api/services/fitness/model/ListSessionsResponse;->session:Ljava/util/List;

    return-object p0
.end method
