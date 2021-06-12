.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LyricTextImpl"
.end annotation


# instance fields
.field private final mText:Ljava/lang/String;

.field private final mTimeStamp:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextImpl;->mTimeStamp:J

    .line 288
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextImpl;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextImpl;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 293
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextImpl;->mTimeStamp:J

    return-wide v0
.end method
