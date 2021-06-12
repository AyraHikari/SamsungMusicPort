.class Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapTextureKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBitmapHashcode:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;->mBitmapHashcode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 169
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;->mBitmapHashcode:I

    return v0
.end method
