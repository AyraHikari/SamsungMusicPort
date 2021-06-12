.class Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MostPlayed"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

.field private final b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    .line 147
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->b(Landroid/content/Context;J)V

    .line 148
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v3

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    .line 149
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v2, "most_played"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 148
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 151
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v6, "most_played"

    const/4 v7, 0x0

    .line 153
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6, v0, v1, v4}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Landroid/content/Context;JLandroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 148
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    .line 156
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw v0

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " current meta :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    .line 141
    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
