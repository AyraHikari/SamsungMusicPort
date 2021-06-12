.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


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

    .line 474
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$5;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .line 477
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$5;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$5;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->r(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;J)V

    return-void
.end method
