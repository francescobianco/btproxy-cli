.class final Lfreemarker/ext/beans/_MethodUtil$1;
.super Lfreemarker/core/_DelayedConversionToString;
.source "_MethodUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/beans/_MethodUtil;->newInvocationTemplateModelException(Ljava/lang/Object;Lfreemarker/ext/beans/CallableMemberDescriptor;Ljava/lang/Throwable;)Lfreemarker/template/TemplateModelException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 263
    invoke-direct {p0, p1}, Lfreemarker/core/_DelayedConversionToString;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doConversion(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 266
    check-cast p1, Lfreemarker/ext/beans/CallableMemberDescriptor;

    invoke-virtual {p1}, Lfreemarker/ext/beans/CallableMemberDescriptor;->getDeclaration()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
