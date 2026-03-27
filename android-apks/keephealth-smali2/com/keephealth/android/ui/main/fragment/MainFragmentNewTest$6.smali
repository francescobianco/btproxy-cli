.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;
.super Ljava/lang/Object;
.source "MainFragmentNewTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V
    .registers 2

    .line 1242
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1245
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_42

    .line 1246
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutT:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$202(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;I)I

    .line 1247
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # setter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$302(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;I)I

    .line 1248
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1249
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1250
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/app/AppApplication;->setSysndata(Z)V

    .line 1251
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v0, :cond_f8

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    goto/16 :goto_f8

    .line 1253
    :cond_42
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->nowProgress:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$400(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 1254
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # operator++ for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$308(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I

    .line 1256
    :cond_55
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 1257
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->refreshViewHolder:Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$500(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10053c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->setRefreshingText(Ljava/lang/String;)V

    .line 1259
    :cond_9a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_bd

    .line 1260
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1261
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f8

    .line 1262
    :cond_bd
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I

    move-result v0

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_e0

    .line 1263
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1264
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f8

    .line 1266
    :cond_e0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1267
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f8
    :goto_f8
    return-void
.end method
