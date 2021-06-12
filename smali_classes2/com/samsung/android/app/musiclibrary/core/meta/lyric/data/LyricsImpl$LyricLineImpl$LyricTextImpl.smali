.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricTextImpl"
.end annotation


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextImpl;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextImpl;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
