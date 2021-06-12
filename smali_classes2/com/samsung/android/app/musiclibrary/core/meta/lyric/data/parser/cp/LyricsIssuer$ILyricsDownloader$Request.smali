.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public final fileUrl:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final serverUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;->key:Ljava/lang/String;

    .line 299
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;->serverUrl:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method static obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;
    .locals 1

    .line 294
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
