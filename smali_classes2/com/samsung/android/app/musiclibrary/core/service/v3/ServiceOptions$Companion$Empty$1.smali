.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions$Companion$Empty$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToUriType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getMatchedArtworkUri(I)Landroid/net/Uri;
    .locals 1

    const-string p1, ""

    .line 270
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Uri.parse(EmptyString)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getMatchedUri(I)Landroid/net/Uri;
    .locals 1

    const-string p1, ""

    .line 266
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Uri.parse(EmptyString)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public insertMediaIdsToMusicProvider(Landroid/content/Context;[J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
