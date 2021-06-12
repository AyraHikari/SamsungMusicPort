.class Lcom/samsung/android/app/music/lyrics/LyricsCache$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/LyricsCache;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$4;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 284
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;

    .line 285
    iget-object v0, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->l:Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;

    iget-wide v1, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->audioId:J

    iget-object v3, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->access$600(Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;->onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
