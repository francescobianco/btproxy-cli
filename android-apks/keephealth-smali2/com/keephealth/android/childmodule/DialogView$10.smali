.class Lcom/keephealth/android/childmodule/DialogView$10;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "DialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/DialogView;->showMustNameDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/DialogView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/DialogView;)V
    .registers 2

    .line 300
    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$10;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 303
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$10;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    return-void
.end method
