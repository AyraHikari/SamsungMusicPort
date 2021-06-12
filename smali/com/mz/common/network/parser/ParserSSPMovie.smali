.class public Lcom/mz/common/network/parser/ParserSSPMovie;
.super Lcom/mz/common/network/parser/ParserNTCommonXml;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;
    }
.end annotation


# instance fields
.field private b:Lcom/mz/common/network/data/DataNTMovie;

.field private c:Lcom/mz/common/network/data/DataMovieAD;

.field private d:Lcom/mz/common/network/data/DataTracking;

.field private e:Lcom/mz/common/network/data/DataTracking;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/StringBuffer;

.field private i:J

.field private j:Lorg/xml/sax/helpers/DefaultHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/mz/common/network/parser/ParserNTCommonXml;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->f:Ljava/lang/String;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->g:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->h:Ljava/lang/StringBuffer;

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->i:J

    .line 47
    new-instance v0, Lcom/mz/common/network/parser/ParserSSPMovie$1;

    invoke-direct {v0, p0}, Lcom/mz/common/network/parser/ParserSSPMovie$1;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;)V

    iput-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->j:Lorg/xml/sax/helpers/DefaultHandler;

    return-void
.end method

.method static synthetic a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/mz/common/network/parser/ParserSSPMovie;J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->i:J

    return-void
.end method

.method static synthetic a(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->h:Ljava/lang/StringBuffer;

    return-void
.end method

.method static synthetic b(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->g:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V
    .locals 4

    .line 179
    iget-object v0, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->c:Ljava/lang/String;

    const-string v1, "VAST"

    .line 180
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "version"

    .line 181
    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 182
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->b:Lcom/mz/common/network/data/DataNTMovie;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTMovie;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "Ad"

    .line 184
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "id"

    .line 185
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/mz/common/network/parser/ParserSSPMovie;->c()V

    .line 187
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "sequence"

    .line 188
    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 189
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "adsystem"

    .line 191
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_26

    const-string v1, ""

    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "version"

    .line 194
    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 195
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "AdTitle"

    .line 197
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 198
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ""

    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 199
    :cond_4
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "requestID"

    .line 201
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 202
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, ""

    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 203
    :cond_6
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "Error"

    .line 205
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 206
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, ""

    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 207
    :cond_8
    invoke-direct {p0}, Lcom/mz/common/network/parser/ParserSSPMovie;->c()V

    .line 208
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v1, "Impression"

    .line 210
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 211
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, ""

    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 212
    :cond_a
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    const-string v1, "Creative"

    .line 214
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "id"

    .line 215
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 216
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->g(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v1, "sequence"

    .line 217
    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 218
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->h(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v1, "Linear"

    .line 220
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "skipoffset"

    .line 221
    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 222
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string v1, "Duration"

    .line 224
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 225
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_f

    const-string v1, ""

    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 226
    :cond_f
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->j(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const-string v1, "Tracking"

    .line 228
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    const-string v1, "event"

    .line 229
    iget-object v3, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 230
    new-instance p1, Lcom/mz/common/network/data/DataTracking;

    invoke-direct {p1}, Lcom/mz/common/network/data/DataTracking;-><init>()V

    iput-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->d:Lcom/mz/common/network/data/DataTracking;

    const-string p1, "skip"

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 232
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->d:Lcom/mz/common/network/data/DataTracking;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/mz/common/network/data/DataTracking;->a(Z)V

    goto :goto_0

    .line 234
    :cond_11
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->d:Lcom/mz/common/network/data/DataTracking;

    invoke-virtual {p1, v2}, Lcom/mz/common/network/data/DataTracking;->a(Z)V

    .line 236
    :goto_0
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->d:Lcom/mz/common/network/data/DataTracking;

    invoke-virtual {p1, v2}, Lcom/mz/common/network/data/DataTracking;->b(Z)V

    .line 237
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->d:Lcom/mz/common/network/data/DataTracking;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataTracking;->a(Ljava/lang/String;)V

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "trackingSize : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataMovieAD;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const-string v1, "offset"

    .line 239
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 240
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->d:Lcom/mz/common/network/data/DataTracking;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataTracking;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 241
    :cond_13
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ""

    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 242
    :cond_14
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->d:Lcom/mz/common/network/data/DataTracking;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataTracking;->c(Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->d:Lcom/mz/common/network/data/DataTracking;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->a(Lcom/mz/common/network/data/DataTracking;)I

    goto/16 :goto_1

    :cond_15
    const-string v1, "Breakaway"

    .line 245
    iget-object v3, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 246
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_16

    const-string v1, ""

    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 247
    :cond_16
    new-instance p1, Lcom/mz/common/network/data/DataTracking;

    invoke-direct {p1}, Lcom/mz/common/network/data/DataTracking;-><init>()V

    iput-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->e:Lcom/mz/common/network/data/DataTracking;

    .line 248
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->e:Lcom/mz/common/network/data/DataTracking;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataTracking;->c(Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->e:Lcom/mz/common/network/data/DataTracking;

    invoke-virtual {p1, v2}, Lcom/mz/common/network/data/DataTracking;->a(Z)V

    .line 250
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->e:Lcom/mz/common/network/data/DataTracking;

    invoke-virtual {p1, v2}, Lcom/mz/common/network/data/DataTracking;->b(Z)V

    .line 251
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->j()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->e:Lcom/mz/common/network/data/DataTracking;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_17
    const-string v1, "ClickThrough"

    .line 253
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 254
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_18

    const-string v1, ""

    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 255
    :cond_18
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->k(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_19
    const-string v1, "LinearType"

    .line 257
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 258
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_1a

    const-string v1, ""

    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 259
    :cond_1a
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->s(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1b
    const-string v1, "ClickTracking"

    .line 261
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 262
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_1c

    const-string v1, ""

    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 263
    :cond_1c
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->g()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1d
    const-string v1, "Offset"

    .line 265
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 266
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_1e

    const-string v1, ""

    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 267
    :cond_1e
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->l(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1f
    const-string v1, "MediaFile"

    .line 269
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "delivery"

    .line 270
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 271
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->m(Ljava/lang/String;)V

    goto :goto_1

    :cond_20
    const-string v1, "type"

    .line 272
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 273
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_21
    const-string v1, "width"

    .line 274
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 275
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->o(Ljava/lang/String;)V

    goto :goto_1

    :cond_22
    const-string v1, "height"

    .line 276
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 277
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->p(Ljava/lang/String;)V

    goto :goto_1

    :cond_23
    const-string v1, "bitrate"

    .line 278
    iget-object v2, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 279
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->q(Ljava/lang/String;)V

    goto :goto_1

    .line 280
    :cond_24
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    if-eqz v1, :cond_25

    const-string v1, ""

    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 281
    :cond_25
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->r(Ljava/lang/String;)V

    :cond_26
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/StringBuffer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->h:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/mz/common/network/data/DataMovieAD;

    invoke-direct {v0}, Lcom/mz/common/network/data/DataMovieAD;-><init>()V

    iput-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mz/common/network/parser/ParserSSPMovie;->b()Lcom/mz/common/network/data/DataNTMovie;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V
    .locals 4

    .line 119
    iget-object v0, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 120
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u2606main : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u2606main : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " /   sub : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 125
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/mz/common/network/parser/ParserSSPMovie;->b(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    :cond_1
    const-string v0, "\n"

    .line 128
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string v0, "startDocument"

    .line 130
    iget-object v1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\n"

    .line 131
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 132
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 133
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 134
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606Parsing start\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606"

    .line 135
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 136
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 137
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 138
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 139
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const-string v0, "endDocument"

    .line 140
    iget-object p1, p1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 141
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->h:Ljava/lang/StringBuffer;

    const-string p1, "\n"

    .line 142
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 143
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 144
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 145
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606Parsing end\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606\u2606"

    .line 146
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 147
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 148
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 149
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 150
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->i:J

    sub-long/2addr v0, v2

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u2606endDocument\u2606 GAP: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 153
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 154
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 155
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 156
    iput-wide v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->i:J

    const-string p1, "\n"

    .line 157
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 158
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 159
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 160
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->a()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x0

    .line 162
    :goto_1
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataMovieAD;->a()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_2

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {v0, p1}, Lcom/mz/common/network/data/DataMovieAD;->a(I)Lcom/mz/common/network/data/DataTracking;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataTracking;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 167
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->b:Lcom/mz/common/network/data/DataNTMovie;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->c:Lcom/mz/common/network/data/DataMovieAD;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTMovie;->a(Lcom/mz/common/network/data/DataMovieAD;)I

    .line 168
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->b:Lcom/mz/common/network/data/DataNTMovie;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMovie;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->b:Lcom/mz/common/network/data/DataNTMovie;

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcom/mz/common/network/data/DataNTMovie;

    invoke-direct {p1}, Lcom/mz/common/network/data/DataNTMovie;-><init>()V

    iput-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->b:Lcom/mz/common/network/data/DataNTMovie;

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->b:Lcom/mz/common/network/data/DataNTMovie;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMovie;->b()V

    .line 38
    :goto_0
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->j:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-virtual {p0, p2, p1}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/mz/common/network/data/DataNTMovie;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie;->b:Lcom/mz/common/network/data/DataNTMovie;

    return-object v0
.end method
