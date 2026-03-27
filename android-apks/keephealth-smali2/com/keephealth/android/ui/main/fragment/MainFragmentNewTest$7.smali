.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$7;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "MainFragmentNewTest.java"


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

    .line 1641
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$7;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 4

    .line 1645
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    const/16 p1, 0xf

    goto :goto_17

    .line 1647
    :cond_c
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_16

    const/4 p1, 0x3

    goto :goto_17

    :cond_16
    move p1, v0

    .line 1650
    :goto_17
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$7;->makeMovementFlags(II)I

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

    .line 1655
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$7;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$600(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isHeaderOrFooter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 1656
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$7;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$600(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->moveItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_15
    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    return-void
.end method
