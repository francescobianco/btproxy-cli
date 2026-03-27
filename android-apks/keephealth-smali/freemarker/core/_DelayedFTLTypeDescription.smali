.class public Lfreemarker/core/_DelayedFTLTypeDescription;
.super Lfreemarker/core/_DelayedConversionToString;
.source "_DelayedFTLTypeDescription.java"


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModel;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lfreemarker/core/_DelayedConversionToString;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doConversion(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 34
    check-cast p1, Lfreemarker/template/TemplateModel;

    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->getFTLTypeDescription(Lfreemarker/template/TemplateModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
