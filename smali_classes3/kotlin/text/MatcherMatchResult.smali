.class final Lkotlin/text/MatcherMatchResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/text/MatchResult;


# instance fields
.field private final a:Lkotlin/text/MatchGroupCollection;

.field private final b:Ljava/util/regex/Matcher;

.field private final c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "matcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/MatcherMatchResult;->b:Ljava/util/regex/Matcher;

    iput-object p2, p0, Lkotlin/text/MatcherMatchResult;->c:Ljava/lang/CharSequence;

    .line 272
    new-instance p1, Lkotlin/text/MatcherMatchResult$groups$1;

    invoke-direct {p1, p0}, Lkotlin/text/MatcherMatchResult$groups$1;-><init>(Lkotlin/text/MatcherMatchResult;)V

    check-cast p1, Lkotlin/text/MatchGroupCollection;

    iput-object p1, p0, Lkotlin/text/MatcherMatchResult;->a:Lkotlin/text/MatchGroupCollection;

    return-void
.end method

.method public static final synthetic a(Lkotlin/text/MatcherMatchResult;)Ljava/util/regex/MatchResult;
    .locals 0

    .line 265
    invoke-direct {p0}, Lkotlin/text/MatcherMatchResult;->d()Ljava/util/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method private final d()Ljava/util/regex/MatchResult;
    .locals 1

    .line 266
    iget-object v0, p0, Lkotlin/text/MatcherMatchResult;->b:Ljava/util/regex/Matcher;

    check-cast v0, Ljava/util/regex/MatchResult;

    return-object v0
.end method


# virtual methods
.method public a()Lkotlin/ranges/IntRange;
    .locals 1

    .line 268
    invoke-direct {p0}, Lkotlin/text/MatcherMatchResult;->d()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/RegexKt;->a(Ljava/util/regex/MatchResult;)Lkotlin/ranges/IntRange;

    move-result-object v0

    return-object v0
.end method

.method public b()Lkotlin/text/MatchGroupCollection;
    .locals 1

    .line 272
    iget-object v0, p0, Lkotlin/text/MatcherMatchResult;->a:Lkotlin/text/MatchGroupCollection;

    return-object v0
.end method

.method public c()Lkotlin/text/MatchResult;
    .locals 3

    .line 304
    invoke-direct {p0}, Lkotlin/text/MatcherMatchResult;->d()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->end()I

    move-result v0

    invoke-direct {p0}, Lkotlin/text/MatcherMatchResult;->d()Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/regex/MatchResult;->end()I

    move-result v1

    invoke-direct {p0}, Lkotlin/text/MatcherMatchResult;->d()Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->start()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 305
    iget-object v1, p0, Lkotlin/text/MatcherMatchResult;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lkotlin/text/MatcherMatchResult;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lkotlin/text/MatcherMatchResult;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "matcher.pattern().matcher(input)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/text/MatcherMatchResult;->c:Ljava/lang/CharSequence;

    invoke-static {v1, v0, v2}, Lkotlin/text/RegexKt;->a(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
