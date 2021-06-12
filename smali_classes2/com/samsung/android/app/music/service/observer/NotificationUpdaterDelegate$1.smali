.class Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;->getBlurBackground(Landroid/content/Context;FJJLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate$1;->b:Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate$1;->a:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate$1;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate$1;->a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;Landroid/graphics/Bitmap;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
