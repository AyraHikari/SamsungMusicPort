.class final Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$onMetadataChanged$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

.field final synthetic b:I

.field final synthetic c:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$onMetadataChanged$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    iput p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$onMetadataChanged$1;->b:I

    iput-wide p3, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$onMetadataChanged$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$onMetadataChanged$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    iget v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$onMetadataChanged$1;->b:I

    iget-wide v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$onMetadataChanged$1;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;IJ)V

    return-void
.end method
