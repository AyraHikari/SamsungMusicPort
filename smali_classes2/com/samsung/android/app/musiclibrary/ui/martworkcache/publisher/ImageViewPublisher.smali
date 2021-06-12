.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# static fields
.field private static volatile g:Landroid/os/Handler;

.field private static final h:Ljava/lang/Object;

.field private static final i:Landroid/os/Handler$Callback;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/Bitmap;

.field private final d:I

.field private final e:J

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->h:Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->i:Landroid/os/Handler$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;-><init>(Landroid/widget/ImageView;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;IZ)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->e:J

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a:Ljava/lang/ref/WeakReference;

    .line 77
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->d:I

    .line 78
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->f:Z

    .line 79
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private a()V
    .locals 4

    .line 135
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->i:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->g:Landroid/os/Handler;

    .line 138
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 157
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->d:I

    if-lez v1, :cond_1

    .line 158
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a(Landroid/widget/ImageView;I)V

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c()Z
    .locals 4

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected a(Landroid/widget/ImageView;I)V
    .locals 0

    .line 172
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 168
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 176
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected a(Landroid/net/Uri;Landroid/graphics/Bitmap;JZ)Z
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 7

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->c()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, v6

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;JZ)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->c:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->b()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a()V

    .line 106
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->g:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 107
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->g:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->f:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->d:I

    if-lez v0, :cond_0

    .line 91
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a(Landroid/widget/ImageView;I)V

    :cond_0
    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
