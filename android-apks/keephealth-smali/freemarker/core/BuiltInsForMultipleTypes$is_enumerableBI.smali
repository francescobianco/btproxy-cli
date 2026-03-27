.class Lfreemarker/core/BuiltInsForMultipleTypes$is_enumerableBI;
.super Lfreemarker/core/BuiltIn;
.source "BuiltInsForMultipleTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForMultipleTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "is_enumerableBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 345
    invoke-direct {p0}, Lfreemarker/core/BuiltIn;-><init>()V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$is_enumerableBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$is_enumerableBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/Expression;->assertNonNull(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    .line 350
    instance-of p1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-nez p1, :cond_13

    instance-of p1, v0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz p1, :cond_24

    .line 351
    :cond_13
    invoke-static {p0}, Lfreemarker/template/_TemplateAPI;->getTemplateLanguageVersionAsInt(Lfreemarker/core/TemplateObject;)I

    move-result p1

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    if-lt p1, v1, :cond_27

    instance-of p1, v0, Lfreemarker/ext/beans/SimpleMethodModel;

    if-nez p1, :cond_24

    instance-of p1, v0, Lfreemarker/ext/beans/OverloadedMethodsModel;

    if-nez p1, :cond_24

    goto :goto_27

    :cond_24
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_29

    :cond_27
    :goto_27
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    :goto_29
    return-object p1
.end method
