.class public Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ScanDeviceAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;Landroid/view/View;)V
    .registers 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;

    .line 24
    const-string v0, "field \'tvDeviceName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090650

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvDeviceName:Landroid/widget/TextView;

    .line 25
    const-string v0, "field \'tvMac\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090681

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvMac:Landroid/widget/TextView;

    .line 26
    const-string v0, "field \'layoutItem\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f09030e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->layoutItem:Landroid/widget/RelativeLayout;

    .line 27
    const-string v0, "field \'tvState\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0906e0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvState:Landroid/widget/ImageView;

    .line 28
    const-string v0, "field \'tvConnect\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090634

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvConnect:Landroid/widget/ImageView;

    .line 29
    const-string v0, "field \'tvDb\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090649

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvDb:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;

    .line 39
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvDeviceName:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvMac:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->layoutItem:Landroid/widget/RelativeLayout;

    .line 42
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvState:Landroid/widget/ImageView;

    .line 43
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvConnect:Landroid/widget/ImageView;

    .line 44
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvDb:Landroid/widget/TextView;

    return-void

    .line 36
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
