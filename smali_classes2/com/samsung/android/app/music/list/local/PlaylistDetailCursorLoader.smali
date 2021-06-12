.class public Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;
.super Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

.field private d:I

.field private e:I

.field private final f:J

.field private final g:Ljava/lang/String;

.field private final h:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recommendLimit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistArgs"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p5}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    iput-wide p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->f:J

    iput-object p4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->h:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 30
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 31
    iget-wide p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->f:J

    iget-object p4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->g:Ljava/lang/String;

    invoke-static {p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;->a(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 33
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->h:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    iget-object p3, p3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    const-string p4, "playlistArgs.projection"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    array-length p4, p3

    const/4 p5, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_4

    aget-object v1, p3, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x171ba

    if-eq v2, v3, :cond_2

    const v3, 0x72923e83

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "play_order"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "0 AS play_order"

    .line 40
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v2, "_id"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "recommended_playlist_map._id + 4294967000 AS _id"

    .line 37
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 42
    :cond_3
    :goto_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_4
    check-cast p2, Ljava/util/Collection;

    .line 97
    new-array p3, p5, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-void

    .line 97
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 77
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    array-length p1, p1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_0

    const/4 v3, -0x1

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 86
    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->e:I

    return v0
.end method

.method protected c()Landroid/database/Cursor;
    .locals 7

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->h:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->d:I

    if-eqz v2, :cond_1

    .line 57
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->e:I

    const-string v4, "PlaylistDetailCursorLoader"

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playlistCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", recommendCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->e:I

    if-lez v4, :cond_3

    .line 62
    iget v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->d:I

    if-eqz v4, :cond_2

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_2

    .line 67
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    const/4 v4, 0x3

    .line 68
    new-array v4, v4, [Landroid/database/Cursor;

    aput-object v1, v4, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->h:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    const-string v5, "playlistArgs.projection"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->a([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x2

    aput-object v2, v4, v1

    .line 67
    invoke-direct {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    check-cast v0, Landroid/database/Cursor;

    return-object v0

    .line 64
    :cond_2
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.RecommendTracks.CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    return-object v1
.end method
