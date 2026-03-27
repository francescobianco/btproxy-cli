.class public Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FooterViewHolder"
.end annotation


# instance fields
.field layout_foot:Landroid/widget/RelativeLayout;

.field llNetError:Landroid/widget/LinearLayout;

.field llNoDate:Landroid/widget/LinearLayout;

.field noDataImg:Landroid/widget/ImageView;

.field noDateText:Landroid/widget/TextView;

.field noDateTextLitter:Landroid/widget/TextView;

.field pb_footer:Landroid/widget/ProgressBar;

.field tv_footer:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 508
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090460

    .line 509
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->pb_footer:Landroid/widget/ProgressBar;

    const v0, 0x7f09073d

    .line 510
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->tv_footer:Landroid/widget/TextView;

    const v0, 0x7f0903c2

    .line 511
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->llNoDate:Landroid/widget/LinearLayout;

    const v0, 0x7f09040f

    .line 512
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->noDataImg:Landroid/widget/ImageView;

    const v0, 0x7f09040d

    .line 513
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->noDateText:Landroid/widget/TextView;

    const v0, 0x7f09040e

    .line 514
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->noDateTextLitter:Landroid/widget/TextView;

    const v0, 0x7f0903c3

    .line 515
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->llNetError:Landroid/widget/LinearLayout;

    const v0, 0x7f090323

    .line 516
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->layout_foot:Landroid/widget/RelativeLayout;

    return-void
.end method
