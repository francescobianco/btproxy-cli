.class public Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainMenuSetActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;)V
    .registers 3

    .line 19
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;Landroid/view/View;)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;

    .line 26
    const-string v0, "field \'mRecyclerViewShow\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903df

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    const-string v0, "field \'mRecyclerViewHide\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903de

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;

    .line 37
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 34
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
