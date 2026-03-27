.class public Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
.super Lcom/google/api/services/fitness/FitnessRequest;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users$Sessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/fitness/FitnessRequest<",
        "Lcom/google/api/services/fitness/model/ListSessionsResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/sessions"


# instance fields
.field private endTime:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private includeDeleted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private startTime:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/api/services/fitness/Fitness$Users$Sessions;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/fitness/Fitness$Users$Sessions;Ljava/lang/String;)V
    .registers 9

    .line 1909
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->this$2:Lcom/google/api/services/fitness/Fitness$Users$Sessions;

    .line 1910
    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object v1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/fitness/model/ListSessionsResponse;

    const-string v2, "GET"

    const-string v3, "{userId}/sessions"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/fitness/FitnessRequest;-><init>(Lcom/google/api/services/fitness/Fitness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1911
    const-string p1, "Required parameter userId must be specified."

    invoke-static {p2, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1921
    invoke-super {p0}, Lcom/google/api/services/fitness/FitnessRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1916
    invoke-super {p0}, Lcom/google/api/services/fitness/FitnessRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .registers 2

    .line 1993
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeDeleted()Ljava/lang/Boolean;
    .registers 2

    .line 2016
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->includeDeleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .registers 2

    .line 2040
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .registers 2

    .line 2064
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 1970
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 3

    .line 1891
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 3

    .line 1891
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 1891
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 3

    .line 2078
    invoke-super {p0, p1, p2}, Lcom/google/api/services/fitness/FitnessRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 3

    .line 1891
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 2

    .line 1926
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1891
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    move-result-object p1

    return-object p1
.end method

.method public setEndTime(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 2

    .line 2001
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->endTime:Ljava/lang/String;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 2

    .line 1931
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1891
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    move-result-object p1

    return-object p1
.end method

.method public setIncludeDeleted(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 2

    .line 2024
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->includeDeleted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 2

    .line 1936
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1891
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 2

    .line 1941
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1891
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    move-result-object p1

    return-object p1
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 2

    .line 2049
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->pageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 2

    .line 1946
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1891
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 2

    .line 1951
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1891
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    move-result-object p1

    return-object p1
.end method

.method public setStartTime(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 2

    .line 2072
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->startTime:Ljava/lang/String;

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 2

    .line 1978
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 2

    .line 1956
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1891
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    move-result-object p1

    return-object p1
.end method
