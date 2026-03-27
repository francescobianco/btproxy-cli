.class public Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$NetErrorViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "BaseDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetErrorViewHolder"
.end annotation


# instance fields
.field llNetError:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c3
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 235
    invoke-direct {p0, p1}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$NetErrorViewHolder;->llNetError:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
