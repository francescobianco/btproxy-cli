.class public final enum Lcom/keephealth/android/util/telinkota/foundation/ResultCode;
.super Ljava/lang/Enum;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/util/telinkota/foundation/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_DATA_CRC_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_DATA_INCOMPLETE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_DATA_PACKET_SEQ_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_DATA_PACKET_TIMEOUT:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_FAIL_DUE_TO_CONNECTION_TERMINATE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_FIRMWARE_MARK_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_FLOW_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_FWENC_NEW_FW_NOT_MATCH_OLD_FW:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_FW_CHECK_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_FW_SIZE_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_PACKET_INVALID:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_PDU_LEN_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_SECBOOT_FUNC_NOT_ENABLE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_SECBOOT_HW_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_SECBOOT_NEW_FW_NOT_MATCH_OLD_FW:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_SECBOOT_PUBKEY_SIGN_LEN_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_SECBOOT_PUBKEY_SIGN_SEQ_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_SECBOOT_PUBLIC_KEY_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_SECBOOT_SIGN_VERIFY_FAIL:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_SECBOOT_SYSTEM_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_SECBOOT_WRITE_DESC_FAIL:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_SUCCESS:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_TIMEOUT:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_VERSION_COMPARE_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum OTA_WRITE_FLASH_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

.field public static final enum UNKNOWN_CODE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;


# instance fields
.field public final info:Ljava/lang/String;

.field public final value:I


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/util/telinkota/foundation/ResultCode;
    .registers 26

    .line 27
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SUCCESS:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v1, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_DATA_PACKET_SEQ_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v2, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_PACKET_INVALID:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v3, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_DATA_CRC_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v4, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_WRITE_FLASH_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v5, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_DATA_INCOMPLETE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v6, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_FLOW_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v7, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_FW_CHECK_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v8, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_VERSION_COMPARE_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v9, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_PDU_LEN_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v10, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_FIRMWARE_MARK_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v11, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_FW_SIZE_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v12, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_DATA_PACKET_TIMEOUT:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v13, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_TIMEOUT:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v14, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_FAIL_DUE_TO_CONNECTION_TERMINATE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v15, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_HW_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v16, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_SYSTEM_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v17, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_FUNC_NOT_ENABLE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v18, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_PUBKEY_SIGN_SEQ_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v19, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_PUBKEY_SIGN_LEN_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v20, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_PUBLIC_KEY_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v21, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_SIGN_VERIFY_FAIL:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v22, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_WRITE_DESC_FAIL:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v23, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_NEW_FW_NOT_MATCH_OLD_FW:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v24, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_FWENC_NEW_FW_NOT_MATCH_OLD_FW:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    sget-object v25, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->UNKNOWN_CODE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    filled-new-array/range {v0 .. v25}, [Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 32
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/4 v1, 0x0

    const-string v2, "success"

    const-string v3, "OTA_SUCCESS"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SUCCESS:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 37
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/4 v1, 0x1

    const-string v2, "OTA data packet sequence number error: repeated OTA PDU or lost some OTA PDU"

    const-string v3, "OTA_DATA_PACKET_SEQ_ERR"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_DATA_PACKET_SEQ_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 39
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/4 v1, 0x2

    const-string v2, "invalid OTA packet: 1. invalid OTA command; 2. addr_index out of range; 3.not standard OTA PDU length"

    const-string v3, "OTA_PACKET_INVALID"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_PACKET_INVALID:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 41
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/4 v1, 0x3

    const-string v2, "packet PDU CRC err"

    const-string v3, "OTA_DATA_CRC_ERR"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_DATA_CRC_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 43
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/4 v1, 0x4

    const-string v2, "write OTA data to flash ERR"

    const-string v3, "OTA_WRITE_FLASH_ERR"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_WRITE_FLASH_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 45
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/4 v1, 0x5

    const-string v2, "lost last one or more OTA PDU"

    const-string v3, "OTA_DATA_INCOMPLETE"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_DATA_INCOMPLETE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 47
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/4 v1, 0x6

    const-string v2, "peer device send OTA command or OTA data not in correct flow"

    const-string v3, "OTA_FLOW_ERR"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_FLOW_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 49
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/4 v1, 0x7

    const-string v2, "firmware CRC check error"

    const-string v3, "OTA_FW_CHECK_ERR"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_FW_CHECK_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 51
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0x8

    const-string v2, "the version number to be update is lower than the current version"

    const-string v3, "OTA_VERSION_COMPARE_ERR"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_VERSION_COMPARE_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 53
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0x9

    const-string v2, "PDU length error: not 16*n, or not equal to the value it declare in \"CMD_OTA_START_EXT\" packet"

    const-string v3, "OTA_PDU_LEN_ERR"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_PDU_LEN_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 55
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0xa

    const-string v2, "firmware mark error: not generated by telink\'s BLE SDK"

    const-string v3, "OTA_FIRMWARE_MARK_ERR"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_FIRMWARE_MARK_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 57
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0xb

    const-string v2, "firmware size error: no firmware_size; firmware size too small or too big"

    const-string v3, "OTA_FW_SIZE_ERR"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_FW_SIZE_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 59
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0xc

    const-string v2, "time interval between two consequent packet exceed a value(user can adjust this value)"

    const-string v3, "OTA_DATA_PACKET_TIMEOUT"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_DATA_PACKET_TIMEOUT:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 61
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0xd

    const-string v2, "OTA flow total timeout"

    const-string v3, "OTA_TIMEOUT"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_TIMEOUT:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 63
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0xe

    const-string v2, "OTA fail due to current connection terminate(maybe connection timeout or local/peer device terminate connection)"

    const-string v3, "OTA_FAIL_DUE_TO_CONNECTION_TERMINATE"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_FAIL_DUE_TO_CONNECTION_TERMINATE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 67
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0x80

    const-string v2, "OTA server device hardware error"

    const-string v3, "OTA_SECBOOT_HW_ERR"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_HW_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 69
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0x81

    const-string v2, "OTA server device system error"

    const-string v3, "OTA_SECBOOT_SYSTEM_ERR"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_SYSTEM_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 71
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0x82

    const-string v2, "OTA server device do not enable secure boot function"

    const-string v3, "OTA_SECBOOT_FUNC_NOT_ENABLE"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_FUNC_NOT_ENABLE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 73
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0x83

    const-string v2, "OTA public key & signature sequence number error: repeated or lost"

    const-string v3, "OTA_SECBOOT_PUBKEY_SIGN_SEQ_ERR"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_PUBKEY_SIGN_SEQ_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 75
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0x84

    const-string v2, "OTA public key & signature data packet length error"

    const-string v3, "OTA_SECBOOT_PUBKEY_SIGN_LEN_ERR"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_PUBKEY_SIGN_LEN_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 77
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0x85

    const-string v2, "OTA client public key not match OTA server device local hash"

    const-string v3, "OTA_SECBOOT_PUBLIC_KEY_ERR"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_PUBLIC_KEY_ERR:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 79
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0x86

    const-string v2, "OTA signature verification fail"

    const-string v3, "OTA_SECBOOT_SIGN_VERIFY_FAIL"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_SIGN_VERIFY_FAIL:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 81
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0x87

    const-string v2, "write secure boot descriptor fail"

    const-string v3, "OTA_SECBOOT_WRITE_DESC_FAIL"

    const/16 v4, 0x16

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_WRITE_DESC_FAIL:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 83
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0x88

    const-string v2, "secure boot function: new firmware not match old firmware"

    const-string v3, "OTA_SECBOOT_NEW_FW_NOT_MATCH_OLD_FW"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SECBOOT_NEW_FW_NOT_MATCH_OLD_FW:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 85
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0x89

    const-string v2, "firmware encryption function: new firmware not match old firmware"

    const-string v3, "OTA_FWENC_NEW_FW_NOT_MATCH_OLD_FW"

    const/16 v4, 0x18

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_FWENC_NEW_FW_NOT_MATCH_OLD_FW:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 90
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    const/16 v1, 0xff

    const-string v2, "unknown code"

    const-string v3, "UNKNOWN_CODE"

    const/16 v4, 0x19

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->UNKNOWN_CODE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    .line 27
    invoke-static {}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->$values()[Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->$VALUES:[Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

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

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p3, p0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->value:I

    .line 100
    iput-object p4, p0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->info:Ljava/lang/String;

    return-void
.end method

.method public static getResultCode(I)Lcom/keephealth/android/util/telinkota/foundation/ResultCode;
    .registers 6

    .line 104
    invoke-static {}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->values()[Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 105
    iget v4, v3, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->value:I

    if-ne p0, v4, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 109
    :cond_12
    sget-object p0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->UNKNOWN_CODE:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/util/telinkota/foundation/ResultCode;
    .registers 2

    .line 27
    const-class v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/util/telinkota/foundation/ResultCode;
    .registers 1

    .line 27
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->$VALUES:[Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    invoke-virtual {v0}, [Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 114
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SUCCESS:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    if-ne p0, v0, :cond_7

    .line 115
    const-string v0, "OTA success"

    return-object v0

    .line 117
    :cond_7
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v1, p0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->value:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->info:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "OTA result: %02X - %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
