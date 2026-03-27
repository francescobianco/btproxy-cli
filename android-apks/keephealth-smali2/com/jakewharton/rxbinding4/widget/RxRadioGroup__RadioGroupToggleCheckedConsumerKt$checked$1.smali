.class final Lcom/jakewharton/rxbinding4/widget/RxRadioGroup__RadioGroupToggleCheckedConsumerKt$checked$1;
.super Ljava/lang/Object;
.source "RadioGroupToggleCheckedConsumer.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding4/widget/RxRadioGroup__RadioGroupToggleCheckedConsumerKt;->checked(Landroid/widget/RadioGroup;)Lio/reactivex/rxjava3/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "value",
        "",
        "kotlin.jvm.PlatformType",
        "accept",
        "(Ljava/lang/Integer;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $this_checked:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Landroid/widget/RadioGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/RxRadioGroup__RadioGroupToggleCheckedConsumerKt$checked$1;->$this_checked:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Integer;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_10

    .line 20
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 21
    iget-object p1, p0, Lcom/jakewharton/rxbinding4/widget/RxRadioGroup__RadioGroupToggleCheckedConsumerKt$checked$1;->$this_checked:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    goto :goto_1e

    .line 23
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/RxRadioGroup__RadioGroupToggleCheckedConsumerKt$checked$1;->$this_checked:Landroid/widget/RadioGroup;

    if-nez p1, :cond_17

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    :goto_1e
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding4/widget/RxRadioGroup__RadioGroupToggleCheckedConsumerKt$checked$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
