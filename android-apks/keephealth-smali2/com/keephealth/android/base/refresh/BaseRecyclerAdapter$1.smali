.class Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$1;
.super Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnClickListener;
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

    .line 83
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$1;->this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-direct {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(IJ)V
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$1;->this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    iget-object v0, v0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onItemClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;

    if-eqz v0, :cond_d

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$1;->this$0:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    iget-object v0, v0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onItemClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;->onItemClick(IJ)V

    :cond_d
    return-void
.end method
