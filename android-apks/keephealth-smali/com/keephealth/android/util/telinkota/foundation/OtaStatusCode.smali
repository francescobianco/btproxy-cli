.class public Lcom/keephealth/android/util/telinkota/foundation/OtaStatusCode;
.super Ljava/lang/Object;
.source "OtaStatusCode.java"


# static fields
.field public static final BUSY:I = 0x4

.field public static final FAIL_CHARACTERISTIC_NOT_FOUND:I = 0x1a

.field public static final FAIL_CONNECTION_INTERRUPT:I = 0x11

.field public static final FAIL_DESCRIPTOR_CHECK_ERR:I = 0x1e

.field public static final FAIL_FIRMWARE_CHECK_ERR:I = 0x1b

.field public static final FAIL_FLOW_TIMEOUT:I = 0x16

.field public static final FAIL_FW_VERSION_REQ_TIMEOUT:I = 0x1c

.field public static final FAIL_OTA_RESULT_NOTIFICATION:I = 0x1d

.field public static final FAIL_PACKET_SENT_ERR:I = 0x14

.field public static final FAIL_PACKET_SENT_TIMEOUT:I = 0x15

.field public static final FAIL_PARAMS_ERR:I = 0x10

.field public static final FAIL_SERVICE_NOT_FOUND:I = 0x19

.field public static final FAIL_UNCONNECTED:I = 0x18

.field public static final FAIL_VERSION_COMPARE_ERR:I = 0x13

.field public static final FAIL_VERSION_RSP_ERROR:I = 0x12

.field public static final STARTED:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isComplete(I)Z
    .registers 2

    .line 128
    invoke-static {p0}, Lcom/keephealth/android/util/telinkota/foundation/OtaStatusCode;->isFailed(I)Z

    move-result v0

    if-nez v0, :cond_b

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isFailed(I)Z
    .registers 2

    const/16 v0, 0x10

    if-lt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
