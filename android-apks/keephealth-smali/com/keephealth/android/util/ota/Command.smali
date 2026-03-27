.class public Lcom/keephealth/android/util/ota/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ota/Command$CommandType;,
        Lcom/keephealth/android/util/ota/Command$Callback;
    }
.end annotation


# instance fields
.field public characteristicUUID:Ljava/util/UUID;

.field public data:[B

.field public delay:I

.field public descriptorUUID:Ljava/util/UUID;

.field public serviceUUID:Ljava/util/UUID;

.field public tag:Ljava/lang/Object;

.field public type:Lcom/keephealth/android/util/ota/Command$CommandType;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 22
    sget-object v1, Lcom/keephealth/android/util/ota/Command$CommandType;->WRITE:Lcom/keephealth/android/util/ota/Command$CommandType;

    invoke-direct {p0, v0, v0, v1}, Lcom/keephealth/android/util/ota/Command;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ota/Command$CommandType;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ota/Command$CommandType;)V
    .registers 5

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/keephealth/android/util/ota/Command;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ota/Command$CommandType;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ota/Command$CommandType;[B)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/util/ota/Command;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ota/Command$CommandType;[BLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ota/Command$CommandType;[BLjava/lang/Object;)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    .line 38
    iput-object p2, p0, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 39
    iput-object p3, p0, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    .line 40
    iput-object p4, p0, Lcom/keephealth/android/util/ota/Command;->data:[B

    .line 41
    iput-object p5, p0, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    return-void
.end method

.method public static newInstance()Lcom/keephealth/android/util/ota/Command;
    .registers 1

    .line 45
    new-instance v0, Lcom/keephealth/android/util/ota/Command;

    invoke-direct {v0}, Lcom/keephealth/android/util/ota/Command;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    .line 50
    iput-object v0, p0, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 51
    iput-object v0, p0, Lcom/keephealth/android/util/ota/Command;->descriptorUUID:Ljava/util/UUID;

    .line 52
    iput-object v0, p0, Lcom/keephealth/android/util/ota/Command;->data:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Command;->data:[B

    if-eqz v0, :cond_b

    .line 60
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ota/MArrays;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 59
    :cond_b
    const-string v0, ""

    .line 62
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{ tag : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CHARACTERISTIC_UUID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 63
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/util/ota/Command;->delay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
