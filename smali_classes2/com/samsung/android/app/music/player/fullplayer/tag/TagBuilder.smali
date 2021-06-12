.class final Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TypefaceSpan;,
        Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;,
        Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;,
        Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;,
        Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$SavedSpan;
    }
.end annotation


# static fields
.field private static final a:Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$SavedSpan;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/text/SpannableStringBuilder;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->b:Ljava/util/List;

    .line 35
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->c:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method static a(Ljava/lang/CharSequence;II)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;
    .locals 3

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$1;)V

    .line 41
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->d(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->e(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    .line 40
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    move-result-object p0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->b()Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;
    .locals 3

    .line 140
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->d:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2, v2, v0, v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->a(Landroid/text/Spannable;IILjava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->b:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$SavedSpan;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$SavedSpan;-><init>(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method static a(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 102
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;ILandroid/graphics/Typeface;III)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 52
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3, p4, p5}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Ljava/lang/CharSequence;Landroid/graphics/Typeface;III)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;ILandroid/graphics/Typeface;IIIII)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    .line 58
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$1;)V

    .line 59
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->a(Landroid/graphics/Typeface;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->a(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->b(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p5}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->c(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->f(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    invoke-virtual {p1, p7}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->g(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    .line 58
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a()Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Ljava/lang/CharSequence;
    .locals 3

    .line 106
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    .line 107
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$1;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->a(Landroid/graphics/Typeface;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a()Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/CharSequence;Landroid/graphics/Typeface;III)Ljava/lang/CharSequence;
    .locals 3

    .line 94
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    .line 95
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$1;)V

    .line 96
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->a(Landroid/graphics/Typeface;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->a(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->b(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    .line 97
    invoke-virtual {p1, p4}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->c(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    move-result-object p1

    .line 95
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a()Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private b()Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->d:Z

    return-object p0
.end method


# virtual methods
.method a()Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->c:Landroid/text/SpannableStringBuilder;

    .line 159
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->c:Landroid/text/SpannableStringBuilder;

    .line 160
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->d:Z

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$SavedSpan;

    .line 162
    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v4, v2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$SavedSpan;->a:Ljava/lang/CharSequence;

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v4, v2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$SavedSpan;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    if-eqz v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 165
    iget-object v5, v2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$SavedSpan;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v2, v2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$SavedSpan;->a:Ljava/lang/CharSequence;

    invoke-virtual {v5, v3, v4, v6, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->a(Landroid/text/Spannable;IILjava/lang/CharSequence;)V

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_2
    return-object v0
.end method
