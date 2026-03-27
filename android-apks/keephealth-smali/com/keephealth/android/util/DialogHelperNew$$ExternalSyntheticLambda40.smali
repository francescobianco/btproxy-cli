.class public final synthetic Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(ILandroid/app/Activity;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda40;->f$0:I

    iput-object p2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda40;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget v0, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda40;->f$0:I

    iget-object v1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda40;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/keephealth/android/util/DialogHelperNew;->lambda$showUpdateVersion$36(ILandroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
