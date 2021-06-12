.class final Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThreadHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SeekController$UiUpdater;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThreadHandler$2;->this$0:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/Handler;
    .locals 2

    .line 371
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThreadHandler$2;->this$0:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThreadHandler$2;->invoke()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
