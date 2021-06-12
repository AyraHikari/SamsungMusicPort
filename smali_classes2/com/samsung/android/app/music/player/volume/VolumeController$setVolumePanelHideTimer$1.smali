.class final Lcom/samsung/android/app/music/player/volume/VolumeController$setVolumePanelHideTimer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/volume/VolumeController;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/volume/VolumeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/volume/VolumeController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$setVolumePanelHideTimer$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$setVolumePanelHideTimer$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->c()V

    return-void
.end method
