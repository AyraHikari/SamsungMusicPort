.class final Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;,
        Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;
    }
.end annotation


# static fields
.field static final a:[I

.field static final b:[I

.field private static final c:Ljava/lang/String;

.field private static final d:Landroid/net/Uri;

.field private static final e:Landroid/net/Uri;

.field private static final f:Landroid/net/Uri;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSync-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    const/4 v0, 0x4

    .line 59
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a:[I

    const/4 v0, 0x2

    .line 67
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->b:[I

    const-string v0, "external"

    .line 75
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->d:Landroid/net/Uri;

    .line 77
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->d:Landroid/net/Uri;

    const/4 v1, 0x5

    .line 78
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->e:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/sync/local/update"

    .line 81
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->f:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "date_modified"

    .line 84
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->g:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "source_id * 1 AS source_id"

    const-string v2, "date_modified"

    .line 89
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->h:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "date_added"

    const-string v3, "date_modified"

    .line 95
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->i:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        -0x17
        -0x27
        -0xc
        -0x11
    .end array-data

    :array_1
    .array-data 4
        -0x27
        -0xc
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;)I
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    iget-object v1, p1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "source_id"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->b:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "drm_type"

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cp_attrs"

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x80008

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 188
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const-string v0, "content://com.sec.android.app.music/audio"

    .line 192
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 191
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    return p1
.end method

.method private static a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;[I)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 306
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->b:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    iget-object v4, v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->c:Ljava/lang/String;

    if-nez v4, :cond_0

    goto/16 :goto_8

    .line 315
    :cond_0
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v6, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->b:Ljava/lang/String;

    const-string v7, ","

    invoke-direct {v4, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v6, Ljava/util/StringTokenizer;

    iget-object v7, v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->c:Ljava/lang/String;

    const-string v8, ","

    invoke-direct {v6, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v8

    .line 319
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v8

    .line 324
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "_id"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " IN ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    :goto_2
    if-eqz v7, :cond_b

    if-eqz v9, :cond_b

    .line 327
    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_4

    .line 329
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_3
    move-object v9, v8

    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    if-gez v16, :cond_6

    .line 332
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_5
    move-object v7, v8

    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 335
    :cond_6
    iget-object v9, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->c:Ljava/util/List;

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 336
    iget-object v9, v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->d:Ljava/util/List;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v9, v16, v18

    if-eqz v9, :cond_7

    .line 339
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    iget-object v7, v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->b:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v10, 0x1

    const/4 v9, 0x5

    if-ne v7, v9, :cond_8

    .line 344
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v13, v3}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;[I)I

    move-result v7

    add-int/2addr v12, v7

    .line 347
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v7, "_id"

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " IN ("

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    move v7, v10

    .line 352
    :cond_8
    :goto_5
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_9
    move-object v9, v8

    .line 353
    :goto_6
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_a
    move-object v10, v8

    :goto_7
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v20, v10

    move v10, v7

    move-object v7, v9

    move-object/from16 v9, v20

    goto/16 :goto_2

    :cond_b
    if-lez v10, :cond_c

    .line 360
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13, v3}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;[I)I

    move-result v0

    add-int/2addr v12, v0

    :cond_c
    return v12

    :cond_d
    :goto_8
    return v5
.end method

.method private static a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;[I)I
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-wide/16 v0, 0x0

    move-wide v10, v0

    move-wide v13, v10

    const/4 v12, 0x0

    .line 214
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    iget-object v2, v8, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "_id"

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->c:Ljava/lang/String;

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "_data"

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LIKE \'%.mdrm\' COLLATE NOCASE AND "

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 226
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->e:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->i:[Ljava/lang/String;

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v16, "_id"

    move-object/from16 v1, p0

    move-object v9, v6

    move-object/from16 v6, v16

    .line 227
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v1, :cond_1

    .line 229
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_1
    move-object v2, v0

    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    :goto_3
    move-object v2, v0

    goto/16 :goto_8

    :cond_1
    const/4 v3, 0x0

    :goto_4
    if-lez v3, :cond_7

    const-string v3, "_id"

    .line 231
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "_data"

    .line 232
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "date_added"

    .line 233
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "date_modified"

    .line 235
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 242
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v16, :cond_4

    .line 243
    :try_start_2
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 244
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    :try_start_3
    sget v14, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v13, v14}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v14
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v14, :cond_2

    :catch_1
    move-object/from16 v14, p2

    :goto_6
    move/from16 v23, v3

    move/from16 v24, v4

    goto :goto_7

    .line 256
    :cond_2
    :try_start_4
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 257
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 259
    invoke-static {v7, v13}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v13
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v14, p2

    .line 261
    :try_start_5
    invoke-static {v7, v13, v14}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;[I)Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_6

    :cond_3
    move/from16 v23, v3

    const-string v3, "source_id"

    move/from16 v24, v4

    .line 266
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "date_added"

    .line 267
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "date_modified"

    .line 268
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "validity"

    const-string v4, "DRM_CONTENT_KEY_EXPIRED_TIME"

    .line 270
    invoke-interface {v13, v4}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 269
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "track_id"

    const-string v4, "DRM_CONTENT_KEY_TRACK_ID"

    .line 272
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 275
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "DRM_CONTENT_KEY_ENCODED_LYRIC"

    .line 277
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v3, "DRM_CONTENT_KEY_ENCODED_ALBUMART"

    .line 278
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v3, "DRM_CONTENT_KEY_TRACK_ID"

    .line 279
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 280
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-static {v7, v13}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    :goto_7
    move-wide/from16 v13, v17

    move/from16 v3, v23

    move/from16 v4, v24

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v14, p2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v14, p2

    goto/16 :goto_3

    .line 286
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 285
    invoke-static {v7, v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/2addr v12, v0

    .line 288
    :try_start_6
    invoke-static {v7, v15}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_9

    .line 292
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_c

    :catch_3
    move-wide v10, v13

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-wide v10, v13

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object v2, v0

    move-wide v10, v13

    .line 226
    :goto_8
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    :goto_9
    if-eqz v1, :cond_6

    if-eqz v3, :cond_5

    .line 292
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v1, v0

    :try_start_a
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_a
    throw v2

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_6

    :cond_8
    return v12

    :catch_6
    :goto_b
    move-wide v13, v10

    :cond_9
    :goto_c
    move-wide v10, v13

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;[I)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;[I)I"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 373
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->d:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->i:[Ljava/lang/String;

    const-string v6, "_id"

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    .line 374
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_7

    .line 376
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v3, "_id"

    .line 379
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "_data"

    .line 380
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "date_added"

    .line 381
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "date_modified"

    .line 382
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 389
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    .line 391
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :try_start_1
    sget v10, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v0, v10}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v10
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_1

    .line 401
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    const-string v10, "file is not exists."

    invoke-static {v0, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, p3

    :goto_1
    move/from16 v19, v3

    move-object/from16 v3, p2

    goto/16 :goto_2

    .line 405
    :cond_1
    invoke-static {v7, v0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v0

    move-object/from16 v10, p3

    .line 407
    invoke-static {v7, v0, v10}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;[I)Landroid/content/ContentValues;

    move-result-object v11

    if-nez v11, :cond_2

    .line 409
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    const-string v11, "value is null."

    invoke-static {v0, v11}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 413
    :cond_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 414
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 415
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v2, "_id"

    add-int/lit8 v18, v9, 0x1

    move/from16 v19, v3

    move-object/from16 v3, p2

    .line 416
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v11, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "source_id"

    .line 417
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_added"

    .line 418
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_modified"

    .line 419
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "validity"

    const-string v9, "DRM_CONTENT_KEY_EXPIRED_TIME"

    .line 421
    invoke-interface {v0, v9}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 420
    invoke-virtual {v11, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "track_id"

    const-string v9, "DRM_CONTENT_KEY_TRACK_ID"

    .line 423
    invoke-virtual {v11, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 422
    invoke-virtual {v11, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DRM_CONTENT_KEY_TRACK_ID"

    .line 424
    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "DRM_CONTENT_KEY_ENCODED_LYRIC"

    .line 425
    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "DRM_CONTENT_KEY_ENCODED_ALBUMART"

    .line 426
    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 427
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-static {v7, v0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    move/from16 v9, v18

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v10, p3

    move/from16 v19, v3

    move-object/from16 v3, p2

    .line 397
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Os.access error. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move/from16 v3, v19

    goto/16 :goto_0

    .line 430
    :cond_3
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->f:Landroid/net/Uri;

    .line 431
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "match"

    const-string v3, "mdrm"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 432
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    .line 430
    invoke-static {v7, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 433
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 373
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    :goto_3
    if-eqz v1, :cond_6

    if-eqz v3, :cond_5

    .line 433
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_4
    throw v2

    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    return v0
.end method

.method static a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;[I)Landroid/content/ContentValues;
    .locals 16

    move-object/from16 v0, p1

    .line 473
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 474
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 479
    :try_start_0
    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    const-string v6, "makeMdrmMetaContentValue : mdrmContent start!"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result v5

    .line 481
    sget-object v6, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeMdrmMetaContentValue errorCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    if-gez v5, :cond_0

    move-object/from16 v6, p2

    .line 482
    invoke-static {v6, v5}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a([II)Z

    move-result v5

    if-nez v5, :cond_0

    return-object v3

    :cond_0
    const-string v5, "DRM_CONTENT_KEY_TRACK_ID"

    .line 488
    invoke-interface {v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 489
    sget-object v6, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeMdrmMetaContentValue : mdrmContent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 490
    sget-object v6, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeMdrmMetaContentValue : mdrmContent trackId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "DRM_CONTENT_KEY_META_BUFFER"

    .line 491
    invoke-interface {v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 492
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_5

    .line 501
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 502
    new-instance v0, Lorg/json/JSONObject;

    const-string v6, "SoribadaApiResponse"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "tkey"

    .line 504
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tpe1"

    .line 505
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/lang3/StringEscapeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "tpe2"

    .line 506
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/lang3/StringEscapeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "tit2"

    .line 507
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/lang3/StringEscapeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "tyer"

    .line 508
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "trck"

    .line 509
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "talb"

    .line 510
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "tlen"

    .line 511
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    const-string v13, "tcon"

    .line 513
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/commons/lang3/StringEscapeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    :catch_0
    move-object v13, v3

    :goto_0
    :try_start_2
    const-string v14, "uslt"

    .line 518
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    :catch_1
    move-object v14, v3

    :goto_1
    :try_start_3
    const-string v15, "apic"

    .line 523
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_2

    :catch_2
    move-object v15, v3

    :goto_2
    :try_start_4
    const-string v3, "tpos"

    .line 528
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    rem-int/lit16 v3, v3, 0x3e8

    add-int/2addr v0, v3

    .line 529
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_6

    :catch_4
    move-exception v0

    .line 534
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 532
    :catch_5
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    const-string v3, "Disk num not exist."

    invoke-static {v4, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v0, v10

    :goto_4
    const-string v3, "drm_type"

    const/4 v10, 0x2

    .line 536
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "album_art_location"

    .line 537
    sget-object v10, Lcom/samsung/android/app/music/provider/MusicContents$AlbumArtLocationExtra;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "title"

    .line 539
    invoke-virtual {v1, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album"

    .line 540
    invoke-virtual {v1, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "artist"

    .line 541
    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "genre"

    .line 542
    invoke-virtual {v1, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album_artist"

    .line 543
    invoke-virtual {v1, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "track"

    .line 544
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "duration"

    .line 545
    invoke-virtual {v1, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sampling_rate"

    const v3, 0xac44

    .line 546
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "mime_type"

    const-string v3, "audio/mpeg"

    .line 547
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bit_depth"

    const/16 v3, 0x10

    .line 548
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "year"

    .line 549
    invoke-virtual {v1, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DRM_CONTENT_KEY_ENCODED_LYRIC"

    .line 550
    invoke-virtual {v1, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DRM_CONTENT_KEY_ENCODED_ALBUMART"

    .line 551
    invoke-virtual {v1, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DRM_CONTENT_KEY_TRACK_ID"

    .line 552
    invoke-virtual {v1, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "_data"

    .line 555
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_size"

    .line 556
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "date_modified"

    .line 557
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "cp_attrs"

    const v3, 0x80001

    .line 558
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "is_secretbox"

    .line 561
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :cond_2
    :goto_5
    move-object v1, v3

    return-object v1

    :catch_6
    move-exception v0

    move-object v1, v3

    .line 569
    :goto_6
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync failed (Mdrm content)! "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-object v1
.end method

.method static a(Landroid/content/Context;Ljava/util/EnumSet;Z[ILjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/music/provider/sync/SyncOperation;",
            ">;Z[I",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;"
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 119
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 122
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    return-object p0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const-string v4, "drm_type=2 AND cp_attrs!=524296"

    .line 133
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "date_modified"

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    .line 136
    invoke-static {p0, v6, v5, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    .line 144
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;

    move-result-object v0

    .line 145
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;)I

    move-result v4

    goto :goto_0

    :cond_2
    move-object v0, v2

    const/4 v4, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 149
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->b(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;

    move-result-object v2

    .line 150
    invoke-static {p0, v2, p3}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;[I)I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    if-nez v0, :cond_4

    .line 155
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;

    move-result-object v0

    :cond_4
    if-nez v2, :cond_5

    .line 158
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->b(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;

    move-result-object v2

    .line 160
    :cond_5
    invoke-static {p0, v0, v2, p3}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;[I)I

    move-result p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    if-nez v4, :cond_7

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    .line 164
    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " I:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", D:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", U:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", forcedSync:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    .line 167
    new-array p3, p3, [Ljava/lang/String;

    aput-object p2, p3, v3

    invoke-static {p0, p3}, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 169
    :cond_8
    new-instance p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    invoke-direct {p0, v1, v4, p1}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;-><init>(III)V

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;
    .locals 8

    .line 591
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->d:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->g:[Ljava/lang/String;

    const-string v3, "_data LIKE \'%.mdrm\' COLLATE NOCASE"

    const-string v5, "_id"

    const/4 v4, 0x0

    move-object v0, p0

    .line 592
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    .line 594
    :try_start_0
    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$1;)V

    if-eqz p0, :cond_5

    .line 595
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 602
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->a:I

    .line 603
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->a:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->c:Ljava/util/List;

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id"

    .line 607
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "date_modified"

    .line 608
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 613
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 614
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 618
    :cond_1
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 619
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    iget-object v5, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->c:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 623
    :cond_2
    iget v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->a:I

    if-lez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 624
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz p0, :cond_4

    .line 627
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    const/4 v2, 0x0

    .line 596
    :try_start_1
    iput v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->a:I

    .line 597
    iput-object v0, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->b:Ljava/lang/String;

    .line 598
    iput-object v0, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$SourceCombinedInfo;->c:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_6

    .line 627
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 591
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p0, :cond_8

    if-eqz v0, :cond_7

    .line 627
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_3
    throw v1
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 438
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 439
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 443
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "DRM_CONTENT_KEY_TRACK_ID"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 445
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "DRM_CONTENT_KEY_ENCODED_ALBUMART"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "source_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 447
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMetadataViaServerApi : sourceId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_2

    if-eqz v2, :cond_2

    .line 449
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMetadataViaServerApi : trackId - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 451
    array-length v3, v2

    .line 452
    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-long v3, v8

    .line 453
    invoke-static {p0, v3, v4}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->a(Landroid/content/Context;J)Landroid/content/ContentValues;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 455
    invoke-static {p0, v3, v2}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->a(Landroid/content/Context;Landroid/content/ContentValues;Landroid/graphics/Bitmap;)Z

    goto :goto_1

    .line 457
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleHttpResponse >> bitmap is null. - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_2
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v9, :cond_3

    .line 463
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 464
    new-instance v2, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;-><init>(Landroid/content/Context;IIILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 466
    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->a()V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private static a([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 582
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static b(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;
    .locals 12

    .line 631
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->h:[Ljava/lang/String;

    const-string v3, "drm_type=2 AND cp_attrs!=524296"

    const-string v5, "source_id"

    const/4 v4, 0x0

    move-object v0, p0

    .line 632
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    .line 634
    :try_start_0
    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$1;)V

    if-eqz p0, :cond_5

    .line 635
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 643
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->a:I

    .line 644
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->a:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->b:Ljava/util/List;

    .line 645
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->a:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->d:Ljava/util/List;

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id"

    .line 649
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "source_id"

    .line 650
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "date_modified"

    .line 651
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 657
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 658
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 659
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 661
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTargetCombinedInfo() there is unmatched mdrm tracks "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 662
    sget-object v8, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->c:Ljava/lang/String;

    invoke-static {v7, v8, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_1
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 670
    iget-object v7, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->b:Ljava/util/List;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    iget-object v6, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->d:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 675
    :cond_2
    iget v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->a:I

    if-lez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 677
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz p0, :cond_4

    .line 680
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    const/4 v2, 0x0

    .line 636
    :try_start_1
    iput v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->a:I

    .line 637
    iput-object v0, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->b:Ljava/util/List;

    .line 638
    iput-object v0, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->c:Ljava/lang/String;

    .line 639
    iput-object v0, v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper$TargetCombinedInfo;->d:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_6

    .line 680
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 631
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p0, :cond_8

    if-eqz v0, :cond_7

    .line 680
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_3
    throw v1
.end method
