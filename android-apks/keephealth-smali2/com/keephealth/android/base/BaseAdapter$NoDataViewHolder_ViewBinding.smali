.class public Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "BaseAdapter$NoDataViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;Landroid/view/View;)V
    .registers 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder_ViewBinding;->target:Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;

    .line 24
    const-string v0, "field \'moduleBaseIdEmptyImg\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09040f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;->moduleBaseIdEmptyImg:Landroid/widget/ImageView;

    .line 25
    const-string v0, "field \'moduleBaseEmptyText\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09040d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;->moduleBaseEmptyText:Landroid/widget/TextView;

    .line 26
    const-string v0, "field \'llLoadNoDate\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0903c2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;->llLoadNoDate:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder_ViewBinding;->target:Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder_ViewBinding;->target:Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;

    .line 36
    iput-object v1, v0, Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;->moduleBaseIdEmptyImg:Landroid/widget/ImageView;

    .line 37
    iput-object v1, v0, Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;->moduleBaseEmptyText:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;->llLoadNoDate:Landroid/widget/LinearLayout;

    return-void

    .line 33
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
