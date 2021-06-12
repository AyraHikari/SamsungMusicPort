.class public Lcom/facebook/share/internal/NativeDialogParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Lcom/facebook/share/model/ShareCameraEffectContent;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 2

    .line 139
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "effect_id"

    .line 144
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent;->getEffectId()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {p2, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "effect_textures"

    .line 147
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 152
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent;->getArguments()Lcom/facebook/share/model/CameraEffectArguments;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/share/internal/CameraEffectJSONUtility;->convertToJSON(Lcom/facebook/share/model/CameraEffectArguments;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "effect_arguments"

    .line 157
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-static {p2, p1, p0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p2

    :catch_0
    move-exception p0

    .line 160
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create a JSON Object from the provided CameraEffectArguments: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static create(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;
    .locals 2

    .line 169
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TITLE"

    .line 171
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DESCRIPTION"

    .line 173
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {p1, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IMAGE"

    .line 174
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "QUOTE"

    .line 175
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MESSENGER_LINK"

    .line 176
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "TARGET_DISPLAY"

    .line 177
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    return-object p1
.end method

.method private static create(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/List;Z)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareMediaContent;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 211
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "MEDIA"

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method private static create(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;Z)Landroid/os/Bundle;
    .locals 2

    .line 248
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 251
    :try_start_0
    invoke-static {p1, p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addGenericTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 255
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create a JSON Object from the provided ShareMessengerGenericTemplateContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static create(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;Z)Landroid/os/Bundle;
    .locals 2

    .line 282
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 285
    :try_start_0
    invoke-static {p1, p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addMediaTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 289
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create a JSON Object from the provided ShareMessengerMediaTemplateContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static create(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;Z)Landroid/os/Bundle;
    .locals 2

    .line 265
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 268
    :try_start_0
    invoke-static {p1, p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addOpenGraphMusicTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 272
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create a JSON Object from the provided ShareMessengerOpenGraphMusicTemplateContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static create(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;
    .locals 2

    .line 222
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p2

    .line 226
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/facebook/share/internal/ShareInternalUtility;->getFieldNameAndNamespaceFromFullName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "PREVIEW_PROPERTY_NAME"

    .line 228
    invoke-static {p2, v1, v0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ACTION_TYPE"

    .line 235
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-static {p2, v0, p0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ACTION"

    .line 240
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-static {p2, p0, p1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private static create(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "PHOTOS"

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method private static create(Lcom/facebook/share/model/ShareStoryContent;Landroid/os/Bundle;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 302
    invoke-static {p0, p3}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p3

    if-eqz p1, :cond_0

    const-string v0, "bg_asset"

    .line 305
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "interactive_asset_uri"

    .line 309
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundColorList()Ljava/util/List;

    move-result-object p1

    .line 313
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "top_background_color_list"

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    const-string p1, "content_url"

    .line 320
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getAttributionLink()Ljava/lang/String;

    move-result-object p0

    .line 319
    invoke-static {p3, p1, p0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method private static create(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2

    .line 197
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "TITLE"

    .line 199
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DESCRIPTION"

    .line 201
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getContentDescription()Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-static {p2, v0, p0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "VIDEO"

    .line 202
    invoke-static {p2, p0, p1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static create(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .locals 1

    const-string v0, "shareContent"

    .line 60
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callId"

    .line 61
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    .line 66
    invoke-static {p1, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;

    move-result-object p0

    goto/16 :goto_0

    .line 67
    :cond_0
    instance-of v0, p1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_1

    .line 68
    check-cast p1, Lcom/facebook/share/model/SharePhotoContent;

    .line 69
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getPhotoUrls(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;

    move-result-object p0

    .line 73
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object p0

    goto/16 :goto_0

    .line 74
    :cond_1
    instance-of v0, p1, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v0, :cond_2

    .line 75
    check-cast p1, Lcom/facebook/share/model/ShareVideoContent;

    .line 76
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getVideoUrl(Lcom/facebook/share/model/ShareVideoContent;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    goto/16 :goto_0

    .line 79
    :cond_2
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_3

    .line 80
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 82
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 86
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 88
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create a JSON Object from the provided ShareOpenGraphContent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_3
    instance-of v0, p1, Lcom/facebook/share/model/ShareMediaContent;

    if-eqz v0, :cond_4

    .line 93
    check-cast p1, Lcom/facebook/share/model/ShareMediaContent;

    .line 94
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getMediaInfos(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/UUID;)Ljava/util/List;

    move-result-object p0

    .line 98
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    .line 99
    :cond_4
    instance-of v0, p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    if-eqz v0, :cond_5

    .line 100
    check-cast p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    .line 104
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getTextureUrlBundle(Lcom/facebook/share/model/ShareCameraEffectContent;Ljava/util/UUID;)Landroid/os/Bundle;

    move-result-object p0

    .line 108
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareCameraEffectContent;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_5
    instance-of v0, p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    if-eqz v0, :cond_6

    .line 110
    check-cast p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    .line 112
    invoke-static {p1, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    .line 113
    :cond_6
    instance-of v0, p1, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    if-eqz v0, :cond_7

    .line 114
    check-cast p1, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    .line 116
    invoke-static {p1, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    .line 117
    :cond_7
    instance-of v0, p1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    if-eqz v0, :cond_8

    .line 118
    check-cast p1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    .line 120
    invoke-static {p1, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    .line 121
    :cond_8
    instance-of v0, p1, Lcom/facebook/share/model/ShareStoryContent;

    if-eqz v0, :cond_9

    .line 122
    check-cast p1, Lcom/facebook/share/model/ShareStoryContent;

    .line 125
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getBackgroundAssetMediaInfo(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;

    move-result-object v0

    .line 127
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getStickerUrl(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;

    move-result-object p0

    .line 129
    invoke-static {p1, v0, p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareStoryContent;Landroid/os/Bundle;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .locals 3

    .line 326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "LINK"

    .line 327
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "PLACE"

    .line 328
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PAGE"

    .line 329
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "REF"

    .line 330
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DATA_FAILURES_FATAL"

    .line 332
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPeopleIds()Ljava/util/List;

    move-result-object p1

    .line 335
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FRIENDS"

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getShareHashtag()Lcom/facebook/share/model/ShareHashtag;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "HASHTAG"

    .line 343
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareHashtag;->getHashtag()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
