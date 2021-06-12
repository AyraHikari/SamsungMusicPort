.class public Lcom/samsung/android/app/music/search/SearchCheckableListImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/app/music/search/SearchableAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/search/SearchableAdapter;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 30
    iput-object p2, p0, Lcom/samsung/android/app/music/search/SearchCheckableListImpl;->a:Lcom/samsung/android/app/music/search/SearchableAdapter;

    return-void
.end method

.method private a(Landroid/content/ContentResolver;JI)[J
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p4, :pswitch_data_0

    :goto_0
    move-object p2, v1

    goto/16 :goto_5

    .line 96
    :pswitch_0
    new-array v1, v0, [J

    const/4 p1, 0x0

    aput-wide p2, v1, p1

    goto :goto_0

    .line 87
    :pswitch_1
    new-instance p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;-><init>(Ljava/lang/String;)V

    const-string p2, "_id"

    .line 88
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 89
    iget-object v3, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v5, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v2, p1

    .line 90
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 92
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/database/Cursor;)[J

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 93
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 89
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    .line 93
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    throw p2

    .line 77
    :pswitch_2
    new-instance p4, Lcom/samsung/android/app/music/list/local/query/ArtistTrackDetailQueryArgs;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, v0}, Lcom/samsung/android/app/music/list/local/query/ArtistTrackDetailQueryArgs;-><init>(Ljava/lang/String;I)V

    const-string p2, "_id"

    .line 79
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 80
    iget-object v3, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v5, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v2, p1

    .line 81
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 83
    :try_start_3
    invoke-static {p1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/database/Cursor;)[J

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_4

    .line 84
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 80
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    .line 84
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_4
    throw p2

    :cond_4
    :goto_5
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/util/SparseBooleanArray;I)[J
    .locals 11

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchCheckableListImpl;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 41
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 42
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 43
    iget-object v6, p0, Lcom/samsung/android/app/music/search/SearchCheckableListImpl;->a:Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v6, v5}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, "SMUSIC-UiList"

    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid item selected position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 49
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/app/music/search/SearchCheckableListImpl;->a:Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v7, v5}, Lcom/samsung/android/app/music/search/SearchableAdapter;->g(I)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-nez v9, :cond_1

    const-string v6, "SMUSIC-UiList"

    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid audioId position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 55
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/search/SearchCheckableListImpl;->a:Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/database/Cursor;)I

    move-result v5

    .line 56
    invoke-direct {p0, v0, v7, v8, v5}, Lcom/samsung/android/app/music/search/SearchCheckableListImpl;->a(Landroid/content/ContentResolver;JI)[J

    move-result-object v5

    if-eqz v5, :cond_2

    .line 57
    array-length v6, v5

    if-lez v6, :cond_2

    .line 58
    array-length v6, v5

    add-int/2addr v4, v6

    .line 59
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_3
    new-array p1, v4, [J

    .line 65
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 66
    array-length v3, v1

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_4
    return-object p1
.end method
