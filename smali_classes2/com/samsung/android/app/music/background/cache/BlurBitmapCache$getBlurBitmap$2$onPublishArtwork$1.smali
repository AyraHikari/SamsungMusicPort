.class final Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$onPublishArtwork$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $uri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$onPublishArtwork$1;->this$0:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$onPublishArtwork$1;->$uri:Landroid/net/Uri;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 140
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$onPublishArtwork$1;->invoke(Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$Cache;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$Cache;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$onPublishArtwork$1;->this$0:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->f:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$Cache;->a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;Landroid/graphics/Bitmap;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$onPublishArtwork$1;->this$0:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$onPublishArtwork$1;->$uri:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
