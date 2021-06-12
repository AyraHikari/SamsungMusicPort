.class public final Lcom/samsung/android/app/music/service/drm/MilkDrmContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;


# instance fields
.field private a:Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/net/Uri;

.field private g:J

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JI)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->a:Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->b:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->c:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->e:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->f:Landroid/net/Uri;

    .line 53
    iput-wide p6, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->g:J

    .line 54
    iput p8, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->h:I

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->i:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->h:I

    return v0
.end method

.method public getFd()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->i:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x57f7c853

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DRM_CONTENT_KEY_EXPIRED_TIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-nez v0, :cond_2

    .line 74
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->g:J

    return-wide v0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLyrics()[B
    .locals 4

    const/4 v0, 0x0

    .line 106
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "SoribadaApiResponse"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "uslt"

    .line 109
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "MilkDrmContent"

    const-string v2, "Error! lyric parsing failed"

    .line 112
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x46f4fe41

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DRM_CONTENT_KEY_MILK_DRM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-nez v0, :cond_2

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->a:Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;

    return-object p1

    .line 98
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPlayingUri()Landroid/net/Uri;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1909706b

    if-eq v0, v1, :cond_1

    const v1, 0x17103714

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DRM_CONTENT_KEY_META_BUFFER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "DRM_CONTENT_KEY_TRACK_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->e:Ljava/lang/String;

    return-object p1

    .line 84
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->c:Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MilkDrmContent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expired : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->d:Ljava/lang/String;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->d:Ljava/lang/String;

    return-object v0
.end method
