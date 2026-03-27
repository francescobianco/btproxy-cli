.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;
.super Ljava/lang/Object;
.source "MineDialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->handleData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V
    .registers 2

    .line 515
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    .line 518
    :goto_1
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 519
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v1

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    if-ne v1, v2, :cond_30

    .line 520
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->setSelectPosition(I)V

    .line 521
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->lastPosition:I
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1402(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)I

    goto :goto_33

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 525
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isChange:Z
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1500(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->sendChange(ZLjava/util/List;)V

    .line 526
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 527
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    :cond_59
    return-void
.end method
