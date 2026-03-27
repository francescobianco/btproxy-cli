.class Lcom/keephealth/android/ui/device/activity/GestureControlActivity$1;
.super Ljava/lang/Object;
.source "GestureControlActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemClickListener;


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

    .line 55
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GestureControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 58
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GestureControlActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityGestureControlBinding;->ivChoseClose:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    move p2, p1

    .line 59
    :goto_d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GestureControlActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->gestureControlAdapter:Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_3d

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GestureControlActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->gestureControlAdapter:Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;

    invoke-virtual {v0, p2}, Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;

    if-ne p2, p3, :cond_37

    add-int/lit8 v1, p2, 0x1

    .line 66
    sput v1, Lcom/keephealth/android/app/AppApplication;->gestureType:I

    .line 67
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->setGesture(I)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->setShow(Z)V

    goto :goto_3a

    .line 71
    :cond_37
    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->setShow(Z)V

    :goto_3a
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    .line 74
    :cond_3d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GestureControlActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->gestureControlAdapter:Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;->notifyDataSetChanged()V

    return-void
.end method
