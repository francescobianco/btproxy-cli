.class public Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SetPhoneWenActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

.field private view7f0900c4:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;)V
    .registers 3

    .line 23
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;Landroid/view/View;)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    .line 31
    const-string v0, "field \'tv_title_1\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090789

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->tv_title_1:Landroid/widget/TextView;

    .line 32
    const-string v0, "field \'btn_go_set\' and method \'tvGoset\'"

    const v1, 0x7f0900c4

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 33
    const-string v0, "field \'btn_go_set\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->btn_go_set:Landroid/widget/Button;

    .line 34
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;->view7f0900c4:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    .line 50
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->tv_title_1:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->btn_go_set:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;->view7f0900c4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;->view7f0900c4:Landroid/view/View;

    return-void

    .line 47
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
