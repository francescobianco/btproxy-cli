.class public Lcom/keephealth/android/ui/device/activity/DeviceSetActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DeviceSetActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;

.field private view7f090252:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;)V
    .registers 3

    .line 22
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;Landroid/view/View;)V
    .registers 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;

    .line 30
    const-string v0, "field \'llAlarm\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090358

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llAlarm:Landroid/widget/LinearLayout;

    .line 31
    const-string v0, "field \'llLongSit\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090386

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llLongSit:Landroid/widget/LinearLayout;

    .line 32
    const-string v0, "field \'llHrRange\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090378

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llHrRange:Landroid/widget/LinearLayout;

    const v0, 0x7f090252

    .line 33
    const-string v1, "method \'toRemind\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity_ViewBinding;->view7f090252:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/DeviceSetActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;

    .line 50
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llAlarm:Landroid/widget/LinearLayout;

    .line 51
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llLongSit:Landroid/widget/LinearLayout;

    .line 52
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llHrRange:Landroid/widget/LinearLayout;

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity_ViewBinding;->view7f090252:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity_ViewBinding;->view7f090252:Landroid/view/View;

    return-void

    .line 47
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
