.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$12;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "MainFragmentNew.java"


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

    .line 3578
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$12;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 3629
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 3630
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$12;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 4

    .line 3582
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    const/16 p1, 0xf

    goto :goto_17

    .line 3584
    :cond_c
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_16

    const/4 p1, 0x3

    goto :goto_17

    :cond_16
    move p1, v0

    .line 3587
    :goto_17
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$12;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    const/4 p1, 0x1

    return p1
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .registers 8

    .line 3619
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    .line 3620
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$12;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isHeaderOrFooter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-nez p1, :cond_1b

    if-eq p3, p5, :cond_1b

    .line 3622
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$12;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # setter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->fromViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$402(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 3623
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$12;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # setter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->toViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1, p4}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$502(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_1b
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    return-void
.end method
