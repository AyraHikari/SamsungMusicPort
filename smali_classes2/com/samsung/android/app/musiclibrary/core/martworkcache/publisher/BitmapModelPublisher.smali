.class public Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# static fields
.field private static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "ArtWork"


# instance fields
.field private final mHolder:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

.field private final mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mHolder:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setUser(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mHolder:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    return-object p0
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mHolder:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    new-instance p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getUser()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mHolder:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getDefaultAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mHolder:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    :cond_0
    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getUser()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
