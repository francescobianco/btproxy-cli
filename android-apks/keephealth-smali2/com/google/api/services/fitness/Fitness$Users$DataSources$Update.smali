.class public Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;
.super Lcom/google/api/services/fitness/FitnessRequest;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users$DataSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/fitness/FitnessRequest<",
        "Lcom/google/api/services/fitness/model/DataSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/dataSources/{dataSourceId}"


# instance fields
.field private dataSourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/api/services/fitness/Fitness$Users$DataSources;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fitness/model/DataSource;)V
    .registers 11

    .line 855
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->this$2:Lcom/google/api/services/fitness/Fitness$Users$DataSources;

    .line 856
    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object v1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    const-string v3, "{userId}/dataSources/{dataSourceId}"

    const-class v5, Lcom/google/api/services/fitness/model/DataSource;

    const-string v2, "PUT"

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/fitness/FitnessRequest;-><init>(Lcom/google/api/services/fitness/Fitness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 857
    const-string p1, "Required parameter userId must be specified."

    invoke-static {p2, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->userId:Ljava/lang/String;

    .line 858
    const-string p1, "Required parameter dataSourceId must be specified."

    invoke-static {p3, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->dataSourceId:Ljava/lang/String;

    .line 859
    const-string p1, "content"

    invoke-virtual {p0, p4, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    invoke-virtual {p4}, Lcom/google/api/services/fitness/model/DataSource;->getDataStreamId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DataSource.getDataStreamId()"

    invoke-virtual {p0, p2, p3}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    invoke-virtual {p0, p4, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    invoke-virtual {p4}, Lcom/google/api/services/fitness/model/DataSource;->getType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataSource.getType()"

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDataSourceId()Ljava/lang/String;
    .registers 2

    .line 930
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->dataSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 911
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 3

    .line 832
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 3

    .line 832
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 832
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;
    .registers 3

    .line 941
    invoke-super {p0, p1, p2}, Lcom/google/api/services/fitness/FitnessRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 3

    .line 832
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;
    .registers 2

    .line 867
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 832
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    move-result-object p1

    return-object p1
.end method

.method public setDataSourceId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;
    .registers 2

    .line 935
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->dataSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;
    .registers 2

    .line 872
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 832
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;
    .registers 2

    .line 877
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 832
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;
    .registers 2

    .line 882
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 832
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    move-result-object p1

    return-object p1
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;
    .registers 2

    .line 887
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 832
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;
    .registers 2

    .line 892
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 832
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;
    .registers 2

    .line 919
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;
    .registers 2

    .line 897
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 832
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    move-result-object p1

    return-object p1
.end method
