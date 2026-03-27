.class public Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "TaskIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field task_icon_img_item:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905c3
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;Landroid/view/View;)V
    .registers 3

    .line 223
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    .line 224
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
