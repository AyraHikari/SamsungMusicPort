.class Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryParser"
.end annotation


# static fields
.field private static final b:I


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SEC_FLOATING_FEATURE_SFINDER_CONFIG_QUERY_PARSER_VERSION"

    const/4 v1, 0x1

    .line 525
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;->b:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 532
    sget v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "\\[([^\\[]+)\\]"

    .line 533
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 534
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 537
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchQuery"

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regexParser b : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "^\\[|\\]$"

    const-string v2, ""

    .line 541
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SearchQuery"

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regexParser : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 547
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v0, "\n"

    .line 549
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
