.class public final synthetic Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda28;->f$0:Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda28;->f$0:Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;

    invoke-static {v0, p1, p2}, Lcom/keephealth/android/util/DialogHelperNew;->lambda$showSportLowTipDialog$4(Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
