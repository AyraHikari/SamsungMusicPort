.class public final Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;


# static fields
.field private static final k:Ljava/lang/String; = "InputData"


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public i()Lorg/json/JSONObject;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "artistName"

    .line 58
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "songTitle"

    .line 61
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "searchKeyword"

    .line 64
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "searchType"

    .line 67
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "searchWhere"

    .line 70
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "tpoType"

    .line 73
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "chart"

    .line 76
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "genre"

    .line 79
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "year"

    .line 82
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "myMusic"

    .line 85
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 88
    sget-object v2, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toJson() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-object v0
.end method
