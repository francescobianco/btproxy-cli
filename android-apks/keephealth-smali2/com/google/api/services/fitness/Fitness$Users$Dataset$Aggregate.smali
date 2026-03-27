.class public Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;
.super Lcom/google/api/services/fitness/FitnessRequest;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users$Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Aggregate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/fitness/FitnessRequest<",
        "Lcom/google/api/services/fitness/model/AggregateResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/dataset:aggregate"


# instance fields
.field final synthetic this$2:Lcom/google/api/services/fitness/Fitness$Users$Dataset;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/fitness/Fitness$Users$Dataset;Ljava/lang/String;Lcom/google/api/services/fitness/model/AggregateRequest;)V
    .registers 10

    .line 1644
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->this$2:Lcom/google/api/services/fitness/Fitness$Users$Dataset;

    .line 1645
    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$Dataset;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object v1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    const-string v3, "{userId}/dataset:aggregate"

    const-class v5, Lcom/google/api/services/fitness/model/AggregateResponse;

    const-string v2, "POST"

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/fitness/FitnessRequest;-><init>(Lcom/google/api/services/fitness/Fitness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1646
    const-string p1, "Required parameter userId must be specified."

    invoke-static {p2, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 1695
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 3

    .line 1622
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 3

    .line 1622
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 1622
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;
    .registers 3

    .line 1709
    invoke-super {p0, p1, p2}, Lcom/google/api/services/fitness/FitnessRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 3

    .line 1622
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;
    .registers 2

    .line 1651
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1622
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;
    .registers 2

    .line 1656
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1622
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;
    .registers 2

    .line 1661
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1622
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;
    .registers 2

    .line 1666
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1622
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    move-result-object p1

    return-object p1
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;
    .registers 2

    .line 1671
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1622
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;
    .registers 2

    .line 1676
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1622
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;
    .registers 2

    .line 1703
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;
    .registers 2

    .line 1681
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1622
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    move-result-object p1

    return-object p1
.end method
