.class public Lcom/dawin/util/d;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/util/d$a;,
        Lcom/dawin/util/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/ImageButton;

.field private f:Z

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/dawin/util/d$b;

.field private k:Lcom/dawin/util/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dawin/util/d;->g:Z

    iput-object p2, p0, Lcom/dawin/util/d;->h:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dawin/util/d;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dawin/util/d;->g:Z

    iput-object p1, p0, Lcom/dawin/util/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dawin/util/d;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/dawin/util/d;->g:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1f4

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dawin/util/d;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p1, v3, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    return v1

    :cond_1
    const/16 v3, 0x12e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x12d

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    const-string v2, "Location"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1f4

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v2, 0x12e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const-string v1, "Location"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    iget-boolean p1, p0, Lcom/dawin/util/d;->g:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startDownloadTask for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "url : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dawin/util/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", filename : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dawin/util/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/dawin/util/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object p1, p0, Lcom/dawin/util/d;->j:Lcom/dawin/util/d$b;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/dawin/util/d;->j:Lcom/dawin/util/d$b;

    iget-object v1, p0, Lcom/dawin/util/d;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/dawin/util/d$b;->a(ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string p1, "bitmap download task start"

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dawin/util/d;->i:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/dawin/util/d;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bitmap array count : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/util/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/dawin/util/d;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitmap download ----------------------------------------"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/util/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dawin/util/d;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/dawin/util/d;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v1, "--"

    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dawin/util/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/dawin/util/CommonUtils;->a(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/2addr p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " image."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitmap put in array complete"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dawin/util/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Landroid/widget/ImageButton;Z)V
    .locals 1

    iput-object p1, p0, Lcom/dawin/util/d;->e:Landroid/widget/ImageButton;

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/dawin/util/d;->e:Landroid/widget/ImageButton;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/dawin/util/d;->c:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/dawin/util/d;->f:Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dawin/util/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Lcom/dawin/util/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/util/d;->k:Lcom/dawin/util/d$a;

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish Download Task for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dawin/util/d;->isCancelled()Z

    iget-boolean v0, p0, Lcom/dawin/util/d;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/util/d;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const-string v0, "Button reference not null!!"

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/util/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dawin/util/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/dawin/util/d;->f:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const-string p1, "Button visible"

    invoke-static {p1}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Button reference null!!"

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "------------------------------Bitmap download finished"

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dawin/util/d;->k:Lcom/dawin/util/d$a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dawin/util/d;->k:Lcom/dawin/util/d$a;

    iget-object v0, p0, Lcom/dawin/util/d;->i:Ljava/util/ArrayList;

    invoke-interface {p1, v1, v0}, Lcom/dawin/util/d$a;->a(ZLjava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dawin/util/d;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dawin/util/d;->a(Ljava/lang/Boolean;)V

    return-void
.end method
