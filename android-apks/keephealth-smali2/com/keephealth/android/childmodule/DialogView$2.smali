.class Lcom/keephealth/android/childmodule/DialogView$2;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "DialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/DialogView;->initView()V
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

    .line 132
    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$2;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 135
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$2;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    return-void
.end method
