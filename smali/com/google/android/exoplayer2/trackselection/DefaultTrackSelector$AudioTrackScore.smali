.class final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioTrackScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V
    .locals 1

    .line 1981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1982
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    const/4 v0, 0x0

    .line 1983
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->b:I

    .line 1984
    iget-object p2, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->c:I

    .line 1985
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->x:I

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->d:I

    .line 1986
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->r:I

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->e:I

    .line 1987
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->s:I

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->f:I

    .line 1988
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->b:I

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->g:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2000
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->b:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->b:I

    if-eq v0, v1, :cond_0

    .line 2001
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->b:I

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->b:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    return p1

    .line 2003
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->c:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->c:I

    if-eq v0, v1, :cond_1

    .line 2004
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->c:I

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->c:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    return p1

    .line 2005
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->d:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->d:I

    if-eq v0, v1, :cond_2

    .line 2006
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->d:I

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->d:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    return p1

    .line 2007
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->m:Z

    if-eqz v0, :cond_3

    .line 2008
    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->g:I

    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->g:I

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    return p1

    .line 2012
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    .line 2013
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->e:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->e:I

    if-eq v0, v2, :cond_5

    .line 2014
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->e:I

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->e:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    mul-int v1, v1, p1

    return v1

    .line 2015
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->f:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->f:I

    if-eq v0, v2, :cond_6

    .line 2016
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->f:I

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->f:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    mul-int v1, v1, p1

    return v1

    .line 2018
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->g:I

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->g:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    mul-int v1, v1, p1

    return v1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1972
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2027
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2031
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    .line 2033
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->d:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->e:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->e:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->f:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->f:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->g:I

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->g:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 2042
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2043
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2044
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2045
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2046
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2047
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->g:I

    add-int/2addr v0, v1

    return v0
.end method
