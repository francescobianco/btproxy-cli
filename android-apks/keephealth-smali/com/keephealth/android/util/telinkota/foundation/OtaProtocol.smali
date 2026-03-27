.class public final enum Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;
.super Ljava/lang/Enum;
.source "OtaProtocol.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

.field public static final enum Extend:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

.field public static final enum Legacy:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;
    .registers 2

    .line 27
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;->Legacy:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    sget-object v1, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;->Extend:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    filled-new-array {v0, v1}, [Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    const-string v1, "Legacy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;->Legacy:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    .line 29
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    const-string v1, "Extend"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;->Extend:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    .line 27
    invoke-static {}, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;->$values()[Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;->$VALUES:[Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;
    .registers 2

    .line 27
    const-class v0, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;
    .registers 1

    .line 27
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;->$VALUES:[Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    invoke-virtual {v0}, [Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    return-object v0
.end method
