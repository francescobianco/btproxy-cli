.class public Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ShareLayoutAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;Landroid/view/View;)V
    .registers 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;

    .line 23
    const-string v0, "field \'imgIcon\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09020a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    .line 24
    const-string v0, "field \'tvName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09068d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;

    .line 34
    iput-object v1, v0, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    .line 35
    iput-object v1, v0, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-void

    .line 31
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
