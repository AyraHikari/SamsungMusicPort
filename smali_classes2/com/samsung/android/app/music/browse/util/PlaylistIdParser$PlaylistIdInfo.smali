.class public Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistIdInfo"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->b:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const-string v0, "TOPCHART"

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b()Z
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const-string v0, "ALBUM"

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c()Z
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const-string v0, "ARTIST"

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d()Z
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const-string v0, "JFY"

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e()Z
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "BA"

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "BS"

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "BG"

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->b:Ljava/lang/String;

    return-object v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
