.class public Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
.super Lcom/google/api/services/fitness/FitnessRequest;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users$Sessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Delete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/fitness/FitnessRequest<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/sessions/{sessionId}"


# instance fields
.field private currentTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/api/services/fitness/Fitness$Users$Sessions;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/fitness/Fitness$Users$Sessions;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1772
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->this$2:Lcom/google/api/services/fitness/Fitness$Users$Sessions;

    .line 1773
    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object v1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    const-string v2, "DELETE"

    const-string v3, "{userId}/sessions/{sessionId}"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/fitness/FitnessRequest;-><init>(Lcom/google/api/services/fitness/Fitness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1774
    const-string p1, "Required parameter userId must be specified."

    invoke-static {p2, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->userId:Ljava/lang/String;

    .line 1775
    const-string p1, "Required parameter sessionId must be specified."

    invoke-static {p3, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->sessionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrentTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 1859
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->currentTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .line 1843
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 1824
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 3

    .line 1753
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 3

    .line 1753
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 1753
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    .registers 3

    .line 1870
    invoke-super {p0, p1, p2}, Lcom/google/api/services/fitness/FitnessRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 3

    .line 1753
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    .registers 2

    .line 1780
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1753
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    .registers 2

    .line 1864
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->currentTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    .registers 2

    .line 1785
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1753
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    .registers 2

    .line 1790
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1753
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    .registers 2

    .line 1795
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1753
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    .registers 2

    .line 1800
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1753
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    .registers 2

    .line 1805
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1753
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    .registers 2

    .line 1848
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    .registers 2

    .line 1832
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    .registers 2

    .line 1810
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1753
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    move-result-object p1

    return-object p1
.end method
