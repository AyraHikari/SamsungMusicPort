.class Lcom/samsung/android/app/music/metaedit/MediaMetaReader$ParsingTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/metaedit/MediaMetaReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/metaedit/MediaMetaReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/metaedit/MediaMetaReader;)V
    .locals 1

    .line 209
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 210
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader$ParsingTask;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/metaedit/MediaMetaReader;Lcom/samsung/android/app/music/metaedit/MediaMetaReader$1;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader$ParsingTask;-><init>(Lcom/samsung/android/app/music/metaedit/MediaMetaReader;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    if-eqz p1, :cond_4

    .line 215
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 220
    aget-object v2, p1, v0

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    .line 221
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".mp3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x0

    const/4 v4, -0x2

    .line 229
    :try_start_0
    new-instance v5, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;

    aget-object v6, p1, v0

    invoke-direct {v5, v6}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/app/music/common/metaedit/NotSupportedVersionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    move-object v2, v5

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "SMUSIC-MediaMetaReader"

    .line 238
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v5, "SMUSIC-MediaMetaReader"

    .line 235
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v5, -0x2

    goto :goto_1

    :catch_2
    move-exception v5

    const-string v6, "SMUSIC-MediaMetaReader"

    .line 232
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/metaedit/NotSupportedVersionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    const/4 v5, -0x1

    :goto_1
    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 244
    :try_start_1
    new-instance v3, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;

    aget-object p1, p1, v0

    invoke-direct {v3, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception p1

    const-string v0, "SMUSIC-MediaMetaReader"

    .line 250
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    goto :goto_2

    :catch_4
    move-exception p1

    const-string v0, "SMUSIC-MediaMetaReader"

    .line 247
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    goto :goto_2

    :cond_1
    move v1, v5

    .line 255
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader$ParsingTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    if-eqz p1, :cond_2

    .line 257
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaReader;Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;)Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    .line 258
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaReader;I)I

    .line 260
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 222
    :cond_3
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 216
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter cannot be null. only be one parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader$ParsingTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    if-eqz v0, :cond_0

    .line 266
    invoke-static {v0}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaReader;)Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    invoke-static {v0}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaReader;)Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;->a(I)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 204
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader$ParsingTask;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 204
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader$ParsingTask;->a(Ljava/lang/Integer;)V

    return-void
.end method
