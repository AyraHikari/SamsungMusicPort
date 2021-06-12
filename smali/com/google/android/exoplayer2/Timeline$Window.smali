.class public final Lcom/google/android/exoplayer2/Timeline$Window;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public b:J

.field public c:J

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->h:J

    return-wide v0
.end method

.method public a(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 188
    iput-object p1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->a:Ljava/lang/Object;

    .line 189
    iput-wide p2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->b:J

    .line 190
    iput-wide p4, p0, Lcom/google/android/exoplayer2/Timeline$Window;->c:J

    .line 191
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/Timeline$Window;->d:Z

    .line 192
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/Timeline$Window;->e:Z

    .line 193
    iput-wide p8, p0, Lcom/google/android/exoplayer2/Timeline$Window;->h:J

    .line 194
    iput-wide p10, p0, Lcom/google/android/exoplayer2/Timeline$Window;->i:J

    .line 195
    iput p12, p0, Lcom/google/android/exoplayer2/Timeline$Window;->f:I

    .line 196
    iput p13, p0, Lcom/google/android/exoplayer2/Timeline$Window;->g:I

    .line 197
    iput-wide p14, p0, Lcom/google/android/exoplayer2/Timeline$Window;->j:J

    return-object p0
.end method

.method public b()J
    .locals 2

    .line 225
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->i:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->j:J

    return-wide v0
.end method
