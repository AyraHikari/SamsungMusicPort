.class Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "TextureCache"

.field private static final MIN_COUNT_BETWEEN_CHECKS:I = 0x64

.field static final RECYCLE_TEXTURES:Z


# instance fields
.field private mBitmapQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mMutableTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRefQueueCheckCounter:I

.field private mTexturesCache:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;",
            ">;"
        }
    .end annotation
.end field

.field private mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mBitmapQueue:Ljava/lang/ref/ReferenceQueue;

    .line 175
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;)V

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    if-eqz p2, :cond_0

    .line 37
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    div-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mMutableTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    .line 38
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mMutableTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;->maxSize()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mTexturesCache:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    goto :goto_0

    .line 41
    :cond_0
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mTexturesCache:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    :goto_0
    return-void
.end method

.method private cleanDeadReferences()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mBitmapQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;

    :goto_0
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mTexturesCache:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mBitmapQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isMutableTexture(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mMutableTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isBitmapMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAdapterIndex()I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public obtain(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 56
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->isMutableTexture(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isBitmapUpdated()Z

    move-result v0

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAdapterIndex()I

    move-result v1

    .line 59
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mMutableTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    if-nez v2, :cond_1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mMutableTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->sendBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->resetBitmapUpdated()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->sendBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->resetBitmapUpdated()V

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mBitmapQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;-><init>(Landroid/graphics/Bitmap;Ljava/lang/ref/ReferenceQueue;)V

    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mTexturesCache:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    if-nez v1, :cond_3

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    .line 84
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mTexturesCache:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->sendBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    move-object v2, v1

    .line 87
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mRefQueueCheckCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mRefQueueCheckCounter:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_4

    const/4 p1, 0x0

    .line 88
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mRefQueueCheckCounter:I

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->cleanDeadReferences()V

    :cond_4
    :goto_0
    return-object v2
.end method

.method public resetMutableCache()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mMutableTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->mMutableTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;->evictAll()V

    :cond_0
    return-void
.end method
