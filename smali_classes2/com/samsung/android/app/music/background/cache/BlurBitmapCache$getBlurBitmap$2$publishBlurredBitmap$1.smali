.class final Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$publishBlurredBitmap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$publishBlurredBitmap$1;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$publishBlurredBitmap$1;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$publishBlurredBitmap$1;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$publishBlurredBitmap$1;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    invoke-interface {v0}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;->a()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$publishBlurredBitmap$1;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$publishBlurredBitmap$1;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->h:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$publishBlurredBitmap$1;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    iget-object v2, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$publishBlurredBitmap$1;->c:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
