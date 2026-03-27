.class public final enum Lcom/keephealth/android/util/ota/Command$CommandType;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ota/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/util/ota/Command$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/util/ota/Command$CommandType;

.field public static final enum DISABLE_NOTIFY:Lcom/keephealth/android/util/ota/Command$CommandType;

.field public static final enum ENABLE_NOTIFY:Lcom/keephealth/android/util/ota/Command$CommandType;

.field public static final enum READ:Lcom/keephealth/android/util/ota/Command$CommandType;

.field public static final enum READ_DESCRIPTOR:Lcom/keephealth/android/util/ota/Command$CommandType;

.field public static final enum WRITE:Lcom/keephealth/android/util/ota/Command$CommandType;

.field public static final enum WRITE_NO_RESPONSE:Lcom/keephealth/android/util/ota/Command$CommandType;


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/util/ota/Command$CommandType;
    .registers 6

    .line 66
    sget-object v0, Lcom/keephealth/android/util/ota/Command$CommandType;->READ:Lcom/keephealth/android/util/ota/Command$CommandType;

    sget-object v1, Lcom/keephealth/android/util/ota/Command$CommandType;->READ_DESCRIPTOR:Lcom/keephealth/android/util/ota/Command$CommandType;

    sget-object v2, Lcom/keephealth/android/util/ota/Command$CommandType;->WRITE:Lcom/keephealth/android/util/ota/Command$CommandType;

    sget-object v3, Lcom/keephealth/android/util/ota/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/keephealth/android/util/ota/Command$CommandType;

    sget-object v4, Lcom/keephealth/android/util/ota/Command$CommandType;->ENABLE_NOTIFY:Lcom/keephealth/android/util/ota/Command$CommandType;

    sget-object v5, Lcom/keephealth/android/util/ota/Command$CommandType;->DISABLE_NOTIFY:Lcom/keephealth/android/util/ota/Command$CommandType;

    filled-new-array/range {v0 .. v5}, [Lcom/keephealth/android/util/ota/Command$CommandType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Lcom/keephealth/android/util/ota/Command$CommandType;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/ota/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/util/ota/Command$CommandType;->READ:Lcom/keephealth/android/util/ota/Command$CommandType;

    new-instance v0, Lcom/keephealth/android/util/ota/Command$CommandType;

    const-string v1, "READ_DESCRIPTOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/ota/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/util/ota/Command$CommandType;->READ_DESCRIPTOR:Lcom/keephealth/android/util/ota/Command$CommandType;

    new-instance v0, Lcom/keephealth/android/util/ota/Command$CommandType;

    const-string v1, "WRITE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/ota/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/util/ota/Command$CommandType;->WRITE:Lcom/keephealth/android/util/ota/Command$CommandType;

    new-instance v0, Lcom/keephealth/android/util/ota/Command$CommandType;

    const-string v1, "WRITE_NO_RESPONSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/ota/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/util/ota/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/keephealth/android/util/ota/Command$CommandType;

    new-instance v0, Lcom/keephealth/android/util/ota/Command$CommandType;

    const-string v1, "ENABLE_NOTIFY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/ota/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/util/ota/Command$CommandType;->ENABLE_NOTIFY:Lcom/keephealth/android/util/ota/Command$CommandType;

    new-instance v0, Lcom/keephealth/android/util/ota/Command$CommandType;

    const-string v1, "DISABLE_NOTIFY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/ota/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/util/ota/Command$CommandType;->DISABLE_NOTIFY:Lcom/keephealth/android/util/ota/Command$CommandType;

    .line 66
    invoke-static {}, Lcom/keephealth/android/util/ota/Command$CommandType;->$values()[Lcom/keephealth/android/util/ota/Command$CommandType;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ota/Command$CommandType;->$VALUES:[Lcom/keephealth/android/util/ota/Command$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/util/ota/Command$CommandType;
    .registers 2

    .line 66
    const-class v0, Lcom/keephealth/android/util/ota/Command$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/util/ota/Command$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/util/ota/Command$CommandType;
    .registers 1

    .line 66
    sget-object v0, Lcom/keephealth/android/util/ota/Command$CommandType;->$VALUES:[Lcom/keephealth/android/util/ota/Command$CommandType;

    invoke-virtual {v0}, [Lcom/keephealth/android/util/ota/Command$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/util/ota/Command$CommandType;

    return-object v0
.end method
