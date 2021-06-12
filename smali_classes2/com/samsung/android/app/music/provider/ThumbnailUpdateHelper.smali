.class public final Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;,
        Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;
    }
.end annotation


# static fields
.field private static final a:Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a:Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 194
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->b(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0xc8

    if-le p0, v0, :cond_0

    const-string p0, "big"

    return-object p0

    :cond_0
    const/16 v0, 0x60

    if-le p0, v0, :cond_1

    const-string p0, "middle"

    return-object p0

    :cond_1
    const-string p0, "small"

    return-object p0
.end method

.method private static a(Landroid/content/ContentValues;Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;)Ljava/util/List;
    .locals 6
    .param p0    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x258

    const/16 v2, 0xc8

    const/16 v3, 0x60

    if-nez p1, :cond_0

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const-string v4, "image_url_small"

    .line 156
    iget-object v5, p1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->a:Ljava/lang/String;

    invoke-static {p0, v4, v5}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "image_url_small"

    .line 159
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->a:Ljava/lang/String;

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v3, "image_url_middle"

    .line 163
    iget-object v4, p1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->b:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "image_url_middle"

    .line 166
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->b:Ljava/lang/String;

    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "image_url_big"

    .line 170
    iget-object v3, p1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->c:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "image_url_big"

    .line 173
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->c:Ljava/lang/String;

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public static a()V
    .locals 1

    .line 126
    sget-object v0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a:Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a()V

    return-void
.end method

.method private static varargs a(Landroid/content/Context;JI[I)V
    .locals 3

    const-string v0, "ThumbnailUpdateHelper"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify album uri changes for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", changed size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {p4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.THUMBNAIL_URI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "album_id"

    .line 137
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "cp_attrs"

    .line 138
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p4, :cond_0

    const-string p1, "changed_image_size"

    .line 140
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 105
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "thumbnail_type"

    const/4 v1, 0x0

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 106
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image_url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 114
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "image_url_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    .line 119
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "image_url_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->a()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/DaoMaster;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/high16 v5, 0x80000

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V
    .locals 6

    .line 53
    invoke-static {p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->convertToThumbnail(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move v5, p5

    .line 54
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    return-void
.end method

.method private static a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 181
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/util/UriUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string v1, "ThumbnailUpdateHelper"

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wasChanged. uri changed. key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",  from: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "http://"

    const-string v2, ""

    .line 208
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    const-string v3, ""

    .line 209
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 212
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_6

    const/4 v2, 0x2

    .line 213
    aget-object v3, v1, v2

    const-string v4, "Small"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x60

    if-eqz v3, :cond_1

    return v4

    .line 215
    :cond_1
    aget-object v3, v1, v2

    const-string v5, "Large"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v5, 0x258

    const/16 v6, 0xc8

    if-eqz v3, :cond_3

    .line 218
    :try_start_0
    aget-object v1, v1, v2

    const-string v2, "Large"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ThumbnailUpdateHelper"

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImagePixelSize. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url - "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-gt v0, v6, :cond_2

    return v6

    :cond_2
    return v5

    :cond_3
    const/4 v2, 0x1

    .line 226
    aget-object v3, v1, v2

    const-string v7, "album"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 227
    array-length v3, v1

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    :try_start_1
    const-string v3, "."

    .line 229
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v7, "_"

    .line 230
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-gt v0, v6, :cond_4

    return v6

    :cond_4
    return v5

    :catch_1
    move-exception v0

    const-string v1, "ThumbnailUpdateHelper"

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImagePixelSize. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v4

    :cond_6
    const-string v1, "ThumbnailUpdateHelper"

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageSize wrong url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_7
    :goto_1
    const-string p0, "ThumbnailUpdateHelper"

    const-string v1, "getImagePixelSize() url is empty"

    .line 205
    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V
    .locals 9

    const-wide/16 v0, -0x1

    cmp-long v0, v0, p3

    if-nez v0, :cond_0

    const-string p0, "ThumbnailUpdateHelper"

    const-string p1, "insertThumbnailInternal. albumId undefined."

    .line 59
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "thumbnail_id"

    .line 63
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "thumbnail_type"

    .line 65
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "milk_thumbnails"

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const-string v7, "lock"

    .line 71
    monitor-enter v7

    .line 72
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a:Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a(Landroid/content/Context;)V

    .line 73
    sget-object v1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a:Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;

    const/4 v6, 0x1

    move-object v2, p0

    move-wide v3, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a(Landroid/content/Context;JLjava/lang/String;Z)Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;

    move-result-object v1

    .line 80
    invoke-static {p2, v1}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/ContentValues;Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;)Ljava/util/List;

    move-result-object v8

    .line 81
    sget-object v1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a:Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;

    new-instance v6, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;

    invoke-direct {v6, p2}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;-><init>(Landroid/content/ContentValues;)V

    move-object v2, p0

    move-wide v3, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a(Landroid/content/Context;JLjava/lang/String;Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;)V

    .line 82
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "thumbnail_id=? AND thumbnail_type=?"

    const-string v2, "milk_thumbnails"

    const/4 v3, 0x2

    .line 88
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 89
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 88
    invoke-virtual {p1, v2, p2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    invoke-static {v8}, Lcom/samsung/android/app/music/util/CollectionsUtils;->a(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-static {p0, p3, p4, p5, p1}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/Context;JI[I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 82
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const-string p1, "lock"

    .line 98
    monitor-enter p1

    .line 99
    :try_start_2
    sget-object v1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a:Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;

    new-instance v6, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;

    invoke-direct {v6, p2}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;-><init>(Landroid/content/ContentValues;)V

    move-object v2, p0

    move-wide v3, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a(Landroid/content/Context;JLjava/lang/String;Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;)V

    .line 100
    monitor-exit p1

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
