.class Lcom/samsung/android/app/music/lyrics/LocalLyricLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader$1;->this$0:Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 0

    .line 49
    iget-object p4, p0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader$1;->this$0:Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;

    invoke-static {p4}, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;->access$000(Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 50
    iget-object p4, p0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader$1;->this$0:Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;

    invoke-static {p4}, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;->access$000(Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    move-result-object p4

    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;->onLyricLoad(JLjava/lang/String;)V

    :cond_0
    return-void
.end method
