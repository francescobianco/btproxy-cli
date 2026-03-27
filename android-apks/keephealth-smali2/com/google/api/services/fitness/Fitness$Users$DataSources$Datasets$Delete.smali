.class public Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
.super Lcom/google/api/services/fitness/FitnessRequest;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;
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
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/dataSources/{dataSourceId}/datasets/{datasetId}"


# instance fields
.field private currentTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private dataSourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private datasetId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private modifiedTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$3:Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1017
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->this$3:Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;

    .line 1018
    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;->this$2:Lcom/google/api/services/fitness/Fitness$Users$DataSources;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object v1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    const-string v2, "DELETE"

    const-string v3, "{userId}/dataSources/{dataSourceId}/datasets/{datasetId}"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/fitness/FitnessRequest;-><init>(Lcom/google/api/services/fitness/Fitness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1019
    const-string p1, "Required parameter userId must be specified."

    invoke-static {p2, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->userId:Ljava/lang/String;

    .line 1020
    const-string p1, "Required parameter dataSourceId must be specified."

    invoke-static {p3, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->dataSourceId:Ljava/lang/String;

    .line 1021
    const-string p1, "Required parameter datasetId must be specified."

    invoke-static {p4, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->datasetId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrentTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 1131
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->currentTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getDataSourceId()Ljava/lang/String;
    .registers 2

    .line 1089
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->dataSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDatasetId()Ljava/lang/String;
    .registers 2

    .line 1111
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->datasetId:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 1147
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->modifiedTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 1070
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 3

    .line 991
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 3

    .line 991
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 991
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 3

    .line 1158
    invoke-super {p0, p1, p2}, Lcom/google/api/services/fitness/FitnessRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 3

    .line 991
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 2

    .line 1026
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 991
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 2

    .line 1136
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->currentTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setDataSourceId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 2

    .line 1094
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->dataSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public setDatasetId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 2

    .line 1120
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->datasetId:Ljava/lang/String;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 2

    .line 1031
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 991
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 2

    .line 1036
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 991
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setModifiedTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 2

    .line 1152
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->modifiedTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 2

    .line 1041
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 991
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 2

    .line 1046
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 991
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 2

    .line 1051
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 991
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 2

    .line 1078
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 2

    .line 1056
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 991
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    move-result-object p1

    return-object p1
.end method
