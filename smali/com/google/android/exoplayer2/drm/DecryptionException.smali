.class public Lcom/google/android/exoplayer2/drm/DecryptionException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DecryptionException;->errorCode:I

    return-void
.end method
