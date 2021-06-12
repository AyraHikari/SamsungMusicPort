.class abstract Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;,
        Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a:Ljava/util/LinkedList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a:Ljava/util/LinkedList;

    new-instance v4, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;-><init>(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$1;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->b:Ljava/util/LinkedList;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->b:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;

    invoke-direct {v2, p0, v3}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;-><init>(Lcom/google/android/exoplayer2/text/cea/CeaDecoder;Lcom/google/android/exoplayer2/text/cea/CeaDecoder$1;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->c:Ljava/util/PriorityQueue;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)V
    .locals 1

    .line 133
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->a()V

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->h()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->e:J

    return-void
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
.end method

.method protected a(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V
    .locals 1

    .line 138
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->a()V

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    check-cast p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->b(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->g()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->d:Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 79
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->d_()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->d:Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_1

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->d:Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->f:J

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->a(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;J)J

    .line 85
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->c:Ljava/util/PriorityQueue;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->d:Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->d:Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    return-void
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 144
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->f:J

    .line 145
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->e:J

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->d:Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->d:Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->d:Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    :cond_1
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method protected abstract e()Z
.end method

.method protected abstract f()Lcom/google/android/exoplayer2/text/Subtitle;
.end method

.method public g()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 98
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->c:Ljava/util/PriorityQueue;

    .line 99
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->c:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v2, 0x4

    .line 106
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->b(I)V

    .line 107
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)V

    return-object v1

    .line 111
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->f()Lcom/google/android/exoplayer2/text/Subtitle;

    move-result-object v6

    .line 118
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->d_()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 120
    iget-wide v4, v0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->c:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->a(JLcom/google/android/exoplayer2/text/Subtitle;J)V

    .line 121
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)V

    return-object v1

    .line 126
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public h()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->d:Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->d:Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->d:Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    return-object v0
.end method
