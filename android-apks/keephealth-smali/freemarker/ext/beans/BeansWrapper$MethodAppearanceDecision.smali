.class public final Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;
.super Ljava/lang/Object;
.source "BeansWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/BeansWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodAppearanceDecision"
.end annotation


# instance fields
.field private exposeAsProperty:Ljava/beans/PropertyDescriptor;

.field private exposeMethodAs:Ljava/lang/String;

.field private methodShadowsProperty:Z

.field private replaceExistingProperty:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExposeAsProperty()Ljava/beans/PropertyDescriptor;
    .registers 2

    .line 1801
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->exposeAsProperty:Ljava/beans/PropertyDescriptor;

    return-object v0
.end method

.method public getExposeMethodAs()Ljava/lang/String;
    .registers 2

    .line 1842
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->exposeMethodAs:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodShadowsProperty()Z
    .registers 2

    .line 1856
    iget-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->methodShadowsProperty:Z

    return v0
.end method

.method public getReplaceExistingProperty()Z
    .registers 2

    .line 1819
    iget-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->replaceExistingProperty:Z

    return v0
.end method

.method setDefaults(Ljava/lang/reflect/Method;)V
    .registers 3

    const/4 v0, 0x0

    .line 1791
    iput-object v0, p0, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->exposeAsProperty:Ljava/beans/PropertyDescriptor;

    const/4 v0, 0x0

    .line 1792
    iput-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->replaceExistingProperty:Z

    .line 1793
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->exposeMethodAs:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1794
    iput-boolean p1, p0, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->methodShadowsProperty:Z

    return-void
.end method

.method public setExposeAsProperty(Ljava/beans/PropertyDescriptor;)V
    .registers 2

    .line 1810
    iput-object p1, p0, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->exposeAsProperty:Ljava/beans/PropertyDescriptor;

    return-void
.end method

.method public setExposeMethodAs(Ljava/lang/String;)V
    .registers 2

    .line 1849
    iput-object p1, p0, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->exposeMethodAs:Ljava/lang/String;

    return-void
.end method

.method public setMethodShadowsProperty(Z)V
    .registers 2

    .line 1863
    iput-boolean p1, p0, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->methodShadowsProperty:Z

    return-void
.end method

.method public setReplaceExistingProperty(Z)V
    .registers 2

    .line 1835
    iput-boolean p1, p0, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->replaceExistingProperty:Z

    return-void
.end method
