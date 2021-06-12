.class public Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/StringBuilder;

.field protected static final b:Ljava/util/Formatter;

.field public static final c:Ljava/io/File;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field private static final f:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

.field private static final g:[Ljava/lang/Object;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/util/regex/Pattern;

.field private static k:Ljava/util/regex/Pattern;

.field private static l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a:Ljava/lang/StringBuilder;

    .line 78
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->b:Ljava/util/Formatter;

    .line 87
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils$1;

    const-string v1, "TimeStrings"

    const/16 v2, 0x258

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils$1;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    const/4 v0, 0x5

    .line 124
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g:[Ljava/lang/Object;

    const-string v0, "storage/[:xdigit:]{4}-[:xdigit:]{4}"

    .line 144
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->j:Ljava/util/regex/Pattern;

    const-string v0, "mnt/media_rw/[:xdigit:]{4}-[:xdigit:]{4}"

    .line 147
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->k:Ljava/util/regex/Pattern;

    const/4 v0, -0x1

    .line 149
    sput v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->l:I

    .line 155
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->c:Ljava/io/File;

    .line 158
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->c:Ljava/io/File;

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->d:Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->c:Ljava/io/File;

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;IF)F
    .locals 1

    const/4 v0, 0x0

    .line 509
    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;IFF)F

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/res/Resources;IFF)F
    .locals 1

    .line 516
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, p1, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;IFFF)F

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/res/Resources;IFFF)F
    .locals 1

    .line 533
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 534
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 535
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    div-float/2addr p1, p2

    :cond_0
    cmpg-float p2, p0, p3

    if-gez p2, :cond_1

    move p0, p3

    goto :goto_0

    :cond_1
    cmpl-float p2, p0, p4

    if-lez p2, :cond_2

    move p0, p4

    :cond_2
    :goto_0
    mul-float p1, p1, p0

    return p1
.end method

.method public static a(II)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 501
    new-array v1, v0, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v3, v4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    const v5, 0x10100a1

    aput v5, v3, v4

    aput-object v3, v1, v2

    new-array v3, v4, [I

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 503
    new-array v0, v0, [I

    aput p0, v0, v4

    aput p0, v0, v2

    aput p1, v0, v5

    .line 504
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;
    .locals 1
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 482
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/RippleDrawable;
    .locals 8
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x5

    .line 488
    new-array v1, v0, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v3, v4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    const v5, 0x101009c

    aput v5, v3, v4

    aput-object v3, v1, v2

    new-array v3, v2, [I

    const v5, 0x10102fe

    aput v5, v3, v4

    const/4 v5, 0x2

    aput-object v3, v1, v5

    new-array v3, v2, [I

    const v6, 0x10100a1

    aput v6, v3, v4

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v4, [I

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 492
    new-array v0, v0, [I

    aput p1, v0, v4

    aput p1, v0, v2

    aput p1, v0, v5

    aput p1, v0, v6

    const/4 p1, 0x0

    const v2, 0x106000d

    .line 493
    invoke-static {p0, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v0, v7

    .line 495
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000b

    .line 496
    invoke-static {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v2, v3, p2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public static a(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 6

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    .line 264
    sget p3, Lcom/samsung/android/app/musiclibrary/R$plurals;->NNNalbum:I

    invoke-virtual {p0, p3, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p3

    .line 265
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 266
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->b:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v3, v4, p3, v5}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 267
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->b:Ljava/util/Formatter;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    .line 268
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    :cond_0
    sget p1, Lcom/samsung/android/app/musiclibrary/R$plurals;->NNNtrack:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    .line 271
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 272
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->b:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p1, p3, p0, v1}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 273
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->b:Ljava/util/Formatter;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 579
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    long-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "<unknown>"

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->unknown:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "<unknown>"

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    return-object p2

    .line 315
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 316
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_0
    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    .line 332
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->internal_storage_kt:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 334
    :cond_5
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->sd_card:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_6
    :goto_1
    return-object p2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 395
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 397
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u202a"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " IN ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-static {p0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " IN ("

    .line 214
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    if-eqz v1, :cond_1

    const/16 v2, 0x2c

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    :cond_1
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x29

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 188
    sget p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr p0, v0

    invoke-static {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 182
    sget p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr p0, v0

    invoke-static {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    .line 183
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 2

    .line 594
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 595
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 596
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p1, 0x3ebd70a4    # 0.37f

    .line 599
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static b(Landroid/content/res/Resources;IF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 522
    invoke-static {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;IFFF)F

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/res/Resources;IFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 527
    invoke-static {p0, p1, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;IFFF)F

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/"

    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 346
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 350
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->d:Ljava/lang/String;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->internal_storage_kt:I

    .line 352
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 356
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "storage/[:xdigit:]{4}-[:xdigit:]{4}"

    goto :goto_0

    .line 358
    :cond_2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "mnt/media_rw/[:xdigit:]{4}-[:xdigit:]{4}"

    goto :goto_0

    :cond_3
    const-string v0, "storage/extSdCard"

    .line 363
    :goto_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->sd_card:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 367
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 368
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 369
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 0

    .line 617
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    .line 618
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieComposition;

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 427
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 376
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 380
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "storage/"

    const-string v1, "mnt/media_rw/"

    .line 381
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static d()V
    .locals 1

    .line 586
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->a()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 555
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->d:Ljava/lang/String;

    const-string v2, "/"

    const/4 v3, 0x1

    .line 557
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v0
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static e()Z
    .locals 2

    .line 590
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->a()I

    move-result v0

    sget v1, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->USER_OWNER:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 4

    .line 168
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->l:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 169
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->J:Z

    if-nez v0, :cond_1

    .line 170
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->isHoveringUI(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    sput p0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->l:I

    .line 173
    :cond_2
    sget p0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->l:I

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static g(Landroid/app/Activity;)Landroid/widget/ActionMenuView;
    .locals 5

    .line 457
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_bar_container"

    const-string v2, "id"

    const-string v3, "android"

    .line 458
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 459
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "action_context_bar"

    const-string v3, "id"

    const-string v4, "android"

    .line 463
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 464
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 466
    check-cast p0, Landroid/view/ViewGroup;

    .line 467
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 469
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 470
    instance-of v4, v3, Landroid/widget/ActionMenuView;

    if-eqz v4, :cond_1

    .line 471
    move-object v1, v3

    check-cast v1, Landroid/widget/ActionMenuView;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "storage"

    .line 408
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 409
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/os/storage/StorageManagerCompat;->getStorageVolumes(Landroid/os/storage/StorageManager;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 414
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    const-string v5, "sd"

    .line 416
    const v5, 0x0

    if-eqz v5, :cond_1

    .line 417
    invoke-static {v4}, Lcom/samsung/android/app/music/support/android/os/storage/StorageVolumeCompat;->isRemovable(Landroid/os/storage/StorageVolume;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "mounted"

    .line 418
    invoke-static {p0, v4}, Lcom/samsung/android/app/music/support/android/os/storage/StorageVolumeCompat;->getState(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 419
    invoke-static {v4}, Lcom/samsung/android/app/music/support/android/os/storage/StorageVolumeCompat;->getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 432
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 434
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 436
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static h(Landroid/app/Activity;)Z
    .locals 0

    .line 566
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/app/Activity;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic h()[Ljava/lang/Object;
    .locals 1

    .line 59
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g:[Ljava/lang/Object;

    return-object v0
.end method

.method public static i(Landroid/content/Context;)I
    .locals 1

    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/samsung/android/app/musiclibrary/R$bool;->tablet_ui_enabled:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 571
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 1

    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 2

    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "need_dark_font"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
