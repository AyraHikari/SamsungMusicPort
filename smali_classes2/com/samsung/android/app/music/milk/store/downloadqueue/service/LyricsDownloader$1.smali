.class final Lcom/samsung/android/app/music/milk/store/downloadqueue/service/LyricsDownloader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/LyricsDownloader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/LyricsDownloader$1;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/LyricsDownloader$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricsIssued(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/LyricsDownloader$1;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/LyricsDownloader$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->LRC:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->makePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/writer/LrcFileWriter;->write(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-void
.end method
