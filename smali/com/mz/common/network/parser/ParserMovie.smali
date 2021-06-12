.class public Lcom/mz/common/network/parser/ParserMovie;
.super Lcom/mz/common/network/parser/ParserNTCommonResponse;
.source "SourceFile"


# instance fields
.field private a:Lcom/mz/common/network/data/DataNTMovie;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mz/common/network/parser/ParserNTCommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserMovie;->a:Lcom/mz/common/network/data/DataNTMovie;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/io/InputStream;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserMovie;->a:Lcom/mz/common/network/data/DataNTMovie;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lcom/mz/common/network/data/DataNTMovie;

    invoke-direct {p1}, Lcom/mz/common/network/data/DataNTMovie;-><init>()V

    iput-object p1, p0, Lcom/mz/common/network/parser/ParserMovie;->a:Lcom/mz/common/network/data/DataNTMovie;

    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserMovie;->a:Lcom/mz/common/network/data/DataNTMovie;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMovie;->b()V

    .line 28
    :goto_0
    invoke-static {p2}, Lcom/mz/common/network/parser/ParserMovie;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "jsonToString : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 30
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "vast"

    .line 31
    invoke-virtual {p0, p2, p1}, Lcom/mz/common/network/parser/ParserMovie;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    const-string v0, ""

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 33
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserMovie;->a:Lcom/mz/common/network/data/DataNTMovie;

    const-string v1, "version"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTMovie;->a(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserMovie;->a:Lcom/mz/common/network/data/DataNTMovie;

    const-string v1, "ad_type"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTMovie;->c(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserMovie;->a:Lcom/mz/common/network/data/DataNTMovie;

    const-string v1, "use_ssp"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTMovie;->b(Ljava/lang/String;)V

    const-string v0, "ad"

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserMovie;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 38
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_1

    goto/16 :goto_5

    .line 42
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/mz/common/network/parser/ParserMovie;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 43
    new-instance v4, Lcom/mz/common/network/data/DataMovieAD;

    invoke-direct {v4}, Lcom/mz/common/network/data/DataMovieAD;-><init>()V

    const-string v5, "id"

    .line 44
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->a(Ljava/lang/String;)V

    const-string v5, "sequence"

    .line 45
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->b(Ljava/lang/String;)V

    const-string v5, "inline"

    .line 46
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v5, "adsystem"

    .line 48
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "version"

    .line 50
    invoke-virtual {p0, v5, v6}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->c(Ljava/lang/String;)V

    :cond_2
    const-string v5, "adtitle"

    .line 52
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->d(Ljava/lang/String;)V

    const-string v5, "extensions"

    .line 53
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "requestid"

    .line 55
    invoke-virtual {p0, v5, v6}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->e(Ljava/lang/String;)V

    :cond_3
    const-string v5, "error"

    .line 57
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->f(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4}, Lcom/mz/common/network/data/DataMovieAD;->c()Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "impression"

    invoke-virtual {p0, v3, v6}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "creatives"

    .line 59
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v5, "creative"

    .line 61
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v5, "id"

    .line 63
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->g(Ljava/lang/String;)V

    const-string v5, "sequence"

    .line 64
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->h(Ljava/lang/String;)V

    const-string v5, "linear"

    .line 65
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v5, "skipoffset"

    .line 67
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->i(Ljava/lang/String;)V

    const-string v5, "duration"

    .line 68
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->j(Ljava/lang/String;)V

    const-string v5, "trackingevents"

    .line 69
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "tracking"

    .line 71
    invoke-virtual {p0, v5, v6}, Lcom/mz/common/network/parser/ParserMovie;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 73
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_6

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v6, :cond_4

    goto :goto_4

    .line 77
    :cond_4
    new-instance v8, Lcom/mz/common/network/data/DataTracking;

    invoke-direct {v8}, Lcom/mz/common/network/data/DataTracking;-><init>()V

    .line 78
    invoke-virtual {p0, v5, v7}, Lcom/mz/common/network/parser/ParserMovie;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "event"

    .line 79
    invoke-virtual {p0, v9, v10}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/mz/common/network/data/DataTracking;->a(Ljava/lang/String;)V

    const-string v10, "event_traking"

    .line 80
    invoke-virtual {p0, v9, v10}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/mz/common/network/data/DataTracking;->c(Ljava/lang/String;)V

    const-string v10, "offset"

    .line 81
    invoke-virtual {p0, v9, v10}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mz/common/network/data/DataTracking;->b(Ljava/lang/String;)V

    const-string v9, "skip"

    .line 82
    invoke-virtual {v8}, Lcom/mz/common/network/data/DataTracking;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 83
    invoke-virtual {v8, v0}, Lcom/mz/common/network/data/DataTracking;->a(Z)V

    goto :goto_3

    .line 85
    :cond_5
    invoke-virtual {v8, p2}, Lcom/mz/common/network/data/DataTracking;->a(Z)V

    .line 87
    :goto_3
    invoke-virtual {v8, p2}, Lcom/mz/common/network/data/DataTracking;->b(Z)V

    .line 88
    invoke-virtual {v4, v8}, Lcom/mz/common/network/data/DataMovieAD;->a(Lcom/mz/common/network/data/DataTracking;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    const-string v5, "videoclicks"

    .line 93
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v6, "clickthrough"

    .line 95
    invoke-virtual {p0, v5, v6}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mz/common/network/data/DataMovieAD;->k(Ljava/lang/String;)V

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "clicktracking"

    .line 98
    invoke-virtual {p0, v5, v7}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v4, v6}, Lcom/mz/common/network/data/DataMovieAD;->a(Ljava/util/ArrayList;)V

    const-string v6, "offset"

    .line 100
    invoke-virtual {p0, v5, v6}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->l(Ljava/lang/String;)V

    :cond_7
    const-string v5, "mediafiles"

    .line 102
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v5, "mediafile"

    .line 104
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v5, "delivery"

    .line 106
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->m(Ljava/lang/String;)V

    const-string v5, "type"

    .line 107
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->n(Ljava/lang/String;)V

    const-string v5, "width"

    .line 108
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->o(Ljava/lang/String;)V

    const-string v5, "height"

    .line 109
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->p(Ljava/lang/String;)V

    const-string v5, "bitrate"

    .line 110
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mz/common/network/data/DataMovieAD;->q(Ljava/lang/String;)V

    const-string v5, "mediafile_src"

    .line 111
    invoke-virtual {p0, v3, v5}, Lcom/mz/common/network/parser/ParserMovie;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/mz/common/network/data/DataMovieAD;->r(Ljava/lang/String;)V

    .line 119
    :cond_8
    iget-object v3, p0, Lcom/mz/common/network/parser/ParserMovie;->a:Lcom/mz/common/network/data/DataNTMovie;

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataNTMovie;->a(Lcom/mz/common/network/data/DataMovieAD;)I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 123
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserMovie;->a:Lcom/mz/common/network/data/DataNTMovie;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMovie;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    return v0

    .line 126
    :cond_a
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserMovie;->a:Lcom/mz/common/network/data/DataNTMovie;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMovie;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    return p2
.end method
