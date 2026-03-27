.class Lcom/keephealth/android/childmodule/DialogView$1;
.super Ljava/lang/Object;
.source "DialogView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemClickListener;


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

    .line 125
    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$1;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/childmodule/DialogView$1;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/DialogView;->onItemClick:Lcom/keephealth/android/childmodule/DialogView$OnItemClick;

    invoke-interface {v0, p2, p3, p1}, Lcom/keephealth/android/childmodule/DialogView$OnItemClick;->onClickItem(Landroid/view/View;ILcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 129
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$1;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    return-void
.end method
