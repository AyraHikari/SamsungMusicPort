.class public final Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentTime$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SeekController$UiUpdater;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 407
    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentTime$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentTime$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentTime$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentTime$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->e(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
