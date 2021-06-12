.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;
    }
.end annotation


# static fields
.field public static final ALL:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

.field public static final DCF:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

.field private static final EMPTY_PATH:Ljava/lang/String; = ""

.field public static final LRC:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

.field public static final MP3:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

.field public static final XSYL:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    .line 14
    new-array v1, v0, [Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->LRC:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a([Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;)Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->LRC:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    const/4 v1, 0x2

    .line 16
    new-array v2, v1, [Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    aput-object v4, v2, v3

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a([Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;)Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->XSYL:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    .line 18
    new-array v2, v1, [Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->DCF_XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    aput-object v4, v2, v3

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->DCF_XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a([Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;)Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->DCF:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    const/4 v2, 0x3

    .line 20
    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->LRC:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    aput-object v4, v2, v3

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    aput-object v4, v2, v0

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    aput-object v4, v2, v1

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a([Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;)Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->MP3:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    .line 22
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;->Lyric:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a([Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;)Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->ALL:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
