.class final Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/widget/ImageView;I)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;-><init>(Landroid/widget/ImageView;I)V

    .line 146
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;->a:Ljava/lang/ref/WeakReference;

    .line 147
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher$onPublishArtwork$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher$onPublishArtwork$1;-><init>(Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V

    return-void
.end method
