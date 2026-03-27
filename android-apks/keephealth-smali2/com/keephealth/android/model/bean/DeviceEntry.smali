.class public Lcom/keephealth/android/model/bean/DeviceEntry;
.super Ljava/lang/Object;
.source "DeviceEntry.java"


# instance fields
.field public device:Landroid/bluetooth/BluetoothDevice;

.field public state:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    .line 11
    iput p2, p0, Lcom/keephealth/android/model/bean/DeviceEntry;->state:I

    return-void
.end method
