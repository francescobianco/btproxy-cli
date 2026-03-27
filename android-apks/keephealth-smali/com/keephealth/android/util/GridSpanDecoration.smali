.class public Lcom/keephealth/android/util/GridSpanDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridSpanDecoration.java"


# instance fields
.field private headItemCount:I

.field private includeEdge:Z

.field private final margin:I

.field private final padding:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 53
    iput p1, p0, Lcom/keephealth/android/util/GridSpanDecoration;->padding:I

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/keephealth/android/util/GridSpanDecoration;->margin:I

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 5

    .line 57
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 58
    iput p1, p0, Lcom/keephealth/android/util/GridSpanDecoration;->padding:I

    .line 59
    iput p3, p0, Lcom/keephealth/android/util/GridSpanDecoration;->headItemCount:I

    .line 60
    iput-boolean p4, p0, Lcom/keephealth/android/util/GridSpanDecoration;->includeEdge:Z

    .line 61
    iput p2, p0, Lcom/keephealth/android/util/GridSpanDecoration;->margin:I

    return-void
.end method

.method private static isLayoutRTL(Landroidx/recyclerview/widget/RecyclerView;)Z
    .registers 2

    .line 108
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 67
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p4

    iget v0, p0, Lcom/keephealth/android/util/GridSpanDecoration;->headItemCount:I

    sub-int/2addr p4, v0

    if-eqz v0, :cond_f

    if-gez p4, :cond_f

    return-void

    .line 71
    :cond_f
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 72
    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 76
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    .line 77
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p2

    if-nez v0, :cond_32

    .line 81
    iget-boolean v1, p0, Lcom/keephealth/android/util/GridSpanDecoration;->includeEdge:Z

    if-eqz v1, :cond_38

    .line 82
    iget v1, p0, Lcom/keephealth/android/util/GridSpanDecoration;->margin:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_38

    .line 84
    :cond_32
    iget v1, p0, Lcom/keephealth/android/util/GridSpanDecoration;->padding:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    :cond_38
    :goto_38
    add-int/2addr v0, p2

    if-ne v0, p4, :cond_44

    .line 89
    iget-boolean p2, p0, Lcom/keephealth/android/util/GridSpanDecoration;->includeEdge:Z

    if-eqz p2, :cond_4a

    .line 90
    iget p2, p0, Lcom/keephealth/android/util/GridSpanDecoration;->margin:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4a

    .line 92
    :cond_44
    iget p2, p0, Lcom/keephealth/android/util/GridSpanDecoration;->padding:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 96
    :cond_4a
    :goto_4a
    iget p2, p0, Lcom/keephealth/android/util/GridSpanDecoration;->padding:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 97
    iget p2, p0, Lcom/keephealth/android/util/GridSpanDecoration;->padding:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 99
    invoke-static {p3}, Lcom/keephealth/android/util/GridSpanDecoration;->isLayoutRTL(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_64

    .line 100
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 101
    iget p3, p1, Landroid/graphics/Rect;->right:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 102
    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_64
    return-void
.end method
