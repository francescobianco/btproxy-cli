.class public Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
.super Lcom/google/api/services/fitness/FitnessRequest;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Patch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/fitness/FitnessRequest<",
        "Lcom/google/api/services/fitness/model/Dataset;",
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

.field final synthetic this$3:Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fitness/model/Dataset;)V
    .registers 12

    .line 1437
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->this$3:Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;

    .line 1438
    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;->this$2:Lcom/google/api/services/fitness/Fitness$Users$DataSources;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object v1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    const-string v3, "{userId}/dataSources/{dataSourceId}/datasets/{datasetId}"

    const-class v5, Lcom/google/api/services/fitness/model/Dataset;

    const-string v2, "PATCH"

    move-object v0, p0

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/fitness/FitnessRequest;-><init>(Lcom/google/api/services/fitness/Fitness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1439
    const-string p1, "Required parameter userId must be specified."

    invoke-static {p2, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->userId:Ljava/lang/String;

    .line 1440
    const-string p1, "Required parameter dataSourceId must be specified."

    invoke-static {p3, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->dataSourceId:Ljava/lang/String;

    .line 1441
    const-string p1, "Required parameter datasetId must be specified."

    invoke-static {p4, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->datasetId:Ljava/lang/String;

    .line 1442
    const-string p1, "content"

    invoke-virtual {p0, p5, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p5}, Lcom/google/api/services/fitness/model/Dataset;->getDataSourceId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Dataset.getDataSourceId()"

    invoke-virtual {p0, p2, p3}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p0, p5, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p5}, Lcom/google/api/services/fitness/model/Dataset;->getMaxEndTimeNs()Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Dataset.getMaxEndTimeNs()"

    invoke-virtual {p0, p2, p3}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1446
    invoke-virtual {p0, p5, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p5}, Lcom/google/api/services/fitness/model/Dataset;->getMinStartTimeNs()Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Dataset.getMinStartTimeNs()"

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCurrentTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 1561
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->currentTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getDataSourceId()Ljava/lang/String;
    .registers 2

    .line 1515
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->dataSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDatasetId()Ljava/lang/String;
    .registers 2

    .line 1537
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->datasetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 1496
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 3

    .line 1412
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 3

    .line 1412
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 1412
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 3

    .line 1575
    invoke-super {p0, p1, p2}, Lcom/google/api/services/fitness/FitnessRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 3

    .line 1412
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 2

    .line 1452
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1412
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 2

    .line 1569
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->currentTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setDataSourceId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 2

    .line 1520
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->dataSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public setDatasetId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 2

    .line 1546
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->datasetId:Ljava/lang/String;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 2

    .line 1457
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1412
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 2

    .line 1462
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1412
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 2

    .line 1467
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1412
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    move-result-object p1

    return-object p1
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 2

    .line 1472
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1412
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 2

    .line 1477
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1412
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 2

    .line 1504
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 2

    .line 1482
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1412
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    move-result-object p1

    return-object p1
.end method
