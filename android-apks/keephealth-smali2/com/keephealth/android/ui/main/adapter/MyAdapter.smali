.class public Lcom/keephealth/android/ui/main/adapter/MyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/main/adapter/MyAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/keephealth/android/ui/main/adapter/MyAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/MyAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/MyAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 16
    check-cast p1, Lcom/keephealth/android/ui/main/adapter/MyAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/main/adapter/MyAdapter;->onBindViewHolder(Lcom/keephealth/android/ui/main/adapter/MyAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/keephealth/android/ui/main/adapter/MyAdapter$MyViewHolder;I)V
    .registers 4

    .line 33
    iget-object p1, p1, Lcom/keephealth/android/ui/main/adapter/MyAdapter$MyViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/MyAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/main/adapter/MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/keephealth/android/ui/main/adapter/MyAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/keephealth/android/ui/main/adapter/MyAdapter$MyViewHolder;
    .registers 5

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0108

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 28
    new-instance p2, Lcom/keephealth/android/ui/main/adapter/MyAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/keephealth/android/ui/main/adapter/MyAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
