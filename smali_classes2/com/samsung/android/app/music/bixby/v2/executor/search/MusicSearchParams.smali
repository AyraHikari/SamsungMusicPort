.class public final Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;,
        Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;,
        Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;,
        Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

.field private b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

.field private c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    .line 123
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    .line 124
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->d:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->d(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->e:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->e(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->f:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->f(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->g:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->g(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    .line 129
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->h(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
    .locals 4

    .line 213
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;-><init>()V

    .line 215
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "searchKeyword"

    .line 216
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    const-string p0, "searchWhere"

    .line 217
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    const-string p0, "searchType"

    .line 218
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "MusicSearch"

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromJson() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;
    .locals 3
    .param p0    # Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 201
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;-><init>()V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->a:Ljava/lang/String;

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->b:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->d:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->access$800(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->c:Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-eq v1, v2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->access$900(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->e:Ljava/lang/String;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    return-object v0
.end method

.method public a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    return-void
.end method

.method public b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->h:Z

    return v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 187
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "artistName"

    .line 189
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "songTitle"

    .line 190
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "searchKeyword"

    .line 191
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "searchType"

    .line 192
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->access$800(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "searchWhere"

    .line 193
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->access$900(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MusicSearch"

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toJson() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
