.class Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/network/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CDNVolleyRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest$DiscFullError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field private final b:I

.field private final c:D

.field private d:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/io/File;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0, p1, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 79
    const-class p1, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->a:Ljava/lang/String;

    const p1, 0x19000

    .line 81
    iput p1, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->b:I

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    .line 82
    iput-wide v0, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->c:D

    .line 91
    iput-object p4, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->d:Lcom/android/volley/Response$Listener;

    .line 92
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->e:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->f:Ljava/lang/String;

    return-void
.end method

.method private a([B)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->a:Ljava/lang/String;

    const-string v1, "fail to make dirs"

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 125
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 129
    :try_start_1
    array-length v3, p1

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw p1
.end method

.method private y()J
    .locals 4

    .line 139
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 143
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 144
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 147
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    :goto_0
    mul-long v0, v0, v2

    return-wide v0
.end method


# virtual methods
.method protected a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->b:[B

    .line 100
    array-length v1, v0

    if-gez v1, :cond_0

    const v1, 0x19000

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->y()J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, v1

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    mul-double v4, v4, v6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 105
    new-instance p1, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest$DiscFullError;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest$DiscFullError;-><init>(Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;)V

    invoke-static {p1}, Lcom/android/volley/Response;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 109
    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->a([B)Ljava/io/File;

    move-result-object v0

    .line 110
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Lcom/android/volley/Response;->a(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 112
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/volley/Response;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/io/File;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->d:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->a(Ljava/io/File;)V

    return-void
.end method
