.class synthetic Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$8;
.super Ljava/lang/Object;
.source "BleManagerOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$keephealth$android$util$ble$bluetooth$Request$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1790
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->values()[Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$8;->$SwitchMap$com$keephealth$android$util$ble$bluetooth$Request$Type:[I

    :try_start_9
    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->WRITE:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$8;->$SwitchMap$com$keephealth$android$util$ble$bluetooth$Request$Type:[I

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->READ:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$8;->$SwitchMap$com$keephealth$android$util$ble$bluetooth$Request$Type:[I

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ENABLE_NOTIFICATIONS:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$8;->$SwitchMap$com$keephealth$android$util$ble$bluetooth$Request$Type:[I

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ENABLE_INDICATIONS:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
