.class Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;
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
    name = "RecentlyPlayed"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

.field private final b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->b()V

    .line 115
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "recently_played"

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 120
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PLMU"

    const-string v2, "Streaming"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PLMU"

    const-string v2, "Local"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " current meta :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    .line 109
    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->a:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

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
