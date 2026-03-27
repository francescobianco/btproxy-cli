.class public Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity_ViewBinding;
.super Ljava/lang/Object;
.source "HeartRateRegionActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;

.field private view7f0904fa:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;)V
    .registers 3

    .line 24
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;Landroid/view/View;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;

    .line 32
    const-string v0, "field \'ilHeatWarning\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f0901df

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->ilHeatWarning:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 33
    const-string v0, "field \'tvMaxHr\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090682

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvMaxHr:Landroid/widget/TextView;

    .line 34
    const-string v0, "field \'tvText1\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906ef

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvText1:Landroid/widget/TextView;

    .line 35
    const-string v0, "field \'tvText2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvText2:Landroid/widget/TextView;

    .line 36
    const-string v0, "field \'tvText3\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvText3:Landroid/widget/TextView;

    .line 37
    const-string v0, "field \'rlMax\' and method \'setHeartRateMax\'"

    const v1, 0x7f0904fa

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 38
    const-string v0, "field \'rlMax\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->rlMax:Landroid/widget/RelativeLayout;

    .line 39
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity_ViewBinding;->view7f0904fa:Landroid/view/View;

    .line 40
    new-instance v0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;

    .line 55
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->ilHeatWarning:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 56
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvMaxHr:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvText1:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvText2:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvText3:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->rlMax:Landroid/widget/RelativeLayout;

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity_ViewBinding;->view7f0904fa:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity_ViewBinding;->view7f0904fa:Landroid/view/View;

    return-void

    .line 52
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
