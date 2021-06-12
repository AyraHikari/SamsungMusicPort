.class final enum Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon$2;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;-><init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$1;)V

    return-void
.end method


# virtual methods
.method makeFileName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 97
    :cond_0
    sget-char p2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-lez p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p2, "."

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_2

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 106
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".slf"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
