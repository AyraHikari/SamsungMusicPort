.class Lcom/dawin/objects/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/objects/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/objects/b;


# direct methods
.method constructor <init>(Lcom/dawin/objects/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/objects/b$2;->a:Lcom/dawin/objects/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dawin/objects/b$2;->a:Lcom/dawin/objects/b;

    invoke-static {v1}, Lcom/dawin/objects/b;->c(Lcom/dawin/objects/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/dawin/objects/b$2;->a:Lcom/dawin/objects/b;

    invoke-static {v1}, Lcom/dawin/objects/b;->c(Lcom/dawin/objects/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dawin/objects/b$2;->a:Lcom/dawin/objects/b;

    iget-object v2, v2, Lcom/dawin/objects/b;->b:Lcom/dawin/objects/a;

    iget-object v3, p0, Lcom/dawin/objects/b$2;->a:Lcom/dawin/objects/b;

    invoke-static {v3}, Lcom/dawin/objects/b;->d(Lcom/dawin/objects/b;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x64

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/dawin/objects/a;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
