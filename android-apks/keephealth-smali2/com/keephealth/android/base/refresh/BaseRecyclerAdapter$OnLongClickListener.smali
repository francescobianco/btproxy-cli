.class public abstract Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLongClickListener;
.super Ljava/lang/Object;
.source "BaseRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnLongClickListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onLongClick(IJ)Z
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 455
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLongClickListener;->onLongClick(IJ)Z

    move-result p1

    return p1
.end method
