.class Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$3;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "WomenHealthNewViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->sendClearData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;)V
    .registers 2

    .line 1881
    iput-object p1, p0, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$3;->this$0:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u53d1\u9001\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "drer4re"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 1884
    const-string p1, "drer4re"

    const-string v0, "\u53d1\u9001\u6210\u529f"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
