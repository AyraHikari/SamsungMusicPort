.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRequestConsumer"
.end annotation


# instance fields
.field private final CATEGORY:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Landroid/os/Handler;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    const-class p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->CATEGORY:Ljava/lang/String;

    .line 847
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private consumeRequestInternal()V
    .locals 4

    .line 877
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;

    .line 880
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->CATEGORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " finish current scroll : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and consume next scroll request!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->executeNextScrollRequestInternal()V

    return-void
.end method

.method private executeNextScrollRequestInternal()V
    .locals 3

    .line 886
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;

    if-eqz v0, :cond_0

    .line 888
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->position:I

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->action:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;II)V

    :cond_0
    return-void
.end method

.method private repeatRequestConsume()V
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .line 864
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->currState:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->matchState(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->postRequestConsume()V

    return-void

    .line 868
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->consumeRequestInternal()V

    return-void
.end method


# virtual methods
.method clearRequest()V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method postRequestConsume()V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 852
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 0

    .line 873
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->repeatRequestConsume()V

    return-void
.end method
