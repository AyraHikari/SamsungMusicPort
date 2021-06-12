.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 90
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
