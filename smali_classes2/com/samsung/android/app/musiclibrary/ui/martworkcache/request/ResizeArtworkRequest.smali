.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V
    .locals 0

    .line 40
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->g:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->f()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->g:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->z_()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V

    .line 61
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public f()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;
    .locals 4

    .line 46
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->g:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;-><init>(Landroid/graphics/Bitmap;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ResizeArtworkRequest"

    .line 66
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
