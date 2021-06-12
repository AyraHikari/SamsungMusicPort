.class final Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurredBitmap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a(Landroid/content/Context;Landroid/graphics/Bitmap;FLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:F

.field final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;FLkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurredBitmap$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurredBitmap$1;->b:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurredBitmap$1;->c:F

    iput-object p4, p0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurredBitmap$1;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a:Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurredBitmap$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurredBitmap$1;->b:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurredBitmap$1;->c:F

    iget-object v4, p0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurredBitmap$1;->d:Lkotlin/jvm/functions/Function1;

    .line 236
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a(Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;Landroid/content/Context;)Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
