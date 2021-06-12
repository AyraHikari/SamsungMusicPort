.class public final Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final a:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->a:Landroid/content/UriMatcher;

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.radio"

    const-string v2, "playlist"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.radio"

    const-string v2, "playlist/id/*"

    const/16 v3, 0x3ea

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.radio"

    const-string v2, "playlist/positions"

    const/16 v3, 0x3eb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.radio"

    const-string v2, "playlist/reorder"

    const/16 v3, 0x3ec

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Provider-Radio"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 176
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_2
    :goto_0
    return v2

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->a(Landroid/content/Context;)I

    move-result v2

    .line 190
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->a(Landroid/net/Uri;)V

    return v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "Provider-Radio"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " toString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "SMUSIC-Provider-Radio"

    const-string p2, "insert. but values is null."

    .line 112
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-wide/16 v1, -0x1

    .line 122
    sget-object v3, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "play_list_id"

    .line 125
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "play_list_name"

    .line 126
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "play_list_description"

    .line 127
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "item_order"

    .line 128
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "item_ad_info"

    .line 129
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v7, "fixed_play_routine"

    .line 130
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 131
    new-instance v7, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    invoke-direct {v7}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;-><init>()V

    .line 132
    iput-object v1, v7, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->b:Ljava/lang/String;

    .line 133
    iput-object v2, v7, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->c:Ljava/lang/String;

    .line 134
    iput-object v3, v7, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->d:Ljava/lang/String;

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v8, 0x3e8

    div-long/2addr v1, v8

    iput-wide v1, v7, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->e:J

    .line 136
    iput v4, v7, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    .line 137
    iput-wide v5, v7, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->g:J

    .line 138
    iput-boolean p2, v7, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->h:Z

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v7}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->a(Landroid/content/Context;Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)V

    const-wide/16 v1, 0x1

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_2

    .line 151
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 152
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->a(Landroid/net/Uri;)V

    return-object p1

    :cond_2
    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string p3, "Provider-Radio"

    .line 68
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "query uri : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 77
    sget-object p4, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p4

    packed-switch p4, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p4

    const/4 p5, 0x2

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 84
    invoke-static {p3, p4, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 80
    :pswitch_1
    invoke-static {p3, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string p4, "Provider-Radio"

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " selection : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object p3, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/16 p4, 0x3ea

    const/4 v0, 0x0

    if-eq p3, p4, :cond_2

    const/16 p4, 0x3ec

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    const-string p3, "from"

    .line 211
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const-string p4, "to"

    .line 212
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p3, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->a(Landroid/content/Context;II)I

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    return v0

    .line 219
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    const-string p4, "play_position"

    .line 220
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const-string v0, "play_audio_id"

    .line 221
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3, p4, v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->a(Landroid/content/Context;Ljava/lang/String;IJ)I

    move-result v0

    .line 233
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioProvider;->a(Landroid/net/Uri;)V

    return v0
.end method
