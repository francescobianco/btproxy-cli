.class public final Lcom/google/api/services/fitness/model/DataSource;
.super Lcom/google/api/client/json/GenericJson;
.source "DataSource.java"


# instance fields
.field private application:Lcom/google/api/services/fitness/model/Application;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private dataQualityStandard:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataStreamId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private dataStreamName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private dataType:Lcom/google/api/services/fitness/model/DataType;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private device:Lcom/google/api/services/fitness/model/Device;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/DataSource;->clone()Lcom/google/api/services/fitness/model/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/DataSource;->clone()Lcom/google/api/services/fitness/model/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/DataSource;
    .registers 2

    .line 330
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/DataSource;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/DataSource;->clone()Lcom/google/api/services/fitness/model/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public getApplication()Lcom/google/api/services/fitness/model/Application;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataSource;->application:Lcom/google/api/services/fitness/model/Application;

    return-object v0
.end method

.method public getDataQualityStandard()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataSource;->dataQualityStandard:Ljava/util/List;

    return-object v0
.end method

.method public getDataStreamId()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataSource;->dataStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public getDataStreamName()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataSource;->dataStreamName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Lcom/google/api/services/fitness/model/DataType;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataSource;->dataType:Lcom/google/api/services/fitness/model/DataType;

    return-object v0
.end method

.method public getDevice()Lcom/google/api/services/fitness/model/Device;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataSource;->device:Lcom/google/api/services/fitness/model/Device;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataSource;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/DataSource;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/DataSource;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/DataSource;
    .registers 3

    .line 325
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/DataSource;

    return-object p1
.end method

.method public setApplication(Lcom/google/api/services/fitness/model/Application;)Lcom/google/api/services/fitness/model/DataSource;
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataSource;->application:Lcom/google/api/services/fitness/model/Application;

    return-object p0
.end method

.method public setDataQualityStandard(Ljava/util/List;)Lcom/google/api/services/fitness/model/DataSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/fitness/model/DataSource;"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataSource;->dataQualityStandard:Ljava/util/List;

    return-object p0
.end method

.method public setDataStreamId(Ljava/lang/String;)Lcom/google/api/services/fitness/model/DataSource;
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataSource;->dataStreamId:Ljava/lang/String;

    return-object p0
.end method

.method public setDataStreamName(Ljava/lang/String;)Lcom/google/api/services/fitness/model/DataSource;
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataSource;->dataStreamName:Ljava/lang/String;

    return-object p0
.end method

.method public setDataType(Lcom/google/api/services/fitness/model/DataType;)Lcom/google/api/services/fitness/model/DataSource;
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataSource;->dataType:Lcom/google/api/services/fitness/model/DataType;

    return-object p0
.end method

.method public setDevice(Lcom/google/api/services/fitness/model/Device;)Lcom/google/api/services/fitness/model/DataSource;
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataSource;->device:Lcom/google/api/services/fitness/model/Device;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/fitness/model/DataSource;
    .registers 2

    .line 300
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataSource;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/fitness/model/DataSource;
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataSource;->type:Ljava/lang/String;

    return-object p0
.end method
