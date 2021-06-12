.class public Lcom/mz/common/network/parser/ParserPkgAgList;
.super Lcom/mz/common/network/parser/ParserNTCommonResponse;
.source "SourceFile"


# instance fields
.field private a:Lcom/mz/common/network/data/DataNTPkgAgList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/mz/common/network/parser/ParserNTCommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserPkgAgList;->a:Lcom/mz/common/network/data/DataNTPkgAgList;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/io/InputStream;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserPkgAgList;->a:Lcom/mz/common/network/data/DataNTPkgAgList;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lcom/mz/common/network/data/DataNTPkgAgList;

    invoke-direct {p1}, Lcom/mz/common/network/data/DataNTPkgAgList;-><init>()V

    iput-object p1, p0, Lcom/mz/common/network/parser/ParserPkgAgList;->a:Lcom/mz/common/network/data/DataNTPkgAgList;

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserPkgAgList;->a:Lcom/mz/common/network/data/DataNTPkgAgList;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTPkgAgList;->a()V

    .line 29
    :goto_0
    invoke-static {p2}, Lcom/mz/common/network/parser/ParserPkgAgList;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "jsonToString : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 31
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "pkginfo"

    .line 32
    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserPkgAgList;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 33
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserPkgAgList;->a:Lcom/mz/common/network/data/DataNTPkgAgList;

    invoke-virtual {v0, p1}, Lcom/mz/common/network/data/DataNTPkgAgList;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_8

    const-string v0, ""

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 35
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserPkgAgList;->a:Lcom/mz/common/network/data/DataNTPkgAgList;

    const-string v1, "version"

    invoke-virtual {p0, p2, v1}, Lcom/mz/common/network/parser/ParserPkgAgList;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTPkgAgList;->c(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserPkgAgList;->a:Lcom/mz/common/network/data/DataNTPkgAgList;

    const-string v1, "error_code"

    invoke-virtual {p0, p2, v1}, Lcom/mz/common/network/parser/ParserPkgAgList;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTPkgAgList;->d(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserPkgAgList;->a:Lcom/mz/common/network/data/DataNTPkgAgList;

    const-string v1, "section_count"

    invoke-virtual {p0, p2, v1}, Lcom/mz/common/network/parser/ParserPkgAgList;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTPkgAgList;->b(Ljava/lang/String;)V

    const-string v0, "section"

    .line 38
    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserPkgAgList;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 39
    new-instance v0, Lcom/mz/common/network/data/DataListSection;

    invoke-direct {v0}, Lcom/mz/common/network/data/DataListSection;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_7

    .line 41
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_1

    goto/16 :goto_6

    .line 45
    :cond_1
    new-instance v4, Lcom/mz/common/network/data/DataSection;

    invoke-direct {v4}, Lcom/mz/common/network/data/DataSection;-><init>()V

    .line 47
    invoke-virtual {p0, p2, v3}, Lcom/mz/common/network/parser/ParserPkgAgList;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "publisher_no"

    .line 48
    invoke-virtual {p0, v5, v6}, Lcom/mz/common/network/parser/ParserPkgAgList;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mz/common/network/data/DataSection;->a(Ljava/lang/String;)V

    const-string v6, "media_no"

    .line 49
    invoke-virtual {p0, v5, v6}, Lcom/mz/common/network/parser/ParserPkgAgList;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mz/common/network/data/DataSection;->b(Ljava/lang/String;)V

    const-string v6, "section_no"

    .line 50
    invoke-virtual {p0, v5, v6}, Lcom/mz/common/network/parser/ParserPkgAgList;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mz/common/network/data/DataSection;->c(Ljava/lang/String;)V

    const-string v6, "ad_count"

    .line 51
    invoke-virtual {p0, v5, v6}, Lcom/mz/common/network/parser/ParserPkgAgList;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mz/common/network/data/DataSection;->d(Ljava/lang/String;)V

    const-string v6, "ad"

    .line 52
    invoke-virtual {p0, v5, v6}, Lcom/mz/common/network/parser/ParserPkgAgList;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 53
    new-instance v6, Lcom/mz/common/network/data/DataListAD;

    invoke-direct {v6}, Lcom/mz/common/network/data/DataListAD;-><init>()V

    if-eqz v5, :cond_6

    .line 55
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_6

    const/4 v8, 0x0

    :goto_2
    if-lt v8, v7, :cond_2

    goto :goto_5

    .line 59
    :cond_2
    invoke-virtual {p0, v5, v8}, Lcom/mz/common/network/parser/ParserPkgAgList;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 61
    new-instance v10, Lcom/mz/common/network/data/DataAD;

    invoke-direct {v10}, Lcom/mz/common/network/data/DataAD;-><init>()V

    const-string v11, "ad_group_no"

    .line 62
    invoke-virtual {p0, v9, v11}, Lcom/mz/common/network/parser/ParserPkgAgList;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mz/common/network/data/DataAD;->a(Ljava/lang/String;)V

    const-string v11, "pkg_target"

    .line 63
    invoke-virtual {p0, v9, v11}, Lcom/mz/common/network/parser/ParserPkgAgList;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mz/common/network/data/DataAD;->b(Ljava/lang/String;)V

    const-string v11, "pkg_target_list"

    .line 64
    invoke-virtual {p0, v9, v11}, Lcom/mz/common/network/parser/ParserPkgAgList;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mz/common/network/data/DataAD;->c(Ljava/lang/String;)V

    const-string v11, "pkg_filter"

    .line 65
    invoke-virtual {p0, v9, v11}, Lcom/mz/common/network/parser/ParserPkgAgList;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mz/common/network/data/DataAD;->d(Ljava/lang/String;)V

    const-string v11, "pkg_filter_list"

    .line 66
    invoke-virtual {p0, v9, v11}, Lcom/mz/common/network/parser/ParserPkgAgList;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mz/common/network/data/DataAD;->e(Ljava/lang/String;)V

    const-string v11, "and_yn"

    .line 67
    invoke-virtual {p0, v9, v11}, Lcom/mz/common/network/parser/ParserPkgAgList;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_3

    .line 69
    invoke-virtual {v10, v1}, Lcom/mz/common/network/data/DataAD;->a(Z)V

    goto :goto_4

    :cond_3
    if-ne v9, v1, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 71
    :goto_3
    invoke-virtual {v10, v9}, Lcom/mz/common/network/data/DataAD;->a(Z)V

    .line 73
    :goto_4
    invoke-virtual {v6, v10}, Lcom/mz/common/network/data/DataListAD;->a(Lcom/mz/common/network/data/IData;)I

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 78
    :cond_6
    :goto_5
    invoke-virtual {v4, v6}, Lcom/mz/common/network/data/DataSection;->a(Lcom/mz/common/network/data/DataListAD;)V

    .line 80
    invoke-virtual {v0, v4}, Lcom/mz/common/network/data/DataListSection;->a(Lcom/mz/common/network/data/IData;)I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 85
    :cond_7
    :goto_6
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserPkgAgList;->a:Lcom/mz/common/network/data/DataNTPkgAgList;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTPkgAgList;->a(Lcom/mz/common/network/data/DataListSection;)V

    .line 86
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserPkgAgList;->a:Lcom/mz/common/network/data/DataNTPkgAgList;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTPkgAgList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    return v1

    .line 89
    :cond_8
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserPkgAgList;->a:Lcom/mz/common/network/data/DataNTPkgAgList;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTPkgAgList;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    return p1
.end method
