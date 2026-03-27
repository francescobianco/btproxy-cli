.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$5;
.super Ljava/lang/Object;
.source "MainFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->doDiscovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V
    .registers 2

    .line 1184
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$5;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1188
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$5;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$600(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1189
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$5;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$600(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 1191
    :cond_15
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$5;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$600(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method
