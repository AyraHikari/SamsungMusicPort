.class public Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SelfContentObserver;,
        Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;,
        Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;,
        Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;,
        Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AlbumTrackCursor"


# instance fields
.field private b:Landroid/net/Uri;

.field private c:Landroid/os/Bundle;

.field private final d:Ljava/lang/Object;

.field private e:Landroid/content/ContentResolver;

.field private f:Landroid/database/ContentObserver;

.field private final g:Landroid/database/DataSetObservable;

.field private final h:Landroid/database/ContentObservable;

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

.field private final m:Landroid/database/Cursor;

.field private n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 181
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;-><init>(Landroid/database/Cursor;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;II)V
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;-><init>(Landroid/database/Cursor;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;IIZ)V
    .locals 3
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->c:Landroid/os/Bundle;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->d:Ljava/lang/Object;

    .line 92
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->g:Landroid/database/DataSetObservable;

    .line 94
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->h:Landroid/database/ContentObservable;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->i:Landroid/util/SparseArray;

    .line 190
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    const/4 v0, -0x1

    .line 191
    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    .line 192
    iput p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->o:I

    .line 193
    iput p3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->p:I

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->j:Ljava/util/ArrayList;

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->k:Ljava/util/ArrayList;

    const-string v1, "_id"

    .line 198
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->q:I

    .line 199
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    const-string v2, "track"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->r:I

    .line 200
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    const-string v2, "duration"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->s:I

    .line 201
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    const-string v2, "artist"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->t:I

    if-eqz p4, :cond_0

    .line 203
    iget-object p4, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    const-string v0, "music_album_artist"

    .line 204
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->u:I

    goto :goto_0

    .line 206
    :cond_0
    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->u:I

    :goto_0
    if-gt p2, p3, :cond_2

    .line 209
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p4

    if-ge p4, p3, :cond_1

    goto :goto_1

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a()V

    .line 216
    sget-object p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is created(size: real/subtitle/total) : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->k:Ljava/util/ArrayList;

    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " with range ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 216
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 210
    :cond_2
    :goto_1
    sget-object p4, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rangeStart must be equal and lower than rangeEnd. rangeStart : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", rangeEnd : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", cursor : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {p4, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->o:I

    return p0
.end method

.method private a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)TT;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->i:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->l:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->l:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    return-object p1

    :cond_2
    return-object v1
.end method

.method private a()V
    .locals 8

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 312
    sget-object v2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a:Ljava/lang/String;

    const-string v3, "buildCursor() > start"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;

    invoke-direct {v2}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;-><init>()V

    .line 314
    new-instance v3, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;-><init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;)V

    .line 316
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;)V

    .line 317
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;)V

    .line 319
    iget v4, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->o:I

    .line 320
    iget-object v5, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 322
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->i:Landroid/util/SparseArray;

    invoke-virtual {p0, v5, v2, v6}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(Landroid/database/Cursor;Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;Landroid/util/SparseArray;)V

    .line 323
    iget-object v5, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->j:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v3, v6, v7}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(Landroid/database/Cursor;Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    .line 325
    iget v5, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->p:I

    if-gt v4, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 326
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->i:Landroid/util/SparseArray;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;Landroid/util/SparseArray;)V

    .line 327
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->j:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v2, v4}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 329
    :cond_2
    sget-object v2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildCursor() > complete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->f:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->e:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 468
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->v:Z

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->g:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 239
    iget-wide v0, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->a:J

    iget p3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->s:I

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->a:J

    .line 240
    iget p3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->t:I

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 242
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 243
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->t:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 245
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->u:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 248
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 249
    iput p1, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->b:I

    :cond_1
    return-void
.end method

.method protected a(Landroid/database/Cursor;Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .line 268
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->r:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 269
    div-int/lit16 v0, p1, 0x3e8

    .line 270
    iget v1, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->d:I

    if-eq v1, v0, :cond_1

    .line 271
    iget-object v1, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->j:Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 273
    iget-object v1, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 276
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    iget v2, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->b:I

    iget v3, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->c:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;-><init>(II)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    const/16 v2, -0x64

    iget v3, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->b:I

    iget v4, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->c:I

    add-int/2addr v3, v4

    iget v4, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->a:I

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;-><init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;III)V

    .line 281
    iget v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->a(ILjava/lang/Object;)V

    .line 282
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iput v0, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->d:I

    .line 285
    :cond_1
    rem-int/lit16 p1, p1, 0x3e8

    const/4 p4, -0x1

    if-nez p1, :cond_2

    .line 288
    iget-object p1, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->e:Ljava/util/ArrayList;

    new-instance p3, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    iget v0, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->b:I

    invoke-direct {p3, v0, p4}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;-><init>(II)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    iget v0, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->b:I

    invoke-direct {p1, v0, p4}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;-><init>(II)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :goto_0
    iget p1, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->b:I

    return-void
.end method

.method protected a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 255
    iget-wide v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    iget v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    sget-object p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAggregateCompleteInternal (total-duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "), (single-artist : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;)V
    .locals 1

    const/4 v0, 0x0

    .line 262
    iput v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->b:I

    .line 263
    iput v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->c:I

    return-void
.end method

.method protected a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .line 298
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    iget v1, v1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 300
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 302
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 304
    :cond_1
    iget-object p3, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->e:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_2

    .line 305
    iget-object p3, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 306
    iget-object p1, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method protected a(Z)V
    .locals 3

    .line 675
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->h:Landroid/database/ContentObservable;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    .line 677
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->b:Landroid/net/Uri;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 678
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->e:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->f:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 680
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->w:Z

    .line 491
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->h:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 492
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->b()V

    .line 493
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 4

    .line 521
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 523
    iget-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    if-eqz v1, :cond_1

    .line 524
    array-length v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    .line 525
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 529
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_2

    .line 531
    :cond_2
    iput v0, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    :goto_2
    return-void
.end method

.method public deactivate()V
    .locals 0

    .line 462
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->b()V

    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->f:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->v:Z

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->e:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 730
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->w:Z

    if-nez v0, :cond_1

    .line 731
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :catch_0
    :cond_1
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 439
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getBlob is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 5

    const/16 v0, 0x2e

    .line 618
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 620
    sget-object v2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requesting column name with table name -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v0, v0, 0x1

    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 625
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 627
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 3

    .line 636
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 638
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 645
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 335
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->p:I

    iget v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->o:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    const-wide/16 v0, 0x0

    .line 413
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    .line 417
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    const/4 v0, 0x0

    .line 404
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1

    .line 408
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 381
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->l:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    if-eqz p1, :cond_0

    .line 382
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->l:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    iget p1, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->a:I

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 386
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1

    .line 390
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 395
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 399
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->b:Landroid/net/Uri;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 701
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPosition()I
    .locals 1

    .line 537
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    return v0
.end method

.method public getShort(I)S
    .locals 1

    const/4 v0, 0x0

    .line 371
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1

    .line 375
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 360
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    .line 363
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getType(I)I
    .locals 0

    const/4 p1, 0x3

    return p1
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAfterLast()Z
    .locals 2

    .line 612
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isBeforeFirst()Z
    .locals 2

    .line 607
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->w:Z

    return v0
.end method

.method public final isFirst()Z
    .locals 1

    .line 596
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLast()Z
    .locals 3

    .line 601
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    .line 602
    iget v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNull(I)Z
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->l:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->l:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public final move(I)Z
    .locals 1

    .line 571
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public final moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    .line 576
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .line 586
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 2

    .line 543
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 545
    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    return v1

    :cond_0
    const/4 v0, -0x1

    if-gez p1, :cond_1

    .line 551
    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    return v1

    .line 555
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onMove(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 557
    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    goto :goto_0

    .line 559
    :cond_2
    iput p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    :goto_0
    return v1
.end method

.method public final moveToPrevious()Z
    .locals 1

    .line 591
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->n:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final onMove(II)Z
    .locals 3

    .line 508
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    .line 509
    iget p2, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->a:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 510
    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->l:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    goto :goto_0

    .line 512
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->k:Ljava/util/ArrayList;

    iget v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->a:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->l:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    .line 514
    :goto_0
    sget-object p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMove() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->b:I

    iget v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->o:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->m:Landroid/database/Cursor;

    iget p1, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->b:I

    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->o:I

    add-int/2addr p1, v0

    invoke-interface {p2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->h:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->g:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public requery()Z
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->f:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->v:Z

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->e:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 477
    iput-boolean v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->v:Z

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->g:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return v1
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 721
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    .line 711
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->c:Landroid/os/Bundle;

    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->b:Landroid/net/Uri;

    .line 687
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->e:Landroid/content/ContentResolver;

    .line 688
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->f:Landroid/database/ContentObserver;

    if-eqz p1, :cond_0

    .line 689
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->e:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->f:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 691
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SelfContentObserver;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SelfContentObserver;-><init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->f:Landroid/database/ContentObserver;

    .line 692
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->e:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->b:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->f:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 693
    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->v:Z

    .line 694
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 655
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->w:Z

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->h:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->g:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
