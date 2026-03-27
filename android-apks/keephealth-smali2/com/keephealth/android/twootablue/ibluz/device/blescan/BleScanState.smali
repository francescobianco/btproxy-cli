.class public final enum Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;
.super Ljava/lang/Enum;
.source "BleScanState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

.field public static final enum BLUETOOTH_OFF:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

.field public static final enum SCAN_FAILED_ALREADY_STARTED:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

.field public static final enum SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

.field public static final enum SCAN_FAILED_FEATURE_UNSUPPORTED:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

.field public static final enum SCAN_FAILED_INTERNAL_ERROR:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

.field public static final enum SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

.field public static final enum SCAN_SUCCESS:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;
    .registers 7

    .line 3
    sget-object v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->BLUETOOTH_OFF:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    sget-object v1, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_SUCCESS:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    sget-object v2, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_ALREADY_STARTED:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    sget-object v3, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    sget-object v4, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_INTERNAL_ERROR:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    sget-object v5, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_FEATURE_UNSUPPORTED:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    sget-object v6, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    filled-new-array/range {v0 .. v6}, [Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 5
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    const/4 v1, -0x1

    const-string v2, "BLUETOOTH_OFF"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->BLUETOOTH_OFF:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    .line 6
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    const-string v1, "SCAN_SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_SUCCESS:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    .line 7
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    const-string v1, "SCAN_FAILED_ALREADY_STARTED"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_ALREADY_STARTED:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    .line 8
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    const-string v1, "SCAN_FAILED_APPLICATION_REGISTRATION_FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    .line 9
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    const-string v1, "SCAN_FAILED_INTERNAL_ERROR"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_INTERNAL_ERROR:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    .line 10
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    const-string v1, "SCAN_FAILED_FEATURE_UNSUPPORTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_FEATURE_UNSUPPORTED:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    .line 11
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    const-string v1, "SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    .line 3
    invoke-static {}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->$values()[Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->$VALUES:[Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->code:I

    .line 18
    iput-object p4, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->message:Ljava/lang/String;

    return-void
.end method

.method public static newInstance(I)Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_24

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_18

    const/4 v0, 0x5

    if-eq p0, v0, :cond_15

    .line 37
    sget-object p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_SUCCESS:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    return-object p0

    .line 35
    :cond_15
    sget-object p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    return-object p0

    .line 33
    :cond_18
    sget-object p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_FEATURE_UNSUPPORTED:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    return-object p0

    .line 31
    :cond_1b
    sget-object p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_INTERNAL_ERROR:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    return-object p0

    .line 29
    :cond_1e
    sget-object p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    return-object p0

    .line 27
    :cond_21
    sget-object p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->SCAN_FAILED_ALREADY_STARTED:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    return-object p0

    .line 24
    :cond_24
    sget-object p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->BLUETOOTH_OFF:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;
    .registers 2

    .line 3
    const-class v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;
    .registers 1

    .line 3
    sget-object v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->$VALUES:[Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    invoke-virtual {v0}, [Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->message:Ljava/lang/String;

    return-object v0
.end method
