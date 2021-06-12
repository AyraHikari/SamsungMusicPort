.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final FLAC:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID3_ULT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID3_USLT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID3_XSYL:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;"
        }
    .end annotation
.end field

.field public static final LRC_FILE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;"
        }
    .end annotation
.end field

.field public static final MP4V2:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;"
        }
    .end annotation
.end field

.field public static final XSYL_FILE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->LRC_FILE:Ljava/lang/Class;

    .line 29
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/XsylTagFileParser;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->XSYL_FILE:Ljava/lang/Class;

    .line 31
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->ID3_XSYL:Ljava/lang/Class;

    .line 33
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->ID3_USLT:Ljava/lang/Class;

    .line 35
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->ID3_ULT:Ljava/lang/Class;

    .line 37
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->MP4V2:Ljava/lang/Class;

    .line 39
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->FLAC:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
