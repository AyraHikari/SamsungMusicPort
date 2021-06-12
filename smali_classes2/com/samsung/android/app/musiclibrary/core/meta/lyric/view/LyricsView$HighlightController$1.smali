.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 678
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->TAG:Ljava/lang/String;

    const-string v1, "Unlock auto scroll!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2102(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)Z

    .line 680
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 682
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)I

    move-result v1

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;IIF)V

    :cond_0
    return-void
.end method
