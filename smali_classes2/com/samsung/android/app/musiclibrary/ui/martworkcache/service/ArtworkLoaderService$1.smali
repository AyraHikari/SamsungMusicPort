.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;-><init>()V

    .line 17
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    return-void
.end method

.method private a(I)Landroid/graphics/Bitmap$Config;
    .locals 2

    .line 27
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-ltz p1, :cond_1

    .line 29
    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    aget-object p1, v0, p1

    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a:Landroid/graphics/Bitmap$Config;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public addToDiskCache(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/net/Uri;ILjava/io/File;I)V

    return-void
.end method

.method public clearDiskCache()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->b(Landroid/content/Context;)V

    return-void
.end method

.method public loadArtwork(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;

    .line 23
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->a(I)Landroid/graphics/Bitmap$Config;

    move-result-object p3

    .line 22
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p1

    return-object p1
.end method

.method public removeFromDiskCache(Landroid/net/Uri;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/content/Context;Landroid/net/Uri;I)V

    return-void
.end method
