.class public final Lcom/google/api/services/fitness/model/MapValue;
.super Lcom/google/api/client/json/GenericJson;
.source "MapValue.java"


# instance fields
.field private fpVal:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/MapValue;->clone()Lcom/google/api/services/fitness/model/MapValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/MapValue;->clone()Lcom/google/api/services/fitness/model/MapValue;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/MapValue;
    .registers 2

    .line 69
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/MapValue;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/MapValue;->clone()Lcom/google/api/services/fitness/model/MapValue;

    move-result-object v0

    return-object v0
.end method

.method public getFpVal()Ljava/lang/Double;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/google/api/services/fitness/model/MapValue;->fpVal:Ljava/lang/Double;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/MapValue;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/MapValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/MapValue;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/MapValue;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/MapValue;
    .registers 3

    .line 64
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/MapValue;

    return-object p1
.end method

.method public setFpVal(Ljava/lang/Double;)Lcom/google/api/services/fitness/model/MapValue;
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/google/api/services/fitness/model/MapValue;->fpVal:Ljava/lang/Double;

    return-object p0
.end method
