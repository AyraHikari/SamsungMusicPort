.class Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->a:Ljava/lang/ref/WeakReference;

    .line 144
    iput-object p2, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->c:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 6

    if-eqz p1, :cond_7

    .line 150
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    .line 154
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    :try_start_0
    new-instance p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;

    iget-object v3, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->c:Ljava/lang/String;

    invoke-direct {p1, v3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object p1, v2

    goto :goto_2

    .line 158
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    .line 159
    iget-object v3, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    :try_start_1
    new-instance v4, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;

    iget-object v5, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->c:Ljava/lang/String;

    invoke-direct {v4, v5, p1, v3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v4, v2

    .line 165
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    move-object p1, v4

    :goto_2
    if-nez p1, :cond_2

    return-object v2

    :cond_2
    const/4 v3, 0x0

    .line 178
    :goto_3
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->b:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 179
    iget-object v4, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 180
    iget-object v5, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 181
    invoke-interface {p1, v4, v5}, Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 188
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    .line 189
    iget-object v3, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->b:Landroid/util/SparseArray;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->c(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 191
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->d(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)J

    move-result-wide v4

    invoke-static {p1, v3, v4, v5}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;Landroid/content/Context;J)V

    .line 193
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->b:Landroid/util/SparseArray;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 194
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 195
    invoke-static {p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->d(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)J

    move-result-wide v4

    invoke-static {p1, v3, v4, v5}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;Landroid/content/Context;J)V

    .line 198
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->b:Landroid/util/SparseArray;

    invoke-static {p1, v3}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 199
    invoke-static {p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Landroid/content/Context;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->e(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 200
    invoke-static {p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->f(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    move-result-object p1

    .line 199
    invoke-static {v3, v1, v2, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-object v2

    :catch_2
    move-exception p1

    const-string v0, "SMUSIC-MediaMetaWriter"

    .line 184
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 151
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter cannot be null. only be one parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->a([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->a(Ljava/lang/Void;)V

    return-void
.end method
