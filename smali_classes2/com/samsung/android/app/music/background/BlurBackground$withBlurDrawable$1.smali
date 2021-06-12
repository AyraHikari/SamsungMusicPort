.class public final Lcom/samsung/android/app/music/background/BlurBackground$withBlurDrawable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/background/BlurBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $body:Lkotlin/jvm/functions/Function2;

.field final synthetic $client:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;

.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BlurBackground$withBlurDrawable$1;->$body:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/BlurBackground$withBlurDrawable$1;->$client:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;

    iput-object p3, p0, Lcom/samsung/android/app/music/background/BlurBackground$withBlurDrawable$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/background/BlurBackground$withBlurDrawable$1;->invoke(Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "drawable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BlurBackground$withBlurDrawable$1;->$body:Lkotlin/jvm/functions/Function2;

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BlurBackground$withBlurDrawable$1;->$client:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;

    .line 31
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BlurBackground$withBlurDrawable$1;->$context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/background/BlurBackground;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
