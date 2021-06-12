.class public Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:Z

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field private n:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->n:J

    return-void
.end method

.method private a(Ljava/lang/String;)J
    .locals 4

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;
    .locals 2

    .line 140
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;-><init>()V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->a:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getAlbum()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->b:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getDiscNumber()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->c:I

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getDurationMs()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->d:I

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getExplicit()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->e:Z

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getHref()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->f:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->g:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->h:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->i:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getTrackNumber()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->j:I

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->k:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->l:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getAlbum()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getImages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getAlbum()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getAlbum()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getImages()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;->getUrl()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->m:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPlaylistTrack;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPlaylistTrack;->getTrack()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;
    .locals 5

    .line 110
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;-><init>()V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getArtistList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    const-string v2, ", "

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->a:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getDiscNumber()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->c:I

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getDurationMs()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->d:I

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getExplicit()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->e:Z

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getHref()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->f:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->g:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->h:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->i:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getTrackNumber()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->j:I

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->k:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->getUri()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->d:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->e:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->j:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()J
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->n:J

    .line 100
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->n:J

    return-wide v0
.end method
