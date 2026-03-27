.class public Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "ShareLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/share/ShareLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field imgIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09020a
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/views/share/ShareLayoutAdapter;

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068d
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/share/ShareLayoutAdapter;Landroid/view/View;)V
    .registers 3

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;->this$0:Lcom/keephealth/android/views/share/ShareLayoutAdapter;

    .line 44
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
