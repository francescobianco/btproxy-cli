.class Lcom/keephealth/android/util/DialogHelperNew$DismissListener;
.super Ljava/lang/Object;
.source "DialogHelperNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/DialogHelperNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DismissListener"
.end annotation


# instance fields
.field dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$DismissListener;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 172
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$DismissListener;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 173
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method
