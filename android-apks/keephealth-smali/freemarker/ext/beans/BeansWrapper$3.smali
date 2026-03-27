.class Lfreemarker/ext/beans/BeansWrapper$3;
.super Ljava/lang/Object;
.source "BeansWrapper.java"

# interfaces
.implements Lfreemarker/ext/util/ModelFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/BeansWrapper;
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

    .line 952
    iput-object p1, p0, Lfreemarker/ext/beans/BeansWrapper$3;->this$0:Lfreemarker/ext/beans/BeansWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;
    .registers 3

    .line 954
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lfreemarker/ext/beans/BeansWrapper$3;->this$0:Lfreemarker/ext/beans/BeansWrapper;

    # getter for: Lfreemarker/ext/beans/BeansWrapper;->trueModel:Lfreemarker/ext/beans/BooleanModel;
    invoke-static {p1}, Lfreemarker/ext/beans/BeansWrapper;->access$000(Lfreemarker/ext/beans/BeansWrapper;)Lfreemarker/ext/beans/BooleanModel;

    move-result-object p1

    goto :goto_15

    :cond_f
    iget-object p1, p0, Lfreemarker/ext/beans/BeansWrapper$3;->this$0:Lfreemarker/ext/beans/BeansWrapper;

    # getter for: Lfreemarker/ext/beans/BeansWrapper;->falseModel:Lfreemarker/ext/beans/BooleanModel;
    invoke-static {p1}, Lfreemarker/ext/beans/BeansWrapper;->access$100(Lfreemarker/ext/beans/BeansWrapper;)Lfreemarker/ext/beans/BooleanModel;

    move-result-object p1

    :goto_15
    return-object p1
.end method
