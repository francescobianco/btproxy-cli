.class public final Lcom/google/api/services/fitness/model/Application;
.super Lcom/google/api/client/json/GenericJson;
.source "Application.java"


# instance fields
.field private detailsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Application;->clone()Lcom/google/api/services/fitness/model/Application;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Application;->clone()Lcom/google/api/services/fitness/model/Application;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/Application;
    .registers 2

    .line 154
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/Application;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Application;->clone()Lcom/google/api/services/fitness/model/Application;

    move-result-object v0

    return-object v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Application;->detailsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Application;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Application;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Application;->version:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/Application;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Application;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/Application;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Application;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Application;
    .registers 3

    .line 149
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/Application;

    return-object p1
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Application;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Application;->detailsUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Application;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Application;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Application;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Application;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Application;
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Application;->version:Ljava/lang/String;

    return-object p0
.end method
