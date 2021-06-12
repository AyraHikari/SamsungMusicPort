.class public final Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SoundQualityUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)I
    .locals 1

    const/16 v0, 0x38

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static a(I)J
    .locals 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0xaL
            to = 0x3cL
        .end annotation
    .end param

    int-to-long v0, p0

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static a(IILjava/lang/String;)J
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7fffff

    if-le p1, v0, :cond_0

    .line 84
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSoundQualityData(), could not allow the given bit depth : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const/4 v0, 0x0

    if-gez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    const v1, 0x2b1100

    const/16 v2, 0x18

    if-lt p0, v1, :cond_4

    const-string v1, "audio/x-dsf"

    .line 97
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "audio/x-dff"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/16 v0, 0x5a

    goto :goto_0

    :cond_4
    const v1, 0xac44

    if-lt p0, v1, :cond_6

    if-lt p1, v2, :cond_6

    const-string v1, "audio/flac"

    .line 100
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "audio/x-wav"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/16 v0, 0x50

    goto :goto_0

    :cond_6
    const-string v1, "audio/x-ape"

    .line 102
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 v0, 0x46

    :cond_7
    :goto_0
    int-to-long v0, v0

    const/16 p2, 0x38

    shl-long/2addr v0, p2

    int-to-long v3, p0

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/widget/TextView;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x50

    const/4 v3, 0x1

    if-eq p1, v2, :cond_2

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_1

    const/16 p1, 0x8

    .line 200
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return v0

    .line 194
    :cond_1
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->dsd:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 195
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_dsd:I

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return v3

    .line 189
    :cond_2
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->uhq:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_uhq:I

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return v3
.end method

.method public static a(Landroid/widget/TextView;J)Z
    .locals 0

    .line 177
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(J)I

    move-result p1

    .line 178
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(Landroid/widget/TextView;I)Z

    move-result p0

    return p0
.end method

.method public static b(J)I
    .locals 2

    const/16 v0, 0x18

    shr-long/2addr p0, v0

    const-wide/32 v0, 0x7fffffff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const v0, 0xac44

    .line 230
    div-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    if-lez p1, :cond_0

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->n_khz:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(J)I
    .locals 2

    const-wide/32 v0, 0x7fffff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    if-lez p1, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->n_bit:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(J)Z
    .locals 0

    .line 131
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(J)I

    move-result p0

    const/16 p1, 0x50

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(J)Z
    .locals 0

    .line 135
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(J)I

    move-result p0

    const/16 p1, 0x5a

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(J)Z
    .locals 0

    .line 139
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(J)I

    move-result p0

    const/16 p1, 0x46

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(J)Z
    .locals 1

    .line 143
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->e(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->f(J)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
