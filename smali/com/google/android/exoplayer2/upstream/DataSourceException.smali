.class public final Lcom/google/android/exoplayer2/upstream/DataSourceException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field public static final POSITION_OUT_OF_RANGE:I


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    return-void
.end method
