.class public Lfreemarker/core/_DelayedGetCanonicalForm;
.super Lfreemarker/core/_DelayedConversionToString;
.source "_DelayedGetCanonicalForm.java"


# direct methods
.method public constructor <init>(Lfreemarker/core/TemplateObject;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lfreemarker/core/_DelayedConversionToString;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doConversion(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 33
    :try_start_0
    check-cast p1, Lfreemarker/core/TemplateObject;

    invoke-virtual {p1}, Lfreemarker/core/TemplateObject;->getCanonicalForm()Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 35
    :catch_7
    const-string p1, "{Error getting canonical form}"

    return-object p1
.end method
