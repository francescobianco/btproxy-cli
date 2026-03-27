.class public Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UnbindDevicePairActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;

.field private view7f09074f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;)V
    .registers 3

    .line 22
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;Landroid/view/View;)V
    .registers 7

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;

    .line 30
    const-string v0, "field \'tv_know\' and method \'onKnow\'"

    const v1, 0x7f09074f

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    const-string v2, "field \'tv_know\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;->tv_know:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;->view7f09074f:Landroid/view/View;

    .line 33
    new-instance v1, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const-string v0, "field \'tv_name_1\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090753

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;->tv_name_1:Landroid/widget/TextView;

    .line 40
    const-string v0, "field \'tv_name_2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090754

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;->tv_name_2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;

    .line 50
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;->tv_know:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;->tv_name_1:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;->tv_name_2:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;->view7f09074f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;->view7f09074f:Landroid/view/View;

    return-void

    .line 47
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
