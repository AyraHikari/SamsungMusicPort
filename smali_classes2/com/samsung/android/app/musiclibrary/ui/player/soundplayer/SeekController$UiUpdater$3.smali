.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->m(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->m(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->a()V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->o(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->n(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
