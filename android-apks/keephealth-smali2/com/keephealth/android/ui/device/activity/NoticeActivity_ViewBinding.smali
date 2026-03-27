.class public Lcom/keephealth/android/ui/device/activity/NoticeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NoticeActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

.field private view7f09079c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V
    .registers 3

    .line 21
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;Landroid/view/View;)V
    .registers 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    const v0, 0x7f09079c

    .line 29
    const-string v1, "method \'toSetNoti\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity_ViewBinding;->view7f09079c:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/keephealth/android/ui/device/activity/NoticeActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    .line 46
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity_ViewBinding;->view7f09079c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity_ViewBinding;->view7f09079c:Landroid/view/View;

    return-void

    .line 42
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
