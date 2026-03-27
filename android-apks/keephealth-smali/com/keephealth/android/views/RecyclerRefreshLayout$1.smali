.class Lcom/keephealth/android/views/RecyclerRefreshLayout$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/RecyclerRefreshLayout;->getRecycleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/RecyclerRefreshLayout;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/RecyclerRefreshLayout;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout$1;->this$0:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 89
    iget-object p1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout$1;->this$0:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    # invokes: Lcom/keephealth/android/views/RecyclerRefreshLayout;->canLoad()Z
    invoke-static {p1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->access$000(Lcom/keephealth/android/views/RecyclerRefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout$1;->this$0:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    # getter for: Lcom/keephealth/android/views/RecyclerRefreshLayout;->mCanLoadMore:Z
    invoke-static {p1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->access$100(Lcom/keephealth/android/views/RecyclerRefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 90
    iget-object p1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout$1;->this$0:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    # invokes: Lcom/keephealth/android/views/RecyclerRefreshLayout;->loadData()V
    invoke-static {p1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->access$200(Lcom/keephealth/android/views/RecyclerRefreshLayout;)V

    :cond_15
    return-void
.end method
