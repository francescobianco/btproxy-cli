.class Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;
.super Ljava/lang/Object;
.source "DeviceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

.field final synthetic val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;Lcom/keephealth/android/model/bean/DeviceEntry;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;->this$0:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;->val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    iput p3, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 88
    :try_start_0
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;->val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "removeBond"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;->val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 91
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;->this$0:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->access$100(Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 92
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;->this$0:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->notifyDataSetChanged()V

    goto :goto_40

    .line 94
    :cond_34
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;->this$0:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->access$200(Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u5220\u9664\u914d\u5bf9\u5931\u8d25\uff01"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_40

    :catch_40
    :goto_40
    return-void
.end method
