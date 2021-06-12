.class Lcom/dawin/objects/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/objects/b;->setSkipDescriptionTime(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dawin/objects/b;


# direct methods
.method constructor <init>(Lcom/dawin/objects/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/objects/b$5;->b:Lcom/dawin/objects/b;

    iput-object p2, p0, Lcom/dawin/objects/b$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/dawin/objects/b$5;->b:Lcom/dawin/objects/b;

    invoke-static {v0}, Lcom/dawin/objects/b;->c(Lcom/dawin/objects/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/dawin/objects/b$5;->b:Lcom/dawin/objects/b;

    invoke-static {v1}, Lcom/dawin/objects/b;->a(Lcom/dawin/objects/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dawin/objects/b$5;->b:Lcom/dawin/objects/b;

    iget-object v1, v1, Lcom/dawin/objects/b;->b:Lcom/dawin/objects/a;

    iget-object v2, p0, Lcom/dawin/objects/b$5;->b:Lcom/dawin/objects/b;

    invoke-static {v2}, Lcom/dawin/objects/b;->d(Lcom/dawin/objects/b;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/dawin/objects/b$5;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/dawin/objects/a;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
