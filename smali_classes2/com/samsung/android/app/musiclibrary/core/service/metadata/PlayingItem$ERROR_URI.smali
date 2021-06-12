.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem$ERROR_URI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ERROR_URI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem$ERROR_URI$Def;
    }
.end annotation


# static fields
.field public static final AUTH_CACHE_ERROR:Ljava/lang/String; = "cache_error"

.field public static final AUTH_CONTENT_ERROR:Ljava/lang/String; = "content_error"

.field public static final AUTH_DRM_ERROR:Ljava/lang/String; = "drm_error"

.field public static final AUTH_NETWORK_ERROR:Ljava/lang/String; = "network_error"

.field public static final AUTH_PERMISSION_ERROR:Ljava/lang/String; = "permission_error"

.field public static final AUTH_PLAYING_QUALITY:Ljava/lang/String; = "playing_quality"

.field public static final AUTH_STREAMING_SERVER_ERROR:Ljava/lang/String; = "streaming_server_error"

.field public static final SCHEME:Ljava/lang/String; = "error"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorExtra(Landroid/net/Uri;)I
    .locals 0

    .line 78
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 81
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
