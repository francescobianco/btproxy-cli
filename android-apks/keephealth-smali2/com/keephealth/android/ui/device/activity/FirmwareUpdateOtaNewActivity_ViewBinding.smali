.class public Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity_ViewBinding;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaNewActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V
    .registers 3

    .line 20
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Landroid/view/View;)V
    .registers 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    .line 28
    const-string v0, "field \'mProgressBar\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f090461

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 29
    const-string v0, "field \'progressRate\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090473

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->progressRate:Landroid/widget/TextView;

    .line 30
    const-string v0, "field \'tvTips\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->tvTips:Landroid/widget/TextView;

    .line 31
    const-string v0, "field \'tvTips2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->tvTips2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    .line 41
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 42
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->progressRate:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->tvTips:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->tvTips2:Landroid/widget/TextView;

    return-void

    .line 38
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
