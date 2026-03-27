.class Lcom/keephealth/android/base/BaseMvvmNewActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "BaseMvvmNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/base/BaseMvvmNewActivity;->toBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/base/BaseMvvmNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/base/BaseMvvmNewActivity;)V
    .registers 2

    .line 470
    iput-object p1, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity$1;->this$0:Lcom/keephealth/android/base/BaseMvvmNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 473
    iget-object p1, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity$1;->this$0:Lcom/keephealth/android/base/BaseMvvmNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->finish()V

    return-void
.end method
