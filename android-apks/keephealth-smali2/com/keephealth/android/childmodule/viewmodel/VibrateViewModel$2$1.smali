.class Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2$1;
.super Ljava/lang/Object;
.source "VibrateViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2$1;->this$1:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2$1;->this$1:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateList:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
