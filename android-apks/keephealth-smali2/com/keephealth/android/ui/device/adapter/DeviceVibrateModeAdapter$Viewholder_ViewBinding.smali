.class public Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder_ViewBinding;
.super Ljava/lang/Object;
.source "DeviceVibrateModeAdapter$Viewholder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;Landroid/view/View;)V
    .registers 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;

    .line 23
    const-string v0, "field \'tvName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09068d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    .line 24
    const-string v0, "field \'ivSelect\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0902cc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->ivSelect:Landroid/widget/ImageView;

    .line 25
    const-string v0, "field \'tv_vibrate_status\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090790

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->tv_vibrate_status:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;

    .line 35
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->ivSelect:Landroid/widget/ImageView;

    .line 37
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->tv_vibrate_status:Landroid/widget/TextView;

    return-void

    .line 32
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
