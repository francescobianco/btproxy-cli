.class Lfreemarker/ext/beans/BeansWrapper$2;
.super Ljava/lang/Object;
.source "BeansWrapper.java"

# interfaces
.implements Lfreemarker/ext/beans/MethodAppearanceFineTuner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/beans/BeansWrapper;-><init>(Lfreemarker/ext/beans/BeansWrapperConfiguration;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/beans/BeansWrapper;


# direct methods
.method constructor <init>(Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lfreemarker/ext/beans/BeansWrapper$2;->this$0:Lfreemarker/ext/beans/BeansWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecisionInput;Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;)V
    .registers 5

    .line 333
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper$2;->this$0:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {p1}, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecisionInput;->getContainingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecisionInput;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lfreemarker/ext/beans/BeansWrapper;->finetuneMethodAppearance(Ljava/lang/Class;Ljava/lang/reflect/Method;Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;)V

    return-void
.end method
