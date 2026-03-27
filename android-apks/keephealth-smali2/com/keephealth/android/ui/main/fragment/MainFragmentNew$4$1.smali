.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4$1;
.super Ljava/lang/Object;
.source "MainFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 576
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4$1;->this$1:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 579
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4$1;->this$1:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->connectToAudio(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
