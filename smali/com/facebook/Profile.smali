.class public final Lcom/facebook/Profile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIRST_NAME_KEY:Ljava/lang/String; = "first_name"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final LAST_NAME_KEY:Ljava/lang/String; = "last_name"

.field private static final LINK_URI_KEY:Ljava/lang/String; = "link_uri"

.field private static final MIDDLE_NAME_KEY:Ljava/lang/String; = "middle_name"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "Profile"


# instance fields
.field private final firstName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final lastName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final linkUri:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final middleName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    new-instance v0, Lcom/facebook/Profile$2;

    invoke-direct {v0}, Lcom/facebook/Profile$2;-><init>()V

    sput-object v0, Lcom/facebook/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 287
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/Profile$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 138
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 145
    iput-object p6, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    const/4 v1, 0x0

    .line 271
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    const-string v0, "first_name"

    .line 272
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    const-string v0, "middle_name"

    .line 273
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    const-string v0, "last_name"

    .line 274
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    const-string v0, "name"

    .line 275
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    const-string v0, "link_uri"

    .line 276
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/facebook/Profile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static fetchProfileForCurrentAccessToken()V
    .locals 2

    .line 83
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 85
    invoke-static {v0}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    return-void

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/Profile$1;

    invoke-direct {v1}, Lcom/facebook/Profile$1;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V

    return-void
.end method

.method public static getCurrentProfile()Lcom/facebook/Profile;
    .locals 1

    .line 63
    invoke-static {}, Lcom/facebook/ProfileManager;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ProfileManager;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    return-object v0
.end method

.method public static setCurrentProfile(Lcom/facebook/Profile;)V
    .locals 1
    .param p0    # Lcom/facebook/Profile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-static {}, Lcom/facebook/ProfileManager;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 215
    :cond_0
    instance-of v1, p1, Lcom/facebook/Profile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 219
    :cond_1
    check-cast p1, Lcom/facebook/Profile;

    .line 221
    iget-object v1, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object p1, p1, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object p1, p1, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object p1, p1, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 224
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object p1, p1, Lcom/facebook/Profile;->name:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 225
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-nez v1, :cond_7

    iget-object p1, p1, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    .line 226
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePictureUri(II)Landroid/net/Uri;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/facebook/internal/ImageRequest;->getProfilePictureUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 234
    iget-object v0, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 235
    iget-object v0, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 238
    iget-object v0, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 241
    iget-object v0, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 244
    iget-object v0, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 247
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    return v1
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 254
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 256
    iget-object v2, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "first_name"

    .line 257
    iget-object v2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "middle_name"

    .line 258
    iget-object v2, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_name"

    .line 259
    iget-object v2, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 260
    iget-object v2, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    iget-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const-string v1, "link_uri"

    .line 262
    iget-object v2, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 297
    iget-object p2, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object p2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object p2, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object p2, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object p2, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object p2, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
