.class Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "GameRestrictionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 6

    .line 75
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctSwitch:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0}, Lcom/keephealth/android/views/CustomToggleButton;->getSwitchState()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setOnOrOff(I)V

    .line 76
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->beanList:Ljava/util/List;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$102(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;Ljava/util/List;)Ljava/util/List;

    .line 77
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->beanList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$100(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->beanList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$100(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotGame(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 79
    :goto_37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6d

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5d

    .line 81
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->showLoading()V

    .line 82
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    new-instance v3, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1$1;-><init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_6a

    .line 103
    :cond_5d
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_6d
    return-void
.end method
