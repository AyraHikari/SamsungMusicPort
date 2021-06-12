.class Lcom/dawin/objects/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/util/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/objects/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/objects/a;


# direct methods
.method constructor <init>(Lcom/dawin/objects/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBitmap Text Image onBitmapDownloadFinished : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/dawin/objects/a;->a(Lcom/dawin/objects/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v0}, Lcom/dawin/objects/a;->d(Lcom/dawin/objects/a;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v2}, Lcom/dawin/objects/a;->a(Lcom/dawin/objects/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v3}, Lcom/dawin/objects/a;->b(Lcom/dawin/objects/a;)I

    move-result v3

    mul-int v3, v3, p1

    iget-object v4, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v4}, Lcom/dawin/objects/a;->b(Lcom/dawin/objects/a;)I

    move-result v4

    iget-object v5, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v5}, Lcom/dawin/objects/a;->c(Lcom/dawin/objects/a;)I

    move-result v5

    invoke-static {v2, v3, v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    iget-object v0, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v0}, Lcom/dawin/objects/a;->a(Lcom/dawin/objects/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v2}, Lcom/dawin/objects/a;->c(Lcom/dawin/objects/a;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v3}, Lcom/dawin/objects/a;->e(Lcom/dawin/objects/a;)I

    move-result v3

    iget-object v4, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v4}, Lcom/dawin/objects/a;->c(Lcom/dawin/objects/a;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dawin/objects/a;->b(Lcom/dawin/objects/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    iget-object v0, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v0}, Lcom/dawin/objects/a;->a(Lcom/dawin/objects/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v2}, Lcom/dawin/objects/a;->c(Lcom/dawin/objects/a;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v3}, Lcom/dawin/objects/a;->f(Lcom/dawin/objects/a;)I

    move-result v3

    iget-object v4, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v4}, Lcom/dawin/objects/a;->c(Lcom/dawin/objects/a;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dawin/objects/a;->c(Lcom/dawin/objects/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    :try_start_3
    iget-object p1, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    iget-object v0, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v0}, Lcom/dawin/objects/a;->a(Lcom/dawin/objects/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v2}, Lcom/dawin/objects/a;->c(Lcom/dawin/objects/a;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v3}, Lcom/dawin/objects/a;->g(Lcom/dawin/objects/a;)I

    move-result v3

    iget-object v4, p0, Lcom/dawin/objects/a$1;->a:Lcom/dawin/objects/a;

    invoke-static {v4}, Lcom/dawin/objects/a;->c(Lcom/dawin/objects/a;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dawin/objects/a;->d(Lcom/dawin/objects/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_4
    return-void
.end method
