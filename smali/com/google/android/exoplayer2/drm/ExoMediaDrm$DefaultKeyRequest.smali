.class public final Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultKeyRequest"
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;->a:[B

    .line 161
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;->a:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;->b:Ljava/lang/String;

    return-object v0
.end method
