.class final Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher$onPublishArtwork$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher$onPublishArtwork$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher$onPublishArtwork$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;->a(Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
