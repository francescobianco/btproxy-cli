.class final enum Lcom/keephealth/android/util/ble/bluetooth/Request$Type;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/util/ble/bluetooth/Request$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

.field public static final enum ENABLE_INDICATIONS:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

.field public static final enum ENABLE_NOTIFICATIONS:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

.field public static final enum READ:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

.field public static final enum WRITE:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/util/ble/bluetooth/Request$Type;
    .registers 4

    .line 31
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->WRITE:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->READ:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ENABLE_NOTIFICATIONS:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ENABLE_INDICATIONS:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    const-string v1, "WRITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->WRITE:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    .line 33
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    const-string v1, "READ"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->READ:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    .line 34
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    const-string v1, "ENABLE_NOTIFICATIONS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ENABLE_NOTIFICATIONS:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    .line 35
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    const-string v1, "ENABLE_INDICATIONS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ENABLE_INDICATIONS:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    .line 31
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->$values()[Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->$VALUES:[Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/Request$Type;
    .registers 2

    .line 31
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/util/ble/bluetooth/Request$Type;
    .registers 1

    .line 31
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->$VALUES:[Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-virtual {v0}, [Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    return-object v0
.end method
