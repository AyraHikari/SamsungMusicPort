.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 24
    move-object v0, p3

    check-cast v0, Ljava/lang/Float;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 26
    sget-object v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->TextAppearance:[I

    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 29
    :try_start_0
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 30
    iget v0, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/musiclibrary/R$styleable;->MusicTextView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz v0, :cond_5

    .line 40
    :try_start_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 41
    move-object v0, p3

    check-cast v0, Ljava/lang/Float;

    .line 42
    check-cast p3, Ljava/lang/Float;

    .line 44
    sget v1, Lcom/samsung/android/app/musiclibrary/R$styleable;->MusicTextView_maxFontLevel:I

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 45
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 47
    :cond_1
    sget v1, Lcom/samsung/android/app/musiclibrary/R$styleable;->MusicTextView_minFontLevel:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 48
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(I)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    .line 50
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_3

    .line 52
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 53
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float p3, v1, p3

    if-lez p3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_4
    :goto_0
    mul-float p2, p2, v1

    const/4 p3, 0x1

    .line 57
    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->setTextSize(IF)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_5
    const-string p2, "MusicTextView"

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " defaultTextSize is null"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :catchall_1
    move-exception p1

    .line 33
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 19
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 20
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(I)F
    .locals 1

    .line 125
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->TINY:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->TINY:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getFontScale()F

    move-result p1

    goto/16 :goto_0

    .line 126
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->EXTRA_SMALL:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->EXTRA_SMALL:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getFontScale()F

    move-result p1

    goto :goto_0

    .line 127
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->SMALL:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->SMALL:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getFontScale()F

    move-result p1

    goto :goto_0

    .line 128
    :cond_2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->MEDIUM:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->MEDIUM:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getFontScale()F

    move-result p1

    goto :goto_0

    .line 129
    :cond_3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->LARGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->LARGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getFontScale()F

    move-result p1

    goto :goto_0

    .line 130
    :cond_4
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->EXTRA_LARGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->EXTRA_LARGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getFontScale()F

    move-result p1

    goto :goto_0

    .line 131
    :cond_5
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->HUGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->HUGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getFontScale()F

    move-result p1

    goto :goto_0

    .line 132
    :cond_6
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->EXTRA_HUGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->EXTRA_HUGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getFontScale()F

    move-result p1

    goto :goto_0

    .line 133
    :cond_7
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->SMALL:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->getFontScale()F

    move-result p1

    :goto_0
    return p1
.end method

.method private final a(Landroid/text/TextPaint;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 119
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    const-string v1, "(this as java.lang.String).toCharArray()"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/support/android/text/TextUtilsCompat;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object p1

    if-eqz p1, :cond_1

    .line 120
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    :cond_1
    return-object v0

    .line 119
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "context"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/samsung/android/app/musiclibrary/R$color;->mu_primary:I

    const/4 p5, 0x0

    invoke-static {p3, p4, p5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 9

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 73
    check-cast v0, Ljava/lang/CharSequence;

    :goto_0
    if-eqz p2, :cond_8

    .line 74
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p2, v1

    :cond_1
    const-string v1, "[  ]+"

    .line 82
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Pattern.compile(\"[  ]+\")\u2026olorText).replaceAll(\" \")"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    if-eqz p2, :cond_3

    .line 85
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 91
    :try_start_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v1

    const/16 v3, 0x21

    .line 92
    invoke-virtual {v2, p1, v1, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 99
    check-cast v2, Ljava/lang/CharSequence;

    invoke-super {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p3, "MusicTextView"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while highlighting matched string. fullText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ", colorText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 105
    check-cast p1, Ljava/lang/Throwable;

    .line 102
    invoke-static {p3, p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    :cond_5
    invoke-super {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 87
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_8
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 75
    invoke-super {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
