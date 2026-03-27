.class Lfreemarker/ext/jsp/JspContextModel;
.super Ljava/lang/Object;
.source "JspContextModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# static fields
.field public static final ANY_SCOPE:I = -0x1

.field public static final APPLICATION_SCOPE:I = 0x4

.field public static final PAGE_SCOPE:I = 0x1

.field public static final REQUEST_SCOPE:I = 0x2

.field public static final SESSION_SCOPE:I = 0x3


# instance fields
.field private final pageContext:Ljavax/servlet/jsp/PageContext;

.field private final scope:I


# direct methods
.method public constructor <init>(Ljavax/servlet/jsp/PageContext;I)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lfreemarker/ext/jsp/JspContextModel;->pageContext:Ljavax/servlet/jsp/PageContext;

    .line 43
    iput p2, p0, Lfreemarker/ext/jsp/JspContextModel;->scope:I

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 47
    iget v0, p0, Lfreemarker/ext/jsp/JspContextModel;->scope:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lfreemarker/ext/jsp/JspContextModel;->pageContext:Ljavax/servlet/jsp/PageContext;

    invoke-virtual {v0, p1}, Ljavax/servlet/jsp/PageContext;->findAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_12

    :cond_c
    iget-object v1, p0, Lfreemarker/ext/jsp/JspContextModel;->pageContext:Ljavax/servlet/jsp/PageContext;

    invoke-virtual {v1, p1, v0}, Ljavax/servlet/jsp/PageContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    .line 48
    :goto_12
    invoke-static {}, Lfreemarker/ext/beans/BeansWrapper;->getDefaultInstance()Lfreemarker/ext/beans/BeansWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
