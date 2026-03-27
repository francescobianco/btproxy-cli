.class abstract Lfreemarker/core/Interpolation;
.super Lfreemarker/core/TemplateElement;
.source "Interpolation.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract calculateInterpolatedStringOrMarkup(Lfreemarker/core/Environment;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method

.method protected final dump(Z)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, v0}, Lfreemarker/core/Interpolation;->dump(ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract dump(ZZ)Ljava/lang/String;
.end method

.method final getCanonicalFormInStringLiteral()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0, v0}, Lfreemarker/core/Interpolation;->dump(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isShownInStackTrace()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
