.class abstract enum Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Melon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

.field public static final enum DCF_XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

.field private static final DEFAULT_FOLDER_PATH:Ljava/lang/String; = "lyric"

.field public static final enum XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 80
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon$1;

    const-string v1, "DCF_XSYL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->DCF_XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    .line 91
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon$2;

    const-string v1, "XSYL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    const/4 v0, 0x2

    .line 78
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->DCF_XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;
    .locals 1

    .line 78
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;
    .locals 1

    .line 78
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    invoke-virtual {v0}, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    return-object v0
.end method


# virtual methods
.method abstract makeFileName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public matches(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 115
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lyric"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->makeFileName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
