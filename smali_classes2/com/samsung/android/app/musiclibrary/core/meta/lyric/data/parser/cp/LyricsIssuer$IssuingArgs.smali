.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IssuingArgs"
.end annotation


# instance fields
.field final fileUrl:Ljava/lang/String;

.field final issuedKey:Ljava/lang/String;

.field issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field final issuerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;",
            ">;"
        }
    .end annotation
.end field

.field final l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;

.field final lastIssuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field final serverUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuerRef:Ljava/lang/ref/WeakReference;

    .line 152
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->lastIssuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 153
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 154
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedKey:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->serverUrl:Ljava/lang/String;

    .line 156
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->fileUrl:Ljava/lang/String;

    .line 157
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;

    return-void
.end method
