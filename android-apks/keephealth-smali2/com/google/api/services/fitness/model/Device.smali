.class public final Lcom/google/api/services/fitness/model/Device;
.super Lcom/google/api/client/json/GenericJson;
.source "Device.java"


# instance fields
.field private manufacturer:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private model:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
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

    .line 42
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Device;->clone()Lcom/google/api/services/fitness/model/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Device;->clone()Lcom/google/api/services/fitness/model/Device;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/Device;
    .registers 2

    .line 177
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/Device;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Device;->clone()Lcom/google/api/services/fitness/model/Device;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Device;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Device;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Device;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Device;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Device;->version:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/Device;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Device;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/Device;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Device;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Device;
    .registers 3

    .line 172
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/Device;

    return-object p1
.end method

.method public setManufacturer(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Device;
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Device;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Device;
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Device;->model:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Device;
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Device;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setUid(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Device;
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Device;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Device;
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Device;->version:Ljava/lang/String;

    return-object p0
.end method
