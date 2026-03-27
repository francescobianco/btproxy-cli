.class public Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DisturbActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

.field private view7f09050a:Landroid/view/View;

.field private view7f09050c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)V
    .registers 3

    .line 25
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/DisturbActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/DisturbActivity;Landroid/view/View;)V
    .registers 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    .line 33
    const-string v0, "field \'mToggleButton\'"

    const-class v1, Lcom/keephealth/android/views/CustomToggleButton;

    const v2, 0x7f0903e4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->mToggleButton:Lcom/keephealth/android/views/CustomToggleButton;

    .line 34
    const-string v0, "field \'tvRemindStartTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906b0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->tvRemindStartTime:Landroid/widget/TextView;

    .line 35
    const-string v0, "field \'tvRemindEndTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->tvRemindEndTime:Landroid/widget/TextView;

    const v0, 0x7f09050c

    .line 36
    const-string v1, "method \'selecStatrTime\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;->view7f09050c:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/DisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09050a

    .line 44
    const-string v1, "method \'selecEndTime\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;->view7f09050a:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/DisturbActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    .line 61
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->mToggleButton:Lcom/keephealth/android/views/CustomToggleButton;

    .line 62
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->tvRemindStartTime:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->tvRemindEndTime:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;->view7f09050c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;->view7f09050c:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;->view7f09050a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity_ViewBinding;->view7f09050a:Landroid/view/View;

    return-void

    .line 58
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
