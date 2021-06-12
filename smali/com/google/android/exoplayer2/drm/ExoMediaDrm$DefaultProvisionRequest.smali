.class public final Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultProvisionRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultProvisionRequest"
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultProvisionRequest;->a:[B

    .line 194
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultProvisionRequest;->b:Ljava/lang/String;

    return-void
.end method
