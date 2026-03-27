.class public Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;Landroid/view/View;)V
    .registers 3

    .line 521
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$HeaderViewHolder;->this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    .line 522
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
