.class public final Landroid/support/v7/media/MediaItemStatus$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaItemStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/media/MediaItemStatus$Builder;->setTimestamp(J)Landroid/support/v7/media/MediaItemStatus$Builder;

    .line 326
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaItemStatus$Builder;->setPlaybackState(I)Landroid/support/v7/media/MediaItemStatus$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/media/MediaItemStatus;)V
    .locals 1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 338
    new-instance v0, Landroid/os/Bundle;

    iget-object p1, p1, Landroid/support/v7/media/MediaItemStatus;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    return-void

    .line 335
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "status must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Landroid/support/v7/media/MediaItemStatus;
    .locals 2

    .line 390
    new-instance v0, Landroid/support/v7/media/MediaItemStatus;

    iget-object v1, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/support/v7/media/MediaItemStatus;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setContentDuration(J)Landroid/support/v7/media/MediaItemStatus$Builder;
    .locals 2

    .line 372
    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "contentDuration"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public setContentPosition(J)Landroid/support/v7/media/MediaItemStatus$Builder;
    .locals 2

    .line 363
    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "contentPosition"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v7/media/MediaItemStatus$Builder;
    .locals 2

    .line 382
    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setPlaybackState(I)Landroid/support/v7/media/MediaItemStatus$Builder;
    .locals 2

    .line 354
    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "playbackState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setTimestamp(J)Landroid/support/v7/media/MediaItemStatus$Builder;
    .locals 2

    .line 346
    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method
