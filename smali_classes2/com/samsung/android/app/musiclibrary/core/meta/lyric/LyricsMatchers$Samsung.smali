.class public abstract enum Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Samsung"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

.field public static final enum DCF_XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

.field public static final enum LRC:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

.field public static final enum XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung$1;

    const-string v1, "LRC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->LRC:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    .line 42
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung$2;

    const-string v1, "XSYL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    .line 47
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung$3;

    const-string v1, "DCF_XSYL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->DCF_XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->LRC:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->DCF_XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;
    .locals 1

    .line 36
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    invoke-virtual {v0}, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;

    return-object v0
.end method


# virtual methods
.method public abstract extension()Ljava/lang/String;
.end method

.method public final makePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->matches(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public matches(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Samsung;->extension()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2e

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
