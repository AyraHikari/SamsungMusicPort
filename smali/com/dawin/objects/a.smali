.class public Lcom/dawin/objects/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    iput v0, p0, Lcom/dawin/objects/a;->g:I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/dawin/objects/a;->h:I

    const/16 v0, 0x34

    iput v0, p0, Lcom/dawin/objects/a;->i:I

    const/16 v0, 0x6a

    iput v0, p0, Lcom/dawin/objects/a;->j:I

    const/16 v0, 0x60

    iput v0, p0, Lcom/dawin/objects/a;->k:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/dawin/objects/a;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dawin/objects/a;->b:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dawin/objects/a;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/dawin/objects/a;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/dawin/objects/a;->e:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/dawin/objects/a;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/dawin/objects/a;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/dawin/objects/a;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic a(Lcom/dawin/objects/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/dawin/objects/a;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/dawin/objects/a;->h:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/dawin/objects/a;->g:I

    mul-int v5, v5, v0

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method static synthetic b(Lcom/dawin/objects/a;)I
    .locals 0

    iget p0, p0, Lcom/dawin/objects/a;->g:I

    return p0
.end method

.method static synthetic b(Lcom/dawin/objects/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/dawin/objects/a;->d:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic c(Lcom/dawin/objects/a;)I
    .locals 0

    iget p0, p0, Lcom/dawin/objects/a;->h:I

    return p0
.end method

.method static synthetic c(Lcom/dawin/objects/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/dawin/objects/a;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic d(Lcom/dawin/objects/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/dawin/objects/a;->f:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic d(Lcom/dawin/objects/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/dawin/objects/a;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/dawin/objects/a;)I
    .locals 0

    iget p0, p0, Lcom/dawin/objects/a;->i:I

    return p0
.end method

.method static synthetic f(Lcom/dawin/objects/a;)I
    .locals 0

    iget p0, p0, Lcom/dawin/objects/a;->j:I

    return p0
.end method

.method static synthetic g(Lcom/dawin/objects/a;)I
    .locals 0

    iget p0, p0, Lcom/dawin/objects/a;->k:I

    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/dawin/objects/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/dawin/objects/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/dawin/objects/a;->g:I

    iget v5, p0, Lcom/dawin/objects/a;->h:I

    invoke-static {v2, v0, v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_4

    invoke-direct {p0, p2}, Lcom/dawin/objects/a;->a(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_2
    move-object v1, p2

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_3

    :cond_1
    const/16 p3, 0x64

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/dawin/objects/a;->d:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lcom/dawin/objects/a;->e:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_3
    const/16 p3, 0x3e9

    if-ne p2, p3, :cond_4

    iget-object p2, p0, Lcom/dawin/objects/a;->f:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p2, p2

    mul-float p2, p2, p1

    iget v0, p0, Lcom/dawin/objects/a;->l:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p3, p3

    mul-float p3, p3, p1

    iget p1, p0, Lcom/dawin/objects/a;->l:I

    int-to-float p1, p1

    div-float/2addr p3, p1

    float-to-int p1, p3

    const/4 p3, 0x1

    invoke-static {v1, p2, p1, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/dawin/util/c;

    invoke-direct {v0, p1}, Lcom/dawin/util/c;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/dawin/objects/a$1;

    invoke-direct {p1, p0}, Lcom/dawin/objects/a$1;-><init>(Lcom/dawin/objects/a;)V

    invoke-virtual {v0, p1}, Lcom/dawin/util/c;->a(Lcom/dawin/util/c$a;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/dawin/objects/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lcom/dawin/util/c;->a(Ljava/util/ArrayList;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dawin/objects/a;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/dawin/objects/a;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/dawin/objects/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/objects/a;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
