.class public final synthetic Lcom/keephealth/android/childmodule/DialogView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/keephealth/android/views/wheel/OnWheelChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/childmodule/DialogView;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/childmodule/DialogView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/childmodule/DialogView;

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/keephealth/android/views/wheel/WheelView;II)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/childmodule/DialogView$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/keephealth/android/childmodule/DialogView;->lambda$showTimeDialog$1$com-keephealth-android-childmodule-DialogView(Lcom/keephealth/android/views/wheel/WheelView;II)V

    return-void
.end method
