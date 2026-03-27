.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$6;
.super Ljava/lang/Object;
.source "MainFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V
    .registers 2

    .line 2312
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2315
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->refreshTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2316
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v0, :cond_19

    .line 2317
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    :cond_19
    return-void
.end method
