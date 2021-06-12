.class Lcom/samsung/android/app/music/lyrics/LyricsCache$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Long;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/LyricsCache;I)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Long;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)I
    .locals 0

    .line 41
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/lyrics/LyricsCache$1;->sizeOf(Ljava/lang/Long;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)I

    move-result p1

    return p1
.end method
