.class public final synthetic Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/widget/ImageView;

.field public final synthetic f$3:Landroid/widget/TextView;

.field public final synthetic f$4:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Ljava/util/List;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;->f$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;->f$2:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;->f$3:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;->f$4:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;->f$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;->f$2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;->f$3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;->f$4:Landroid/widget/TextView;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lambda$showMedalDialog$51$com-keephealth-android-ui-main-fragment-MainFragmentNew(Ljava/util/List;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
