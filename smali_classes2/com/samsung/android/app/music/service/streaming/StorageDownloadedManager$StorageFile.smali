.class Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageFile"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public active(Z)V
    .locals 0

    return-void
.end method

.method public getAvailableBytes()J
    .locals 2

    .line 244
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingUri()Landroid/net/Uri;
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;->b:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, "file"

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain$PlayingUri;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;->b:Landroid/net/Uri;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 239
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDead()Z
    .locals 2

    .line 269
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLoadFinished()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public obtainInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
    .locals 0

    return-void
.end method

.method public setFileRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 224
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
    .locals 0

    return-void
.end method
