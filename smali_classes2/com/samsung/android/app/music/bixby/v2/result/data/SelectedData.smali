.class public final Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SelectedData"


# instance fields
.field private b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

.field private c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 46
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;-><init>()V

    .line 48
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "actionType"

    .line 49
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->e:Ljava/lang/String;

    const-string p0, "selectedId"

    .line 50
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->d:Ljava/lang/String;

    const-string p0, "searchType"

    .line 51
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->f:Ljava/lang/String;

    const-string p0, "inputData"

    .line 53
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    const-string p0, "resultData"

    .line 55
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->f:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->a:Ljava/lang/String;

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

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    return-object v0
.end method

.method public b()Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->d:Ljava/lang/String;

    return-object v0
.end method
