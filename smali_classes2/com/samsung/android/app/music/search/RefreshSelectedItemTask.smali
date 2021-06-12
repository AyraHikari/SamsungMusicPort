.class public Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private final d:Lcom/samsung/android/app/music/search/SelectAllObservable;

.field private final e:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;Lcom/samsung/android/app/music/search/SelectAllObservable;Z)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->a:Landroid/support/v4/app/Fragment;

    .line 32
    iget-object p1, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 34
    iput-object p3, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    .line 35
    iput-boolean p4, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->e:Z

    return-void
.end method

.method private a([J[JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 66
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 67
    aget-wide v1, p1, v0

    .line 68
    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-gez v3, :cond_1

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;[J)[J
    .locals 9

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 83
    aget-wide v4, p2, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_0

    const/16 v4, 0x2c

    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x29

    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    iget-boolean p2, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->e:Z

    if-eqz p2, :cond_2

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->c:Landroid/net/Uri;

    :goto_1
    move-object v4, p2

    goto :goto_2

    :cond_2
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    goto :goto_1

    :goto_2
    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object v3, p1

    .line 92
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 96
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 98
    new-array v1, v0, [J

    const-string v3, "_id"

    .line 99
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    :goto_3
    if-ge v2, v0, :cond_4

    .line 102
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception p2

    goto :goto_4

    .line 106
    :cond_3
    new-array v1, v2, [J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p1, :cond_5

    .line 108
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1

    .line 92
    :goto_4
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    .line 108
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_6
    throw v0
.end method


# virtual methods
.method protected varargs a([Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    aget-object p1, p1, v0

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 42
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->a(Landroid/content/Context;[J)[J

    move-result-object v0

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    array-length v3, v1

    array-length v4, v0

    if-eq v3, v4, :cond_1

    .line 48
    invoke-direct {p0, v1, v0, p1, v2}, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->a([J[JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    return-object v2
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(Ljava/util/ArrayList;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->c()I

    move-result p1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->a:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->w_()I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/samsung/android/app/music/search/SelectAllObservable;->a(IZ)V

    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->a([Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->a(Ljava/util/ArrayList;)V

    return-void
.end method
