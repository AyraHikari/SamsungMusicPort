.class public Lcom/dawin/util/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/StringBuilder;

.field private d:Ljava/lang/StringBuilder;

.field private e:Z

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;

.field private k:Lcom/dawin/util/a$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/dawin/util/h;->f:Ljava/lang/Boolean;

    const-string v1, ""

    iput-object v1, p0, Lcom/dawin/util/h;->a:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/dawin/util/h;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/dawin/util/h;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/dawin/util/h;->h:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/dawin/util/h;->i:Ljava/lang/String;

    new-instance v1, Lcom/dawin/util/h$1;

    invoke-direct {v1, p0}, Lcom/dawin/util/h$1;-><init>(Lcom/dawin/util/h;)V

    iput-object v1, p0, Lcom/dawin/util/h;->k:Lcom/dawin/util/a$c;

    iput-object p1, p0, Lcom/dawin/util/h;->j:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dawin/util/h;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/dawin/util/h;->f:Ljava/lang/Boolean;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/dawin/util/h;->c:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/dawin/util/h;->e()V

    return-void
.end method

.method static synthetic a(Lcom/dawin/util/h;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/dawin/util/h;->f:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/dawin/util/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "sid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ud"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dawin/util/h;->c:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/dawin/util/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dawin/util/h;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/dawin/util/h;->c:Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/dawin/util/h;->c:Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/dawin/util/h;->d:Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dawin/util/h;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/dawin/util/h;->d:Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/dawin/util/h;->d:Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/util/h;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/util/h;->e:Z

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "&"

    return-object v0
.end method

.method private d()Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Lcom/dawin/util/h;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/dawin/util/f$a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/util/h;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/dawin/util/CommonUtils;->i(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private e()V
    .locals 3

    const-string v0, "os"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rel"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "w"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/dawin/util/h;->d()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/dawin/util/h;->d()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dp"

    iget-object v1, p0, Lcom/dawin/util/h;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/util/h;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/dawin/util/CommonUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/util/h;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/dawin/util/h;->k:Lcom/dawin/util/a$c;

    invoke-static {v0, v1}, Lcom/dawin/util/a;->a(Landroid/content/Context;Lcom/dawin/util/a$c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "http"

    :goto_0
    iput-object p1, p0, Lcom/dawin/util/h;->g:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/dawin/util/h;->h:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, "ss.dawin.tv"

    iput-object p1, p0, Lcom/dawin/util/h;->h:Ljava/lang/String;

    :goto_1
    iget-object p1, p0, Lcom/dawin/util/h;->i:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iput-object p3, p0, Lcom/dawin/util/h;->i:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string p1, "req"

    iput-object p1, p0, Lcom/dawin/util/h;->i:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/dawin/util/h;->d:Ljava/lang/StringBuilder;

    const-string v0, "sid"

    invoke-direct {p0, v0, p1}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ud"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "cat"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ag"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ge"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/dawin/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/dawin/util/h;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dawin/util/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/util/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/util/h;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/util/h;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/util/h;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
