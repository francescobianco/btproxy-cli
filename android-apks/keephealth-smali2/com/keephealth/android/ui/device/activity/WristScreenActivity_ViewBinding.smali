.class public Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WristScreenActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

.field private view7f09050a:Landroid/view/View;

.field private view7f09050c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)V
    .registers 3

    .line 26
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;Landroid/view/View;)V
    .registers 6

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    .line 34
    const-string v0, "field \'tvScreenStartTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906b7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->tvScreenStartTime:Landroid/widget/TextView;

    .line 35
    const-string v0, "field \'tvScreenEndTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906b6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->tvScreenEndTime:Landroid/widget/TextView;

    .line 36
    const-string v0, "field \'layoutShow\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09031b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->layoutShow:Landroid/widget/LinearLayout;

    .line 37
    const-string v0, "field \'itScreen\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f09027c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->itScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09050c

    .line 38
    const-string v1, "method \'selecStatrTime\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;->view7f09050c:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09050a

    .line 46
    const-string v1, "method \'selecEndTime\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;->view7f09050a:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    .line 63
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->tvScreenStartTime:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->tvScreenEndTime:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->layoutShow:Landroid/widget/LinearLayout;

    .line 66
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->itScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;->view7f09050c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;->view7f09050c:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;->view7f09050a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;->view7f09050a:Landroid/view/View;

    return-void

    .line 60
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
