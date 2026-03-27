.class public Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;
.super Lcom/google/api/services/fitness/FitnessRequest;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users$DataSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Create"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/fitness/FitnessRequest<",
        "Lcom/google/api/services/fitness/model/DataSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/dataSources"


# instance fields
.field final synthetic this$2:Lcom/google/api/services/fitness/Fitness$Users$DataSources;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources;Ljava/lang/String;Lcom/google/api/services/fitness/model/DataSource;)V
    .registers 10

    .line 209
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->this$2:Lcom/google/api/services/fitness/Fitness$Users$DataSources;

    .line 210
    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object v1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    const-string v3, "{userId}/dataSources"

    const-class v5, Lcom/google/api/services/fitness/model/DataSource;

    const-string v2, "POST"

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/fitness/FitnessRequest;-><init>(Lcom/google/api/services/fitness/Fitness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 211
    const-string p1, "Required parameter userId must be specified."

    invoke-static {p2, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->userId:Ljava/lang/String;

    .line 212
    const-string p1, "content"

    invoke-virtual {p0, p3, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p3}, Lcom/google/api/services/fitness/model/DataSource;->getType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataSource.getType()"

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 3

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 3

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;
    .registers 3

    .line 276
    invoke-super {p0, p1, p2}, Lcom/google/api/services/fitness/FitnessRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 3

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;
    .registers 2

    .line 218
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;
    .registers 2

    .line 223
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;
    .registers 2

    .line 228
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;
    .registers 2

    .line 233
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    move-result-object p1

    return-object p1
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;
    .registers 2

    .line 238
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;
    .registers 2

    .line 243
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;
    .registers 2

    .line 248
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    move-result-object p1

    return-object p1
.end method
