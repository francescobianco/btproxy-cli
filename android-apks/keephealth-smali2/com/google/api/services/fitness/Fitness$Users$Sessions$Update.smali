.class public Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
.super Lcom/google/api/services/fitness/FitnessRequest;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users$Sessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/fitness/FitnessRequest<",
        "Lcom/google/api/services/fitness/model/Session;",
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
.method protected constructor <init>(Lcom/google/api/services/fitness/Fitness$Users$Sessions;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fitness/model/Session;)V
    .registers 11

    .line 2121
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->this$2:Lcom/google/api/services/fitness/Fitness$Users$Sessions;

    .line 2122
    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object v1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    const-string v3, "{userId}/sessions/{sessionId}"

    const-class v5, Lcom/google/api/services/fitness/model/Session;

    const-string v2, "PUT"

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/fitness/FitnessRequest;-><init>(Lcom/google/api/services/fitness/Fitness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2123
    const-string p1, "Required parameter userId must be specified."

    invoke-static {p2, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->userId:Ljava/lang/String;

    .line 2124
    const-string p1, "Required parameter sessionId must be specified."

    invoke-static {p3, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->sessionId:Ljava/lang/String;

    .line 2125
    const-string p1, "content"

    invoke-virtual {p0, p4, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2126
    invoke-virtual {p4}, Lcom/google/api/services/fitness/model/Session;->getActivityType()Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Session.getActivityType()"

    invoke-virtual {p0, p2, p3}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2127
    invoke-virtual {p0, p4, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2128
    invoke-virtual {p4}, Lcom/google/api/services/fitness/model/Session;->getEndTimeMillis()Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Session.getEndTimeMillis()"

    invoke-virtual {p0, p2, p3}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2129
    invoke-virtual {p0, p4, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2130
    invoke-virtual {p4}, Lcom/google/api/services/fitness/model/Session;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Session.getId()"

    invoke-virtual {p0, p2, p3}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2131
    invoke-virtual {p0, p4, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2132
    invoke-virtual {p4}, Lcom/google/api/services/fitness/model/Session;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Session.getName()"

    invoke-virtual {p0, p2, p3}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2133
    invoke-virtual {p0, p4, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2134
    invoke-virtual {p4}, Lcom/google/api/services/fitness/model/Session;->getStartTimeMillis()Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Session.getStartTimeMillis()"

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCurrentTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 2218
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->currentTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .line 2202
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 2183
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 3

    .line 2101
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 3

    .line 2101
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 2101
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
    .registers 3

    .line 2229
    invoke-super {p0, p1, p2}, Lcom/google/api/services/fitness/FitnessRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 3

    .line 2101
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
    .registers 2

    .line 2139
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 2101
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
    .registers 2

    .line 2223
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->currentTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
    .registers 2

    .line 2144
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 2101
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
    .registers 2

    .line 2149
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 2101
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
    .registers 2

    .line 2154
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 2101
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
    .registers 2

    .line 2159
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 2101
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
    .registers 2

    .line 2164
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 2101
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
    .registers 2

    .line 2207
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
    .registers 2

    .line 2191
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
    .registers 2

    .line 2169
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 2101
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    move-result-object p1

    return-object p1
.end method
