.class public final Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;

# The value of this static final field might be set in the static constructor
.field private static final b:Ljava/lang/String; = "FavoriteProvider-FavoriteTracksMapTriggerHelper"

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;

    const-string v0, "FavoriteProvider-FavoriteTracksMapTriggerHelper"

    .line 19
    sput-object v0, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->c:Z

    return v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->b:Ljava/lang/String;

    return-object v0
.end method
