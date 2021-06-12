.class Lorg/simpleframework/xml/core/DetailScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/core/Detail;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/MethodDetail;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/FieldDetail;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lorg/simpleframework/xml/NamespaceList;

.field private d:Lorg/simpleframework/xml/Namespace;

.field private e:[Ljava/lang/annotation/Annotation;

.field private f:Lorg/simpleframework/xml/DefaultType;

.field private g:Lorg/simpleframework/xml/DefaultType;

.field private h:Lorg/simpleframework/xml/Order;

.field private i:Lorg/simpleframework/xml/Root;

.field private j:Ljava/lang/Class;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->a:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->b:Ljava/util/List;

    .line 136
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->e:[Ljava/lang/annotation/Annotation;

    .line 137
    iput-object p2, p0, Lorg/simpleframework/xml/core/DetailScanner;->f:Lorg/simpleframework/xml/DefaultType;

    const/4 p2, 0x1

    .line 138
    iput-boolean p2, p0, Lorg/simpleframework/xml/core/DetailScanner;->m:Z

    .line 139
    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->j:Ljava/lang/Class;

    .line 140
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/DetailScanner;->a(Ljava/lang/Class;)V

    return-void
.end method

.method private a(Ljava/lang/Class;)V
    .locals 0

    .line 366
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/DetailScanner;->c(Ljava/lang/Class;)V

    .line 367
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/DetailScanner;->d(Ljava/lang/Class;)V

    .line 368
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/DetailScanner;->b(Ljava/lang/Class;)V

    return-void
.end method

.method private a(Ljava/lang/annotation/Annotation;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 442
    check-cast p1, Lorg/simpleframework/xml/Root;

    .line 443
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->j:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 447
    invoke-interface {p1}, Lorg/simpleframework/xml/Root;->a()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/DetailScanner;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/Root;->b()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->m:Z

    .line 453
    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->i:Lorg/simpleframework/xml/Root;

    .line 454
    iput-object v1, p0, Lorg/simpleframework/xml/core/DetailScanner;->k:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 0

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/Class;)V
    .locals 4

    .line 380
    iget-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->e:[Ljava/lang/annotation/Annotation;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 381
    instance-of v3, v2, Lorg/simpleframework/xml/Namespace;

    if-eqz v3, :cond_0

    .line 382
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/DetailScanner;->d(Ljava/lang/annotation/Annotation;)V

    .line 384
    :cond_0
    instance-of v3, v2, Lorg/simpleframework/xml/NamespaceList;

    if-eqz v3, :cond_1

    .line 385
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/DetailScanner;->e(Ljava/lang/annotation/Annotation;)V

    .line 387
    :cond_1
    instance-of v3, v2, Lorg/simpleframework/xml/Root;

    if-eqz v3, :cond_2

    .line 388
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/DetailScanner;->a(Ljava/lang/annotation/Annotation;)V

    .line 390
    :cond_2
    instance-of v3, v2, Lorg/simpleframework/xml/Order;

    if-eqz v3, :cond_3

    .line 391
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/DetailScanner;->b(Ljava/lang/annotation/Annotation;)V

    .line 393
    :cond_3
    instance-of v3, v2, Lorg/simpleframework/xml/Default;

    if-eqz v3, :cond_4

    .line 394
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/DetailScanner;->c(Ljava/lang/annotation/Annotation;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private b(Ljava/lang/annotation/Annotation;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 482
    check-cast p1, Lorg/simpleframework/xml/Order;

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->h:Lorg/simpleframework/xml/Order;

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Class;)V
    .locals 4

    .line 408
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 410
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 411
    new-instance v3, Lorg/simpleframework/xml/core/MethodDetail;

    invoke-direct {v3, v2}, Lorg/simpleframework/xml/core/MethodDetail;-><init>(Ljava/lang/reflect/Method;)V

    .line 412
    iget-object v2, p0, Lorg/simpleframework/xml/core/DetailScanner;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/annotation/Annotation;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 495
    check-cast p1, Lorg/simpleframework/xml/Default;

    .line 497
    invoke-interface {p1}, Lorg/simpleframework/xml/Default;->b()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->l:Z

    .line 498
    invoke-interface {p1}, Lorg/simpleframework/xml/Default;->a()Lorg/simpleframework/xml/DefaultType;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->g:Lorg/simpleframework/xml/DefaultType;

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Class;)V
    .locals 4

    .line 425
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 427
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 428
    new-instance v3, Lorg/simpleframework/xml/core/FieldDetail;

    invoke-direct {v3, v2}, Lorg/simpleframework/xml/core/FieldDetail;-><init>(Ljava/lang/reflect/Field;)V

    .line 429
    iget-object v2, p0, Lorg/simpleframework/xml/core/DetailScanner;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/annotation/Annotation;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 512
    check-cast p1, Lorg/simpleframework/xml/Namespace;

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->d:Lorg/simpleframework/xml/Namespace;

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/annotation/Annotation;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 526
    check-cast p1, Lorg/simpleframework/xml/NamespaceList;

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->c:Lorg/simpleframework/xml/NamespaceList;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->l:Z

    return v0
.end method

.method public b()Ljava/lang/Class;
    .locals 2

    .line 349
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->j:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 351
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public c()Lorg/simpleframework/xml/DefaultType;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->f:Lorg/simpleframework/xml/DefaultType;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->f:Lorg/simpleframework/xml/DefaultType;

    return-object v0

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->g:Lorg/simpleframework/xml/DefaultType;

    return-object v0
.end method

.method public d()Lorg/simpleframework/xml/DefaultType;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->f:Lorg/simpleframework/xml/DefaultType;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/MethodDetail;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->a:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/FieldDetail;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->b:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->j:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
