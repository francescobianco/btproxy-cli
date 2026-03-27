.class public Lcom/keephealth/android/views/UpdateView_ViewBinding;
.super Ljava/lang/Object;
.source "UpdateView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/views/UpdateView;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/UpdateView;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1, p1}, Lcom/keephealth/android/views/UpdateView_ViewBinding;-><init>(Lcom/keephealth/android/views/UpdateView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/views/UpdateView;Landroid/view/View;)V
    .registers 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/keephealth/android/views/UpdateView_ViewBinding;->target:Lcom/keephealth/android/views/UpdateView;

    .line 27
    const-string v0, "field \'mProgressTv\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090736

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/views/UpdateView;->mProgressTv:Landroid/widget/TextView;

    .line 28
    const-string v0, "field \'mProgressBar\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f090461

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lcom/keephealth/android/views/UpdateView;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/views/UpdateView_ViewBinding;->target:Lcom/keephealth/android/views/UpdateView;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/keephealth/android/views/UpdateView_ViewBinding;->target:Lcom/keephealth/android/views/UpdateView;

    .line 38
    iput-object v1, v0, Lcom/keephealth/android/views/UpdateView;->mProgressTv:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/keephealth/android/views/UpdateView;->mProgressBar:Landroid/widget/ProgressBar;

    return-void

    .line 35
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
