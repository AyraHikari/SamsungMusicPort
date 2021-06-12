.class Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Trigger"
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->a:Z

    .line 163
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$1;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;-><init>()V

    return-void
.end method

.method private c(Landroid/content/Context;J)V
    .locals 8

    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "PlayedInfoTimeLogger execute!"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v0, "source_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    .line 201
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 202
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 203
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 204
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "SENDER"

    const-string v2, "SMUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 206
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p3, p1

    .line 198
    :try_start_1
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 208
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw p1

    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->a:Z

    .line 167
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->b:Z

    return-void
.end method

.method a(Landroid/content/Context;J)V
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->a:Z

    if-eqz v0, :cond_0

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string p2, "PlayedInfoTimeLogger Already triggered"

    .line 176
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->b:Z

    if-nez v0, :cond_1

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string p2, "PlayedInfoTimeLogger Not matched trigger condition"

    .line 180
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->a:Z

    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->c(Landroid/content/Context;J)V

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->b:Z

    return-void
.end method

.method b(Landroid/content/Context;J)V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->a()V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->b()V

    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->a(Landroid/content/Context;J)V

    return-void
.end method
