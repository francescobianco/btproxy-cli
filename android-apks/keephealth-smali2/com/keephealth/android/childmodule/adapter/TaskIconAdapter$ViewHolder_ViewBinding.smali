.class public Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "TaskIconAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;Landroid/view/View;)V
    .registers 6

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;

    .line 21
    const-string v0, "field \'task_icon_img_item\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0905c3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;

    .line 31
    iput-object v1, v0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    return-void

    .line 28
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
