.class public Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;,
        Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;
    }
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field private static final c:Landroid/content/UriMatcher;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private final e:Landroid/content/Context;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/mediaroute/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->c:Landroid/content/UriMatcher;

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "media_route_list"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "selected_route"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "content://com.sec.android.app.music/media_route_list"

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->a:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/selected_route"

    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->b:Landroid/net/Uri;

    const/4 v0, 0x6

    .line 53
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->b:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->c:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->d:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->e:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->f:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->e:Landroid/content/Context;

    return-void
.end method

.method private a(Z)I
    .locals 0

    return p1
.end method

.method private a(ILcom/samsung/android/app/music/mediaroute/RouteInfo;)[Ljava/lang/Object;
    .locals 3

    .line 178
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->d:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 179
    invoke-static {}, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->a()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 180
    sget p1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->a:I

    iget-object v1, p2, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->a:Ljava/lang/String;

    aput-object v1, v0, p1

    .line 181
    sget p1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->b:I

    iget-object v1, p2, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->b:Ljava/lang/String;

    aput-object v1, v0, p1

    .line 182
    invoke-static {}, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->b()I

    move-result p1

    iget v1, p2, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    .line 183
    sget p1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->c:I

    iget-object v1, p2, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->a(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    .line 184
    sget p1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->d:I

    iget-object p2, p2, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->d:Ljava/lang/String;

    aput-object p2, v0, p1

    return-object v0
.end method

.method private b(Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 159
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->d:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->f:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 162
    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 163
    iget-object v3, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->g:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    move-result-object v1

    .line 165
    invoke-direct {p0, v4, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->a(ILcom/samsung/android/app/music/mediaroute/RouteInfo;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 167
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    add-int/2addr v1, v4

    .line 170
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->a(ILcom/samsung/android/app/music/mediaroute/RouteInfo;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method private c(Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 189
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->d:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->f:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->g:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    if-eqz v1, :cond_0

    .line 193
    sget-object v2, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->d:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 194
    invoke-static {}, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->a()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 195
    sget v3, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->a:I

    iget-object v4, v1, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 196
    sget v3, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->b:I

    iget-object v4, v1, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 197
    invoke-static {}, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->b()I

    move-result v3

    iget v4, v1, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 198
    sget v3, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->c:I

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 199
    sget v3, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->d:I

    iget-object v1, v1, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->d:Ljava/lang/String;

    aput-object v1, v2, v3

    .line 200
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    sget-object p3, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    return v0

    .line 130
    :cond_0
    aget-object p3, p4, v0

    if-nez p3, :cond_1

    return v0

    .line 134
    :cond_1
    sget-object p4, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->e:Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    .line 135
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, p4

    :goto_0
    iput-object p3, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->g:Ljava/lang/String;

    .line 136
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
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

    .line 106
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->f:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 112
    array-length p2, p3

    :goto_0
    if-ge v1, p2, :cond_3

    aget-object v0, p3, v1

    .line 113
    iget-object v3, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->f:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->f:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 118
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method public a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
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

    .line 71
    sget-object p2, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 75
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->c(Landroid/net/Uri;)Landroid/database/MatrixCursor;

    move-result-object p1

    return-object p1

    .line 73
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->b(Landroid/net/Uri;)Landroid/database/MatrixCursor;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 84
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->f:Ljava/util/Map;

    .line 89
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->f:Ljava/util/Map;

    invoke-static {p2}, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->a(Landroid/content/ContentValues;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    move-result-object p2

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 1

    .line 145
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
