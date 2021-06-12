.class public Lcom/samsung/android/app/music/recommend/PlaylistSeed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/app/music/recommend/PlaylistSeed;->a:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcom/samsung/android/app/music/recommend/PlaylistSeed;->b:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 18
    instance-of v0, p1, Lcom/samsung/android/app/music/recommend/PlaylistSeed;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 26
    :cond_1
    check-cast p1, Lcom/samsung/android/app/music/recommend/PlaylistSeed;

    .line 28
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/recommend/PlaylistSeed;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/music/recommend/PlaylistSeed;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->e(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/app/music/recommend/PlaylistSeed;->b:J

    iget-wide v3, p1, Lcom/samsung/android/app/music/recommend/PlaylistSeed;->b:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b()Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 34
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/app/music/recommend/PlaylistSeed;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->d(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/app/music/recommend/PlaylistSeed;->b:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlistId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/recommend/PlaylistSeed;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audio - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/recommend/PlaylistSeed;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
