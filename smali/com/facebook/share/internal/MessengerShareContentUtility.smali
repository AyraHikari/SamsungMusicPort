.class public Lcom/facebook/share/internal/MessengerShareContentUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final ATTACHMENT_ID:Ljava/lang/String; = "attachment_id"

.field public static final ATTACHMENT_PAYLOAD:Ljava/lang/String; = "payload"

.field public static final ATTACHMENT_TEMPLATE_TYPE:Ljava/lang/String; = "template"

.field public static final ATTACHMENT_TYPE:Ljava/lang/String; = "type"

.field public static final BUTTONS:Ljava/lang/String; = "buttons"

.field public static final BUTTON_TYPE:Ljava/lang/String; = "type"

.field public static final BUTTON_URL_TYPE:Ljava/lang/String; = "web_url"

.field public static final DEFAULT_ACTION:Ljava/lang/String; = "default_action"

.field public static final ELEMENTS:Ljava/lang/String; = "elements"

.field public static final FACEBOOK_DOMAIN:Ljava/util/regex/Pattern;

.field public static final FALLBACK_URL:Ljava/lang/String; = "fallback_url"

.field public static final IMAGE_ASPECT_RATIO:Ljava/lang/String; = "image_aspect_ratio"

.field public static final IMAGE_RATIO_HORIZONTAL:Ljava/lang/String; = "horizontal"

.field public static final IMAGE_RATIO_SQUARE:Ljava/lang/String; = "square"

.field public static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final MEDIA_IMAGE:Ljava/lang/String; = "image"

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final MEDIA_VIDEO:Ljava/lang/String; = "video"

.field public static final MESSENGER_EXTENSIONS:Ljava/lang/String; = "messenger_extensions"

.field public static final PREVIEW_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field public static final PREVIEW_OPEN_GRAPH:Ljava/lang/String; = "OPEN_GRAPH"

.field public static final SHARABLE:Ljava/lang/String; = "sharable"

.field public static final SHARE_BUTTON_HIDE:Ljava/lang/String; = "hide"

.field public static final SUBTITLE:Ljava/lang/String; = "subtitle"

.field public static final TEMPLATE_GENERIC_TYPE:Ljava/lang/String; = "generic"

.field public static final TEMPLATE_MEDIA_TYPE:Ljava/lang/String; = "media"

.field public static final TEMPLATE_OPEN_GRAPH_TYPE:Ljava/lang/String; = "open_graph"

.field public static final TEMPLATE_TYPE:Ljava/lang/String; = "template_type"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final WEBVIEW_RATIO:Ljava/lang/String; = "webview_height_ratio"

.field public static final WEBVIEW_RATIO_COMPACT:Ljava/lang/String; = "compact"

.field public static final WEBVIEW_RATIO_FULL:Ljava/lang/String; = "full"

.field public static final WEBVIEW_RATIO_TALL:Ljava/lang/String; = "tall"

.field public static final WEBVIEW_SHARE_BUTTON:Ljava/lang/String; = "webview_share_button"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(.+)\\.(facebook\\.com)$"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility;->FACEBOOK_DOMAIN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerActionButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 168
    :cond_0
    instance-of v0, p1, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    if-eqz v0, :cond_1

    .line 169
    check-cast p1, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addURLActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerURLActionButton;Z)V

    :cond_1
    return-void
.end method

.method public static addGenericTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addGenericTemplateElementForPreview(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)V

    const-string v0, "MESSENGER_PLATFORM_CONTENT"

    .line 99
    invoke-static {p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeGenericTemplateContent(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)Lorg/json/JSONObject;

    move-result-object p1

    .line 96
    invoke-static {p0, v0, p1}, Lcom/facebook/internal/Utility;->putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method private static addGenericTemplateElementForPreview(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerActionButton;Z)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getDefaultAction()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getDefaultAction()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerActionButton;Z)V

    :cond_1
    :goto_0
    const-string v0, "IMAGE"

    .line 131
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "PREVIEW_TYPE"

    const-string v1, "DEFAULT"

    .line 132
    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TITLE"

    .line 133
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SUBTITLE"

    .line 134
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getSubtitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addMediaTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 115
    invoke-static {p0, p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addMediaTemplateContentForPreview(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    const-string v0, "MESSENGER_PLATFORM_CONTENT"

    .line 119
    invoke-static {p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeMediaTemplateContent(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lorg/json/JSONObject;

    move-result-object p1

    .line 116
    invoke-static {p0, v0, p1}, Lcom/facebook/internal/Utility;->putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method private static addMediaTemplateContentForPreview(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerActionButton;Z)V

    const-string v0, "PREVIEW_TYPE"

    const-string v1, "DEFAULT"

    .line 149
    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ATTACHMENT_ID"

    .line 150
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getAttachmentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->getMediaUrlKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    const-string v0, "type"

    .line 157
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaType()Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->getMediaType(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {p0, v0, p1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addOpenGraphMusicTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 105
    invoke-static {p0, p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addOpenGraphMusicTemplateContentForPreview(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    const-string v0, "MESSENGER_PLATFORM_CONTENT"

    .line 109
    invoke-static {p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeOpenGraphMusicTemplateContent(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lorg/json/JSONObject;

    move-result-object p1

    .line 106
    invoke-static {p0, v0, p1}, Lcom/facebook/internal/Utility;->putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method private static addOpenGraphMusicTemplateContentForPreview(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerActionButton;Z)V

    const-string v0, "PREVIEW_TYPE"

    const-string v1, "OPEN_GRAPH"

    .line 141
    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OPEN_GRAPH_URL"

    .line 142
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private static addURLActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerURLActionButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "TARGET_DISPLAY"

    .line 181
    invoke-static {p0, v0, p2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ITEM_URL"

    .line 182
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private static getImageRatioString(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "horizontal"

    return-object p0

    .line 335
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility$1;->$SwitchMap$com$facebook$share$model$ShareMessengerGenericTemplateContent$ImageAspectRatio:[I

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const-string p0, "horizontal"

    return-object p0

    :cond_1
    const-string p0, "square"

    return-object p0
.end method

.method private static getMediaType(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "image"

    return-object p0

    .line 347
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility$1;->$SwitchMap$com$facebook$share$model$ShareMessengerMediaTemplateContent$MediaType:[I

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const-string p0, "image"

    return-object p0

    :cond_1
    const-string p0, "video"

    return-object p0
.end method

.method private static getMediaUrlKey(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 310
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 311
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility;->FACEBOOK_DOMAIN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "uri"

    goto :goto_0

    :cond_0
    const-string p0, "IMAGE"

    :goto_0
    return-object p0
.end method

.method private static getShouldHideShareButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;)Ljava/lang/String;
    .locals 0

    .line 356
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getShouldHideWebviewShareButton()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "hide"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getWebviewHeightRatioString(Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "full"

    return-object p0

    .line 321
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility$1;->$SwitchMap$com$facebook$share$model$ShareMessengerURLActionButton$WebviewHeightRatio:[I

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "full"

    return-object p0

    :pswitch_0
    const-string p0, "tall"

    return-object p0

    :pswitch_1
    const-string p0, "compact"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 286
    invoke-static {p0, v0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;Z)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;Z)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 291
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    if-eqz v0, :cond_0

    .line 292
    check-cast p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    invoke-static {p0, p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeURLActionButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;Z)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static serializeGenericTemplateContent(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 188
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeGenericTemplateElement(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 190
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "template_type"

    const-string v3, "generic"

    .line 191
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sharable"

    .line 192
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getIsSharable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "image_aspect_ratio"

    .line 193
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getImageAspectRatio()Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->getImageRatioString(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "elements"

    .line 194
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 196
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "template"

    .line 197
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "payload"

    .line 198
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 200
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "attachment"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static serializeGenericTemplateElement(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 237
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "title"

    .line 238
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "subtitle"

    .line 239
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "image_url"

    .line 240
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getImageUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 244
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "buttons"

    .line 245
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getDefaultAction()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "default_action"

    .line 249
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getDefaultAction()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;Z)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method private static serializeMediaTemplateContent(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 221
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 222
    invoke-static {p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeMediaTemplateElement(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "template_type"

    const-string v2, "media"

    .line 225
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "elements"

    .line 226
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 228
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "template"

    .line 229
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "payload"

    .line 230
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 232
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "attachment"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static serializeMediaTemplateElement(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 270
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "attachment_id"

    .line 271
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getAttachmentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    .line 272
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "media_type"

    .line 273
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaType()Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/share/internal/MessengerShareContentUtility;->getMediaType(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 277
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p0, "buttons"

    .line 278
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method private static serializeOpenGraphMusicTemplateContent(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 205
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 206
    invoke-static {p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeOpenGraphMusicTemplateElement(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    .line 208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "template_type"

    const-string v2, "open_graph"

    .line 209
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "elements"

    .line 210
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 212
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "template"

    .line 213
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "payload"

    .line 214
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 216
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "attachment"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static serializeOpenGraphMusicTemplateElement(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 257
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "url"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 259
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 261
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p0, "buttons"

    .line 262
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method private static serializeURLActionButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;Z)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 299
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "web_url"

    .line 300
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "title"

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getTitle()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "url"

    .line 302
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "webview_height_ratio"

    .line 303
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getWebviewHeightRatio()Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->getWebviewHeightRatioString(Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "messenger_extensions"

    .line 304
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getIsMessengerExtensionURL()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "fallback_url"

    .line 305
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getFallbackUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "webview_share_button"

    .line 306
    invoke-static {p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->getShouldHideShareButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
