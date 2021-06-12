.class final Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObjectData"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:[B

.field public final d:[B


# direct methods
.method public constructor <init>(IZ[B[B)V
    .locals 0

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    iput p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->a:I

    .line 1020
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->b:Z

    .line 1021
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->c:[B

    .line 1022
    iput-object p4, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->d:[B

    return-void
.end method
