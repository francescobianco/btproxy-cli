.class public Lcom/keephealth/android/views/recyclerviews/helper/SimpleItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SimpleItemTouchHelperCallback.java"


# static fields
.field public static final ALPHA_FULL:F = 1.0f


# instance fields
.field private final mAdapter:Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperAdapter;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperAdapter;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/helper/SimpleItemTouchHelperCallback;->mAdapter:Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperAdapter;

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 87
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 90
    check-cast p2, Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperViewHolder;

    .line 91
    invoke-interface {p2}, Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperViewHolder;->onItemClear()V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 3

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 40
    invoke-static {p1, p2}, Lcom/keephealth/android/views/recyclerviews/helper/SimpleItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 8

    .line 62
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    const/4 p1, 0x1

    if-ne p1, p6, :cond_18

    .line 66
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 67
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    .line 68
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    :cond_18
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 5

    .line 45
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq p1, v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_c
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/helper/SimpleItemTouchHelperCallback;->mAdapter:Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperAdapter;->onItemMove(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4

    if-eqz p2, :cond_8

    .line 76
    move-object v0, p1

    check-cast v0, Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperViewHolder;

    .line 77
    invoke-interface {v0}, Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperViewHolder;->onItemSelected()V

    .line 80
    :cond_8
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 57
    iget-object p2, p0, Lcom/keephealth/android/views/recyclerviews/helper/SimpleItemTouchHelperCallback;->mAdapter:Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperAdapter;->onItemDismiss(I)V

    return-void
.end method
