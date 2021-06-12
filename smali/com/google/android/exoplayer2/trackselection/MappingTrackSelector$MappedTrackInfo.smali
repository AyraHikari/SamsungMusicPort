.class public final Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation


# instance fields
.field public final a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final b:I

.field private final c:[I

.field private final d:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final e:[I

.field private final f:[[[I

.field private final g:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method constructor <init>([I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->c:[I

    .line 103
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->d:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 104
    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->f:[[[I

    .line 105
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->e:[I

    .line 106
    iput-object p5, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 107
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->b:I

    .line 108
    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->b:I

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->b:I

    return v0
.end method

.method public a(I)I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public b(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->d:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object p1, v0, p1

    return-object p1
.end method
