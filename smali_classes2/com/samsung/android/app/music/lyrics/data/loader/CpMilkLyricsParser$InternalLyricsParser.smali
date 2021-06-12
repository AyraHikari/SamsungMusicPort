.class public Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalLyricsParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGson:Lcom/google/gson/Gson;

.field private mJsonLyrics:Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

.field private mReader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/lyrics/data/loader/CpRadioLyricsParser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->TAG:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    return-void
.end method

.method private makeLyricsInternal(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 2

    .line 165
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$Utils;->isEmpty(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 169
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected canParse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mReader:Ljava/io/Reader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mGson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mReader:Ljava/io/Reader;

    const-class v3, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mJsonLyrics:Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    .line 139
    sget-object v0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Json lyrics : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mJsonLyrics:Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 141
    sget-object v2, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->LOG_TAG:Ljava/lang/String;

    const-string v3, "canParse failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method protected close()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mJsonLyrics:Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected open(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->close()V

    .line 123
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mReader:Ljava/io/Reader;

    .line 124
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mGson:Lcom/google/gson/Gson;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 126
    sget-object v1, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method protected parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mJsonLyrics:Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mJsonLyrics:Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    iget-object v0, v0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;->lyrics:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mJsonLyrics:Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    iget-object v0, v0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;->lyrics:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 155
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .line 156
    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 157
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->makeLyricsInternal(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 159
    sget-object v3, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->LOG_TAG:Ljava/lang/String;

    const-string v4, "parseLyrics failed : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    new-instance v2, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->makeLyricsInternal(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    return-object v0

    .line 151
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object v0
.end method
