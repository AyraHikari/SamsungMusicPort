.class public Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
.super Ljava/lang/Object;
.source "SlookSmartClipMetaTag.java"


# static fields
.field public static final TAG_TYPE_APP_DEEP_LINK:Ljava/lang/String; = "app_deep_link"

.field public static final TAG_TYPE_PLAIN_TEXT:Ljava/lang/String; = "plain_text"

.field public static final TAG_TYPE_TITLE:Ljava/lang/String; = "title"

.field public static final TAG_TYPE_URL:Ljava/lang/String; = "url"


# instance fields
.field private mType:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mType:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mType:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-void
.end method
