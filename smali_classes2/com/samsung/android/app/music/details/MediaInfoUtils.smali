.class public Lcom/samsung/android/app/music/details/MediaInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MediaInfoUtils"

.field private static final b:[Ljava/lang/String;

.field private static c:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "artist"

    const-string v3, "album"

    const-string v4, "album_artist"

    const-string v5, "genre"

    const-string v6, "duration"

    const-string v7, "track"

    const-string v8, "year"

    const-string v9, "mime_type"

    const-string v10, "bit_depth"

    const-string v11, "sampling_rate"

    const-string v12, "_size"

    const-string v13, "_data"

    const-string v14, "album_id"

    const-string v15, "artist_id"

    .line 49
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;
    .locals 1

    .line 97
    sget-object v0, Lcom/samsung/android/app/music/details/MediaInfoUtils;->c:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;
    .locals 7

    const/4 v0, 0x0

    .line 104
    :try_start_0
    sget-object v3, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 106
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    new-instance v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;-><init>()V

    .line 108
    sget-object p1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->a:J

    .line 109
    sget-object p1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->b:Ljava/lang/String;

    .line 110
    sget-object p1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object p1, p1, v3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->c:Ljava/lang/String;

    .line 111
    sget-object p1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object p1, p1, v3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->d:Ljava/lang/String;

    .line 112
    sget-object p1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object p1, p1, v3

    .line 113
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->e:Ljava/lang/String;

    .line 114
    sget-object p1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object p1, p1, v3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->f:Ljava/lang/String;

    .line 115
    sget-object p1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object p1, p1, v3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->g:J

    .line 116
    sget-object p1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object p1, p1, v3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string v3, "%d"

    .line 117
    new-array v2, v2, [Ljava/lang/Object;

    rem-int/lit16 v4, p1, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->h:Ljava/lang/String;

    .line 118
    sget-object v1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->i:Ljava/lang/String;

    .line 119
    sget-object v1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->j:Ljava/lang/String;

    .line 120
    sget-object v1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->k:I

    .line 121
    sget-object v1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->l:I

    .line 122
    sget-object v1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->m:J

    .line 123
    sget-object v1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->n:Ljava/lang/String;

    .line 124
    sget-object v1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->o:J

    .line 125
    sget-object v1, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->p:J

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 126
    :cond_0
    div-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->q:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    .line 131
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_2
    sput-object v0, Lcom/samsung/android/app/music/details/MediaInfoUtils;->c:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    return-object v0

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_3

    .line 131
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 220
    div-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 150
    iget-object v0, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0b0429

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    .line 164
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-static {}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->c()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "query"

    .line 167
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CHOOSER"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.TITLE"

    const v3, 0x7f0b0342

    .line 170
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.INTENT"

    .line 171
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    const/4 v2, 0x1

    .line 172
    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    .line 173
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 177
    :catch_0
    sget-object p0, Lcom/samsung/android/app/music/details/MediaInfoUtils;->a:Ljava/lang/String;

    const-string p1, "searchMediaInfo() - Activity Not found!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x2

    .line 182
    new-array v0, v0, [Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->c()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 185
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 186
    invoke-virtual {p0, v5, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/details/MediaInfoUtils;->a:Ljava/lang/String;

    const-string v0, "There are no available packages that launch online search."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static b()Landroid/content/Intent;
    .locals 2

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.youtube"

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static b(Landroid/content/Context;J)[Ljava/lang/String;
    .locals 11

    .line 228
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v1, p1

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double v3, v1, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpl-double v10, v3, v5

    if-ltz v10, :cond_0

    .line 232
    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 233
    new-array p2, v7, [Ljava/lang/String;

    const v0, 0x7f0b038b

    .line 234
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0b0411

    .line 235
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v8

    return-object p2

    :cond_0
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v3

    cmpl-double v3, v1, v5

    if-ltz v3, :cond_1

    .line 237
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 238
    new-array p2, v7, [Ljava/lang/String;

    const v0, 0x7f0b038a

    .line 239
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0b0410

    .line 240
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v8

    return-object p2

    .line 242
    :cond_1
    new-array v0, v7, [Ljava/lang/String;

    const v1, 0x7f0b0389

    .line 243
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const p1, 0x7f0b040f

    .line 244
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v8

    return-object v0
.end method

.method private static c()Landroid/content/Intent;
    .locals 2

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->m_:Z

    if-nez v1, :cond_0

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method
