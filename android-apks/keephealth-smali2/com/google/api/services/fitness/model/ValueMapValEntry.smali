.class public final Lcom/google/api/services/fitness/model/ValueMapValEntry;
.super Lcom/google/api/client/json/GenericJson;
.source "ValueMapValEntry.java"


# instance fields
.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private value:Lcom/google/api/services/fitness/model/MapValue;
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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/ValueMapValEntry;->clone()Lcom/google/api/services/fitness/model/ValueMapValEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/ValueMapValEntry;->clone()Lcom/google/api/services/fitness/model/ValueMapValEntry;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/ValueMapValEntry;
    .registers 2

    .line 85
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/ValueMapValEntry;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/ValueMapValEntry;->clone()Lcom/google/api/services/fitness/model/ValueMapValEntry;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/google/api/services/fitness/model/ValueMapValEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/google/api/services/fitness/model/MapValue;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/api/services/fitness/model/ValueMapValEntry;->value:Lcom/google/api/services/fitness/model/MapValue;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/ValueMapValEntry;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/ValueMapValEntry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/ValueMapValEntry;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/ValueMapValEntry;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/ValueMapValEntry;
    .registers 3

    .line 80
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/ValueMapValEntry;

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/fitness/model/ValueMapValEntry;
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/google/api/services/fitness/model/ValueMapValEntry;->key:Ljava/lang/String;

    return-object p0
.end method

.method public setValue(Lcom/google/api/services/fitness/model/MapValue;)Lcom/google/api/services/fitness/model/ValueMapValEntry;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/google/api/services/fitness/model/ValueMapValEntry;->value:Lcom/google/api/services/fitness/model/MapValue;

    return-object p0
.end method
