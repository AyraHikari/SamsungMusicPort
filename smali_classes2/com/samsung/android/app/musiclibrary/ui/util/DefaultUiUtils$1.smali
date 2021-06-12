.class final Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils$1;
.super Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0xe10

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 94
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 95
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->duration_format_short:I

    .line 96
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 100
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 101
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->duration_format_long:I

    .line 102
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g()Ljava/lang/String;

    move-result-object p1

    .line 111
    :goto_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 113
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->h()[Ljava/lang/Object;

    move-result-object v1

    .line 114
    div-int/lit16 v3, p2, 0xe10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 115
    div-int/lit8 v2, p2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v0, 0x2

    .line 116
    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    .line 118
    rem-int/lit8 p2, p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    .line 119
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->b:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0, p1, v1}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
