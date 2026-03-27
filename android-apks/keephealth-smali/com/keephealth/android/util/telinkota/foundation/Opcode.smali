.class public final enum Lcom/keephealth/android/util/telinkota/foundation/Opcode;
.super Ljava/lang/Enum;
.source "Opcode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/util/telinkota/foundation/Opcode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/util/telinkota/foundation/Opcode;

.field public static final enum CMD_OTA_END:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

.field public static final enum CMD_OTA_FW_VERSION_REQ:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

.field public static final enum CMD_OTA_FW_VERSION_RSP:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

.field public static final enum CMD_OTA_RESULT:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

.field public static final enum CMD_OTA_SET_FW_INDEX:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

.field public static final enum CMD_OTA_START:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

.field public static final enum CMD_OTA_START_EXT:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

.field public static final enum CMD_OTA_VERSION:Lcom/keephealth/android/util/telinkota/foundation/Opcode;


# instance fields
.field public final usage:Ljava/lang/String;

.field public final value:I


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/util/telinkota/foundation/Opcode;
    .registers 8

    .line 25
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_VERSION:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    sget-object v1, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_START:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    sget-object v2, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_END:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    sget-object v3, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_START_EXT:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    sget-object v4, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_FW_VERSION_REQ:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    sget-object v5, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_FW_VERSION_RSP:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    sget-object v6, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_RESULT:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    sget-object v7, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_SET_FW_INDEX:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    filled-new-array/range {v0 .. v7}, [Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 31
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    const-string v1, "CMD_OTA_VERSION"

    const/4 v2, 0x0

    const v3, 0xff00

    const-string v4, "Legacy"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/telinkota/foundation/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_VERSION:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    .line 37
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    const/4 v1, 0x1

    const v2, 0xff01

    const-string v3, "CMD_OTA_START"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/keephealth/android/util/telinkota/foundation/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_START:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    .line 43
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    const-string v1, "CMD_OTA_END"

    const/4 v2, 0x2

    const v3, 0xff02

    const-string v4, "All"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/telinkota/foundation/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_END:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    .line 49
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    const-string v1, "CMD_OTA_START_EXT"

    const/4 v2, 0x3

    const v3, 0xff03

    const-string v5, "Extend"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/keephealth/android/util/telinkota/foundation/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_START_EXT:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    .line 54
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    const/4 v1, 0x4

    const v2, 0xff04

    const-string v3, "CMD_OTA_FW_VERSION_REQ"

    invoke-direct {v0, v3, v1, v2, v5}, Lcom/keephealth/android/util/telinkota/foundation/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_FW_VERSION_REQ:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    .line 59
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    const/4 v1, 0x5

    const v2, 0xff05

    const-string v3, "CMD_OTA_FW_VERSION_RSP"

    invoke-direct {v0, v3, v1, v2, v5}, Lcom/keephealth/android/util/telinkota/foundation/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_FW_VERSION_RSP:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    .line 64
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    const/4 v1, 0x6

    const v2, 0xff06

    const-string v3, "CMD_OTA_RESULT"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/keephealth/android/util/telinkota/foundation/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_RESULT:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    .line 66
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    const/4 v1, 0x7

    const v2, 0xff80

    const-string v3, "CMD_OTA_SET_FW_INDEX"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/keephealth/android/util/telinkota/foundation/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_SET_FW_INDEX:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    .line 25
    invoke-static {}, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->$values()[Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->$VALUES:[Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->value:I

    .line 75
    iput-object p4, p0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->usage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/util/telinkota/foundation/Opcode;
    .registers 2

    .line 25
    const-class v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/util/telinkota/foundation/Opcode;
    .registers 1

    .line 25
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->$VALUES:[Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    invoke-virtual {v0}, [Lcom/keephealth/android/util/telinkota/foundation/Opcode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    return-object v0
.end method
