.class public Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity_ViewBinding;
.super Ljava/lang/Object;
.source "FirmwareUpdateActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V
    .registers 3

    .line 20
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Landroid/view/View;)V
    .registers 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    .line 27
    const-string v0, "field \'mProgressBar\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f090461

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 28
    const-string v0, "field \'progressRate\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090473

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->progressRate:Landroid/widget/TextView;

    .line 29
    const-string v0, "field \'tvTips\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->tvTips:Landroid/widget/TextView;

    .line 30
    const-string v0, "field \'tvTips2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->tvTips2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    .line 40
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 41
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->progressRate:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->tvTips:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->tvTips2:Landroid/widget/TextView;

    return-void

    .line 37
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
