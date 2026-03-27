.class Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$2;
.super Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLongClickListener;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$2;->this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-direct {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLongClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(IJ)Z
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$2;->this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    # getter for: Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onItemLongClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemLongClickListener;
    invoke-static {v0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->access$000(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;)Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$2;->this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    # getter for: Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onItemLongClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemLongClickListener;
    invoke-static {v0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->access$000(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;)Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemLongClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemLongClickListener;->onLongClick(IJ)V

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method
