.class public Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Transformer;,
        Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/net/Uri;

.field private static final e:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "Lcom/samsung/android/app/music/model/SimpleTrack;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->c:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MilkTrack;->b()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->d:Landroid/net/Uri;

    .line 198
    new-instance v0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 225
    new-instance v0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$3;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->e:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 233
    new-instance v0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$4;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->b:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/util/Map;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Transformer;)Ljava/util/List;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Transformer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "TT;",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Transformer<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p4, "BrowseTrackDbInserter"

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bulkInsertInternal. size - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BrowseTrackDbInserterbulkInsertInternal. size["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]. hash - "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->hashCode()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 78
    invoke-interface {p3, v2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-eqz p5, :cond_1

    .line 80
    invoke-interface {p5, v2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Transformer;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    :cond_1
    const-string v3, "source_id"

    .line 82
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".insert"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;)V

    .line 87
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".insert"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, v1, p2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)V
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "TT;",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "TT;",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    move-object v0, p2

    .line 119
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$OnlineChartTracks;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "chart_id=? AND chart_type=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object v4, p0

    .line 118
    invoke-static {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 124
    sget-object v7, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->d:Landroid/net/Uri;

    sget-object v10, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->c:Ljava/util/Map;

    const/4 v11, 0x0

    move-object v6, p0

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/util/Map;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Transformer;)Ljava/util/List;

    .line 125
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$OnlineChartTracks;->b()Landroid/net/Uri;

    move-result-object v7

    new-instance v11, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;

    move v2, p1

    invoke-direct {v11, p1, p2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;-><init>(ILjava/lang/String;)V

    const/4 v10, 0x0

    move-object/from16 v9, p5

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/util/Map;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Transformer;)Ljava/util/List;

    const-string v0, "BrowseTrackDbInserter"

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshOnlineCharts. deleted - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 152
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Landroid/content/ContentValues;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/ContentValues;

    .line 151
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)[J
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[J"
        }
    .end annotation

    .line 161
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 163
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 166
    sget-object v5, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v3, "bulkInsert.queryAudioIds.query"

    .line 171
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;)V

    .line 173
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 175
    invoke-static {v1, v4}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v3, "_id"

    const-string v4, "source_id"

    .line 176
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    .line 179
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 181
    :cond_2
    sget-object v3, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->c:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 176
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 184
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    throw p2

    :cond_5
    :goto_3
    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    const-string p0, "bulkInsert.queryAudioIds.query"

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "done. size - "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->f(Ljava/lang/String;Ljava/lang/String;)J

    .line 191
    :cond_7
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_8

    .line 192
    sget-object p0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->c:Ljava/util/Map;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    aput-wide p0, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)[J
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "TT;",
            "Landroid/content/ContentValues;",
            ">;)[J"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 103
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->d:Landroid/net/Uri;

    sget-object v5, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->c:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 109
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/util/Map;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Transformer;)Ljava/util/List;

    move-result-object p1

    .line 110
    sget-object p2, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->d:Landroid/net/Uri;

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)[J

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "BrowseTrackDbInserter"

    const-string p1, "bulkInsert. track null or empty."

    .line 104
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
