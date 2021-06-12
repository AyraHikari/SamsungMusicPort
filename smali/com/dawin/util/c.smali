.class public Lcom/dawin/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/util/d$a;
.implements Lcom/dawin/util/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/util/c$a;,
        Lcom/dawin/util/c$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/dawin/util/c$b;

.field private d:Lcom/dawin/util/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dawin/util/c;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/dawin/util/c;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/dawin/util/c;->a:Landroid/content/Context;

    const-string v0, "cache_path_new"

    invoke-static {p1, v0}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/dawin/util/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/icon/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dawin/util/c;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/dawin/util/c;->a:Landroid/content/Context;

    const-string v0, "cache_path_new"

    iget-object v1, p0, Lcom/dawin/util/c;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/dawin/util/c;->a:Landroid/content/Context;

    const-string v0, "cache_path_new"

    invoke-static {p1, v0}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dawin/util/c;->b:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/dawin/util/c;->a()V

    return-void
.end method

.method static synthetic a(Lcom/dawin/util/c;)Lcom/dawin/util/c$a;
    .locals 0

    iget-object p0, p0, Lcom/dawin/util/c;->d:Lcom/dawin/util/c$a;

    return-object p0
.end method

.method private a()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dawin/util/c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folder do not exist, folder path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/util/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folder exist, folder path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Lcom/dawin/util/d;

    iget-object v1, p0, Lcom/dawin/util/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/dawin/util/d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance p1, Lcom/dawin/util/c$1;

    invoke-direct {p1, p0}, Lcom/dawin/util/c$1;-><init>(Lcom/dawin/util/c;)V

    invoke-virtual {v0, p1}, Lcom/dawin/util/d;->a(Lcom/dawin/util/d$a;)V

    invoke-virtual {v0}, Lcom/dawin/util/d;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/dawin/util/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/util/c;->d:Lcom/dawin/util/c$a;

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/dawin/util/c;->c:Lcom/dawin/util/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/util/c;->c:Lcom/dawin/util/c$b;

    invoke-interface {v0, p1, p2}, Lcom/dawin/util/c$b;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/util/c;->d:Lcom/dawin/util/c$a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/util/c;->d:Lcom/dawin/util/c$a;

    invoke-interface {p1, p2}, Lcom/dawin/util/c$a;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dawin/util/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dawin/util/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p2, :cond_1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return v2

    :cond_2
    new-instance v2, Lcom/dawin/util/d;

    iget-object v3, p0, Lcom/dawin/util/c;->b:Ljava/lang/String;

    invoke-direct {v2, p1, v1, v3}, Lcom/dawin/util/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Lcom/dawin/util/d;->a(Landroid/widget/ImageButton;Z)V

    :cond_3
    :goto_0
    return v0
.end method
