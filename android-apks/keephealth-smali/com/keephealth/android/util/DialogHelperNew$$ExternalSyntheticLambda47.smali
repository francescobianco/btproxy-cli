.class public final synthetic Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener2;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/keephealth/android/views/wheel/NewWheelView2;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Lcom/keephealth/android/views/wheel/NewWheelView2;


# direct methods
.method public synthetic constructor <init>(IILcom/keephealth/android/views/wheel/NewWheelView2;ILjava/util/List;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView2;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$0:I

    iput p2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$1:I

    iput-object p3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$2:Lcom/keephealth/android/views/wheel/NewWheelView2;

    iput p4, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$3:I

    iput-object p5, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$4:Ljava/util/List;

    iput-object p6, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$5:Ljava/util/List;

    iput-object p7, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$6:Lcom/keephealth/android/views/wheel/NewWheelView2;

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/keephealth/android/views/wheel/NewWheelView2;II)V
    .registers 14

    .line 0
    iget v0, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$0:I

    iget v1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$1:I

    iget-object v2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$2:Lcom/keephealth/android/views/wheel/NewWheelView2;

    iget v3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$3:I

    iget-object v4, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$4:Ljava/util/List;

    iget-object v5, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$5:Ljava/util/List;

    iget-object v6, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;->f$6:Lcom/keephealth/android/views/wheel/NewWheelView2;

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/keephealth/android/util/DialogHelperNew;->lambda$initTimePickerNew$19(IILcom/keephealth/android/views/wheel/NewWheelView2;ILjava/util/List;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;II)V

    return-void
.end method
