.class public final Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

.field public final b:[J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->c:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->d:Ljava/lang/String;

    .line 54
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->e:J

    .line 55
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->b:[J

    .line 56
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->a:[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
