.class public final Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;

# The value of this static final field might be set in the static constructor
.field private static final b:Ljava/lang/String; = "FavoriteProvider-FavoriteTracksMapTriggerHelper"

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;

    const-string v0, "FavoriteProvider-FavoriteTracksMapTriggerHelper"

    .line 18
    sput-object v0, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 16
    sget-boolean v0, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->c:Z

    return v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->b:Ljava/lang/String;

    return-object v0
.end method
