.class public final synthetic Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View$OnClickListener;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda33;->f$0:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda33;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda33;->f$0:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda33;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/keephealth/android/util/DialogHelperNew;->lambda$showRemindDialog$22(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
