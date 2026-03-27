.class Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

.field final synthetic val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 3

    .line 210
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$3;->this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    iput-object p2, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$3;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$3;->this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$3;->this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x1

    goto :goto_1b

    .line 214
    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$3;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    :goto_1b
    return p1
.end method
