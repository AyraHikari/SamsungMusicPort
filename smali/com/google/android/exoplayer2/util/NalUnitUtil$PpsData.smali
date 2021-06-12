.class public final Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PpsData"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->a:I

    .line 74
    iput p2, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->b:I

    .line 75
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->c:Z

    return-void
.end method
