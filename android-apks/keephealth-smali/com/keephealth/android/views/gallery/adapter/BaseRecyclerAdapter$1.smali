.class Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$1;
.super Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnClickListener;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$1;->this$0:Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;

    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(IJ)V
    .registers 5

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$1;->this$0:Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;

    # getter for: Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->onItemClickListener:Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->access$000(Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;)Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$1;->this$0:Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;

    # getter for: Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->onItemClickListener:Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->access$000(Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;)Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;->onItemClick(IJ)V

    :cond_11
    return-void
.end method
