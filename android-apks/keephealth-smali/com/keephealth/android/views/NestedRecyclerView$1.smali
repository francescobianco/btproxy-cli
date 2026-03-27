.class Lcom/keephealth/android/views/NestedRecyclerView$1;
.super Ljava/lang/Object;
.source "NestedRecyclerView.java"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/NestedRecyclerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/NestedRecyclerView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/NestedRecyclerView;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/keephealth/android/views/NestedRecyclerView$1;->this$0:Lcom/keephealth/android/views/NestedRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V
    .registers 6

    .line 29
    iget-object p1, p0, Lcom/keephealth/android/views/NestedRecyclerView$1;->this$0:Lcom/keephealth/android/views/NestedRecyclerView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/NestedRecyclerView;->stopScroll()V

    return-void
.end method
