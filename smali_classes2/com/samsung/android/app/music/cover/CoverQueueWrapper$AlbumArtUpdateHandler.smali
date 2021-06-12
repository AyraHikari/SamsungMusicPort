.class final Lcom/samsung/android/app/music/cover/CoverQueueWrapper$AlbumArtUpdateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueueWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlbumArtUpdateHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/cover/CoverQueueWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper$AlbumArtUpdateHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper$AlbumArtUpdateHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-static {v0}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->a(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;)Landroid/widget/ImageView;

    move-result-object p1

    sget v1, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    invoke-static {v0}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->b(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;)Landroid/widget/ImageView;

    move-result-object p1

    sget v1, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    invoke-static {v0}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->c(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    .line 145
    invoke-static {v0}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->a(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    invoke-static {v0}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->b(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    invoke-static {v0}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->c(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
