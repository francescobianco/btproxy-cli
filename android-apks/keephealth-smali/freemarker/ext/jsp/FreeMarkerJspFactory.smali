.class abstract Lfreemarker/ext/jsp/FreeMarkerJspFactory;
.super Ljavax/servlet/jsp/JspFactory;
.source "FreeMarkerJspFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljavax/servlet/jsp/JspFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getEngineInfo()Ljavax/servlet/jsp/JspEngineInfo;
    .registers 2

    .line 36
    new-instance v0, Lfreemarker/ext/jsp/FreeMarkerJspFactory$1;

    invoke-direct {v0, p0}, Lfreemarker/ext/jsp/FreeMarkerJspFactory$1;-><init>(Lfreemarker/ext/jsp/FreeMarkerJspFactory;)V

    return-object v0
.end method

.method public getPageContext(Ljavax/servlet/Servlet;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;ZIZ)Ljavax/servlet/jsp/PageContext;
    .registers 8

    .line 52
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected abstract getSpecificationVersion()Ljava/lang/String;
.end method

.method public releasePageContext(Ljavax/servlet/jsp/PageContext;)V
    .registers 2

    .line 61
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
