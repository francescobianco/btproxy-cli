.class Lcom/keephealth/android/ui/device/activity/GestureControlActivity$2;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "GestureControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/GestureControlActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/GestureControlActivity;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GestureControlActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    const/4 p1, 0x0

    .line 81
    sput p1, Lcom/keephealth/android/app/AppApplication;->gestureType:I

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GestureControlActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGestureControlBinding;->ivChoseClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->setGesture(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    move v0, p1

    .line 84
    :goto_18
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GestureControlActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->gestureControlAdapter:Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 85
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GestureControlActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->gestureControlAdapter:Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/GestureControlBean;

    .line 86
    invoke-virtual {v1, p1}, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->setShow(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 88
    :cond_32
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GestureControlActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->gestureControlAdapter:Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;->notifyDataSetChanged()V

    return-void
.end method
