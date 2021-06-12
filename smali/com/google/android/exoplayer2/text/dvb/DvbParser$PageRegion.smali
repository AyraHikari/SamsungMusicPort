.class final Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageRegion"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->a:I

    .line 905
    iput p2, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->b:I

    return-void
.end method
