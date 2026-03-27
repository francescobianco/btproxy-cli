.class public Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "BaseAdapter$NetErrorViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder;Landroid/view/View;)V
    .registers 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder_ViewBinding;->target:Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder;

    .line 22
    const-string v0, "field \'llNetError\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0903c3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder;->llNetError:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder_ViewBinding;->target:Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder_ViewBinding;->target:Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder;

    .line 32
    iput-object v1, v0, Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder;->llNetError:Landroid/widget/LinearLayout;

    return-void

    .line 29
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
