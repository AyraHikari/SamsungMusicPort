.class public final Lcom/samsung/android/app/music/util/task/SourceIdGetterTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/task/SourceIdGetterTask$SourceIdResultListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[J

.field private final c:Lcom/samsung/android/app/music/util/task/SourceIdGetterTask$SourceIdResultListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;[JLcom/samsung/android/app/music/util/task/SourceIdGetterTask$SourceIdResultListener;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/util/task/SourceIdGetterTask;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/app/music/util/task/SourceIdGetterTask;->b:[J

    .line 22
    iput-object p3, p0, Lcom/samsung/android/app/music/util/task/SourceIdGetterTask;->c:Lcom/samsung/android/app/music/util/task/SourceIdGetterTask$SourceIdResultListener;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/SourceIdGetterTask;->c:Lcom/samsung/android/app/music/util/task/SourceIdGetterTask$SourceIdResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/util/task/SourceIdGetterTask$SourceIdResultListener;->a([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 7

    const-string p1, "_id"

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/SourceIdGetterTask;->b:[J

    .line 28
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v4

    .line 29
    iget-object v1, p0, Lcom/samsung/android/app/music/util/task/SourceIdGetterTask;->a:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string p1, "source_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 31
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 35
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 36
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :cond_1
    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 29
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 39
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v1

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/task/SourceIdGetterTask;->a([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/task/SourceIdGetterTask;->a([Ljava/lang/String;)V

    return-void
.end method
