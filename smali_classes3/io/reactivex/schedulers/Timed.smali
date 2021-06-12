.class public final Lio/reactivex/schedulers/Timed;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/reactivex/schedulers/Timed;->a:Ljava/lang/Object;

    .line 40
    iput-wide p2, p0, Lio/reactivex/schedulers/Timed;->b:J

    const-string p1, "unit is null"

    .line 41
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lio/reactivex/schedulers/Timed;->c:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lio/reactivex/schedulers/Timed;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 81
    instance-of v0, p1, Lio/reactivex/schedulers/Timed;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 82
    check-cast p1, Lio/reactivex/schedulers/Timed;

    .line 83
    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->a:Ljava/lang/Object;

    iget-object v2, p1, Lio/reactivex/schedulers/Timed;->a:Ljava/lang/Object;

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lio/reactivex/schedulers/Timed;->b:J

    iget-wide v4, p1, Lio/reactivex/schedulers/Timed;->b:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->c:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p1, Lio/reactivex/schedulers/Timed;->c:Ljava/util/concurrent/TimeUnit;

    .line 85
    invoke-static {v0, p1}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 92
    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-wide v2, p0, Lio/reactivex/schedulers/Timed;->b:J

    ushr-long/2addr v2, v1

    iget-wide v4, p0, Lio/reactivex/schedulers/Timed;->b:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v1, p0, Lio/reactivex/schedulers/Timed;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timed[time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/reactivex/schedulers/Timed;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/reactivex/schedulers/Timed;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/reactivex/schedulers/Timed;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
