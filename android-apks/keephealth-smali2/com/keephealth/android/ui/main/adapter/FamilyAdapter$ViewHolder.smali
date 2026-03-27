.class public Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "FamilyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field familyAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017e
    .end annotation
.end field

.field familyName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090180
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;

.field viewLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907ba
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;Landroid/view/View;)V
    .registers 3

    .line 51
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;

    .line 52
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
