.class final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioConfigurationTuple"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2071
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->a:I

    .line 2072
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->b:I

    .line 2073
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2081
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2084
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .line 2085
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->c:Ljava/lang/String;

    .line 2086
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

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

    .line 2091
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2092
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2093
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
