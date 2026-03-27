.class Lfreemarker/ext/jsp/FreeMarkerJspFactory2;
.super Lfreemarker/ext/jsp/FreeMarkerJspFactory;
.source "FreeMarkerJspFactory2.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lfreemarker/ext/jsp/FreeMarkerJspFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSpecificationVersion()Ljava/lang/String;
    .registers 2

    .line 27
    const-string v0, "2.0"

    return-object v0
.end method
