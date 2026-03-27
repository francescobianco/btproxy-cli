.class public Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
.super Lcom/google/api/services/fitness/FitnessRequest;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Get"
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
.field private dataSourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private datasetId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private limit:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
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

    .line 1211
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->this$3:Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;

    .line 1212
    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;->this$2:Lcom/google/api/services/fitness/Fitness$Users$DataSources;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object v1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/fitness/model/Dataset;

    const-string v2, "GET"

    const-string v3, "{userId}/dataSources/{dataSourceId}/datasets/{datasetId}"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/fitness/FitnessRequest;-><init>(Lcom/google/api/services/fitness/Fitness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1213
    const-string p1, "Required parameter userId must be specified."

    invoke-static {p2, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->userId:Ljava/lang/String;

    .line 1214
    const-string p1, "Required parameter dataSourceId must be specified."

    invoke-static {p3, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->dataSourceId:Ljava/lang/String;

    .line 1215
    const-string p1, "Required parameter datasetId must be specified."

    invoke-static {p4, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->datasetId:Ljava/lang/String;

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

    .line 1225
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

    .line 1220
    invoke-super {p0}, Lcom/google/api/services/fitness/FitnessRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDataSourceId()Ljava/lang/String;
    .registers 2

    .line 1293
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->dataSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDatasetId()Ljava/lang/String;
    .registers 2

    .line 1315
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->datasetId:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .registers 2

    .line 1340
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .registers 2

    .line 1368
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 1274
    iget-object v0, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 3

    .line 1186
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 3

    .line 1186
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 1186
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 3

    .line 1384
    invoke-super {p0, p1, p2}, Lcom/google/api/services/fitness/FitnessRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 3

    .line 1186
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 2

    .line 1230
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1186
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->setAlt(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    move-result-object p1

    return-object p1
.end method

.method public setDataSourceId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 2

    .line 1298
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->dataSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public setDatasetId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 2

    .line 1324
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->datasetId:Ljava/lang/String;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 2

    .line 1235
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1186
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->setFields(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 2

    .line 1240
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1186
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    move-result-object p1

    return-object p1
.end method

.method public setLimit(Ljava/lang/Integer;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 2

    .line 1349
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 2

    .line 1245
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1186
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    move-result-object p1

    return-object p1
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 2

    .line 1378
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->pageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 2

    .line 1250
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1186
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 2

    .line 1255
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1186
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 2

    .line 1282
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 2

    .line 1260
    invoke-super {p0, p1}, Lcom/google/api/services/fitness/FitnessRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/FitnessRequest;
    .registers 2

    .line 1186
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    move-result-object p1

    return-object p1
.end method
