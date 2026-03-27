.class Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$SingletonHolder;
.super Ljava/lang/Object;
.source "BluetoothLe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 102
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$1;)V

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$SingletonHolder;->INSTANCE:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 1

    .line 101
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$SingletonHolder;->INSTANCE:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object v0
.end method
