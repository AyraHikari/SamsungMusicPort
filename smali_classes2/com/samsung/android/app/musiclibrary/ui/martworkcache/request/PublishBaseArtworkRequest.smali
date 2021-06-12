.class public abstract Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable<",
        "TT;>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

.field public e:Landroid/graphics/Bitmap;

.field public f:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->f:Z

    .line 41
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->z_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->e:Landroid/graphics/Bitmap;

    .line 54
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;)V

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-ArtWork"

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request invalidated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->c()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;->onStillUsedArtwork(Landroid/net/Uri;J)Z

    move-result v0

    return v0
.end method
