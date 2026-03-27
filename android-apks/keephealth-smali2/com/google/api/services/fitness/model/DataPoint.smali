.class public final Lcom/google/api/services/fitness/model/DataPoint;
.super Lcom/google/api/client/json/GenericJson;
.source "DataPoint.java"


# instance fields
.field private computationTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private dataTypeName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private endTimeNanos:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private modifiedTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private originDataSourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private rawTimestampNanos:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private startTimeNanos:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private value:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/Value;",
            ">;"
        }
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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/DataPoint;->clone()Lcom/google/api/services/fitness/model/DataPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/DataPoint;->clone()Lcom/google/api/services/fitness/model/DataPoint;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/DataPoint;
    .registers 2

    .line 267
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/DataPoint;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/DataPoint;->clone()Lcom/google/api/services/fitness/model/DataPoint;

    move-result-object v0

    return-object v0
.end method

.method public getComputationTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataPoint;->computationTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getDataTypeName()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataPoint;->dataTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTimeNanos()Ljava/lang/Long;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataPoint;->endTimeNanos:Ljava/lang/Long;

    return-object v0
.end method

.method public getModifiedTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataPoint;->modifiedTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getOriginDataSourceId()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataPoint;->originDataSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRawTimestampNanos()Ljava/lang/Long;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataPoint;->rawTimestampNanos:Ljava/lang/Long;

    return-object v0
.end method

.method public getStartTimeNanos()Ljava/lang/Long;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataPoint;->startTimeNanos:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/Value;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataPoint;->value:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/DataPoint;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/DataPoint;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/DataPoint;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/DataPoint;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/DataPoint;
    .registers 3

    .line 262
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/DataPoint;

    return-object p1
.end method

.method public setComputationTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/DataPoint;
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataPoint;->computationTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setDataTypeName(Ljava/lang/String;)Lcom/google/api/services/fitness/model/DataPoint;
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataPoint;->dataTypeName:Ljava/lang/String;

    return-object p0
.end method

.method public setEndTimeNanos(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/DataPoint;
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataPoint;->endTimeNanos:Ljava/lang/Long;

    return-object p0
.end method

.method public setModifiedTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/DataPoint;
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataPoint;->modifiedTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setOriginDataSourceId(Ljava/lang/String;)Lcom/google/api/services/fitness/model/DataPoint;
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataPoint;->originDataSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public setRawTimestampNanos(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/DataPoint;
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataPoint;->rawTimestampNanos:Ljava/lang/Long;

    return-object p0
.end method

.method public setStartTimeNanos(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/DataPoint;
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataPoint;->startTimeNanos:Ljava/lang/Long;

    return-object p0
.end method

.method public setValue(Ljava/util/List;)Lcom/google/api/services/fitness/model/DataPoint;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/Value;",
            ">;)",
            "Lcom/google/api/services/fitness/model/DataPoint;"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataPoint;->value:Ljava/util/List;

    return-object p0
.end method
