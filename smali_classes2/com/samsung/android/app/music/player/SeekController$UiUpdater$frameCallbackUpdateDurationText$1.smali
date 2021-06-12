.class final Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateDurationText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SeekController$UiUpdater;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateDurationText$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    .line 454
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateDurationText$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateDurationText$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;J)V

    return-void
.end method
