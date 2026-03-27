.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$3;
.super Ljava/lang/Object;
.source "MainFragmentNew.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->initView()V
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

    .line 519
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$3;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 522
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_8

    goto :goto_44

    .line 526
    :cond_8
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$3;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$3;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->fromViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$400(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$3;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->toViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$500(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 527
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$3;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$3;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->fromViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$400(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$3;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->toViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$500(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->moveItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 528
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$3;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    const/4 p2, 0x0

    # setter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->fromViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$402(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 529
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$3;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # setter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->toViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$502(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_44
    :goto_44
    const/4 p1, 0x0

    return p1
.end method
