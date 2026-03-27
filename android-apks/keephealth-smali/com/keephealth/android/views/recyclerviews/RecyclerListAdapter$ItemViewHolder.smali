.class public Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerListAdapter.java"

# interfaces
.implements Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public final handleView:Landroid/widget/ImageView;

.field public final img_contact:Landroid/widget/ImageView;

.field public final tv_name:Landroid/widget/TextView;

.field public final tv_phone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 162
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090752

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->tv_name:Landroid/widget/TextView;

    const v0, 0x7f090766

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->tv_phone:Landroid/widget/TextView;

    const v0, 0x7f090229

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->img_contact:Landroid/widget/ImageView;

    const v0, 0x7f0901ac

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->handleView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public onItemClear()V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onItemSelected()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
