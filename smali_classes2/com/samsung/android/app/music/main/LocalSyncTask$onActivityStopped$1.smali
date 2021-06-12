.class final Lcom/samsung/android/app/music/main/LocalSyncTask$onActivityStopped$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/LocalSyncTask;->b(Lcom/samsung/android/app/music/main/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/LocalSyncTask$onActivityStopped$1;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    .line 49
    iget-object v1, p0, Lcom/samsung/android/app/music/main/LocalSyncTask$onActivityStopped$1;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_SYNC_DOWN:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const-string v3, "EnumSet.of(SyncOperation.LOCAL_PLAYLIST_SYNC_DOWN)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->a(Landroid/content/Context;Ljava/util/EnumSet;)V

    return-void
.end method
