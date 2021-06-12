.class Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricsHolder"
.end annotation


# instance fields
.field public final audioId:J

.field private final cpAttrs:I

.field public final l:Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;

.field public lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field private final user:Ljava/lang/Object;


# direct methods
.method constructor <init>(IJLcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->cpAttrs:I

    .line 304
    iput-wide p2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->audioId:J

    .line 305
    iput-object p4, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->l:Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;

    .line 306
    iput-object p5, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->user:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;)Ljava/lang/Object;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->user:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;)I
    .locals 0

    .line 290
    iget p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->cpAttrs:I

    return p0
.end method
