.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightRunnable"
.end annotation


# instance fields
.field private mRequestPosition:I

.field private mScrollAction:I

.field private mScrollSpeedFactor:F

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;)V
    .locals 0

    .line 1299
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1314
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->mRequestPosition:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$3200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1700(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1315
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$3300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1316
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$3300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$3400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 1317
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1319
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$3300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->clearItemFocus()V

    .line 1322
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->mScrollAction:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->mScrollSpeedFactor:F

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;IIF)V

    return-void
.end method

.method public set(IIF)V
    .locals 0

    .line 1307
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->mRequestPosition:I

    .line 1308
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->mScrollAction:I

    .line 1309
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->mScrollSpeedFactor:F

    return-void
.end method
