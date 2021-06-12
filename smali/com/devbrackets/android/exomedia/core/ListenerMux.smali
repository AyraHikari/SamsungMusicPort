.class public Lcom/devbrackets/android/exomedia/core/ListenerMux;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;
.implements Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
.implements Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/devbrackets/android/exomedia/listener/OnErrorListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;)V
    .locals 2
    .param p1    # Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a:Landroid/os/Handler;

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->i:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->j:Z

    .line 72
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->k:Z

    .line 73
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->l:Z

    .line 76
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    return-void
.end method

.method static synthetic a(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->d()V

    return-void
.end method

.method private a(Ljava/lang/Exception;)Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->g:Lcom/devbrackets/android/exomedia/listener/OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->g:Lcom/devbrackets/android/exomedia/listener/OnErrorListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/listener/OnErrorListener;->a(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/devbrackets/android/exomedia/core/ListenerMux;)Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->d:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    return-object p0
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->j:Z

    .line 274
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a:Landroid/os/Handler;

    new-instance v1, Lcom/devbrackets/android/exomedia/core/ListenerMux$1;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$1;-><init>(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->b()V

    .line 285
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->c:Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->c:Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;->b()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->k:Z

    .line 297
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a:Landroid/os/Handler;

    new-instance v1, Lcom/devbrackets/android/exomedia/core/ListenerMux$2;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$2;-><init>(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->a()V

    .line 147
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->f:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->f:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .line 154
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->a(I)V

    .line 156
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->e:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->e:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;->a(I)V

    :cond_0
    return-void
.end method

.method public a(IIIF)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->a(IIIF)V

    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->c()V

    .line 111
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->a(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V

    .line 112
    invoke-direct {p0, p2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 235
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->h:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;

    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->l:Z

    .line 181
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 208
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->e:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 199
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->d:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->g:Lcom/devbrackets/android/exomedia/listener/OnErrorListener;

    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 190
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->c:Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;

    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 217
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->f:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->h:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->h:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 244
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->j:Z

    .line 245
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->a(Z)V

    return-void
.end method

.method public a(ZI)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->c()V

    .line 120
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->k:Z

    if-nez v1, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->e()V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 123
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->j:Z

    if-nez v1, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->c()V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {p1, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->a(Z)V

    :cond_2
    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    .line 133
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->l:Z

    if-eqz p1, :cond_3

    .line 134
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->l:Z

    .line 135
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

    if-eqz p1, :cond_3

    .line 138
    invoke-interface {p1}, Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;->f()V

    .line 139
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->i:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->k:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->j:Z

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 81
    invoke-virtual {p0, p2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(I)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->d:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->d:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    invoke-interface {p1}, Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;->a()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 93
    new-instance p1, Lcom/devbrackets/android/exomedia/core/exception/NativeMediaPlaybackException;

    invoke-direct {p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/exception/NativeMediaPlaybackException;-><init>(II)V

    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->c()V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->f:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->f:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    invoke-interface {p1}, Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;->a()V

    :cond_0
    return-void
.end method
