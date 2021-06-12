.class Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->a(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;

.field final synthetic b:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$1;->b:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$1;->a:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 6
    .param p1    # Landroid/media/MediaDrm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$1;->a:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$1;->b:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;->a(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BII[B)V

    return-void
.end method
